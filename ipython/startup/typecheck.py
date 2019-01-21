"""Adds mypy type-checking cell magic to jupyter/ipython.

source: https://gist.github.com/knowsuchagency/f7b2203dd613756a45f816d6809f01a6
"""

from IPython.core.magic import register_cell_magic


@register_cell_magic
def typecheck(line, cell):
    """Run the following cell though mypy.

    Any parameters that would normally be passed to the mypy CLI can be passed on the
    first line, with the exception of the -c flag we use to pass the code from the cell
    we want to execute. For example:
    ```
    %%typecheck --ignore-missing-imports
    ...
    ...
    ...
    ```
    mypy stdout and stderr will print prior to output of cell. If there are no conflicts,
    nothing will be printed by mypy.
    """
    from IPython import get_ipython
    from mypy import api

    # inserting a newline at the beginning of the cell
    # ensures mypy's output matches the the line
    # numbers in jupyter

    cell = '\n' + cell

    mypy_result = api.run(['-c', cell] + line.split())

    if mypy_result[0]:  # print mypy stdout
        print(mypy_result[0])

    if mypy_result[1]:  # print mypy stderr
        print(mypy_result[1])

    shell = get_ipython()
    shell.run_cell(cell)

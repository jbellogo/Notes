
A virtual environment is **a Python environment** such that the Python interpreter, libraries and scripts installed into it are isolated from those installed locally or in other virtual environments

Resources:

- [https://realpython.com/python-virtual-environments-a-primer/](https://realpython.com/python-virtual-environments-a-primer/)

This way, you don’t run into dependencies issues. Another way to fix that would be using [Docker](https://stevengong.co/notes/Docker), but that’s for another time.

With `virtualenv`, you can run

```bash

virtualenv venv # If the above doesnt work, do this

python3 -m virtualenv venv # To activate the virtual environmentsource 

source venv/bin/activate

deactivate

```

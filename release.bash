#!/bin/bash -e

# Build, then upload to PyPI using Twine.

python setup.py sdist bdist_wheel
TWINE_USERNAME=lourkeur
TWINE_PASSWORD=$(pass PyPI)  # I use passwordstore.org
export TWINE_USERNAME TWINE_PASSWORD

test_pypi_url=https://test.pypi.org/legacy/

if (( TEST ))  # switch to enable test.pypi.org
then
    twine_opts=(--repository-url "$test_pypi_url")
else
    twine_opts=(-s)
fi

twine upload "${twine_opts[@]}" dist/*

#!/bin/bash

PYTHON_VERSIONS=( "3.6.15" "3.7.12" "3.8.12" "3.9.10" )
#PYTHON_VERSIONS=( "3.6.15" "3.7.12")
PYTHON_VERSION_DEFAULT="${PYTHON_VERSIONS[-1]}"

for version in "${PYTHON_VERSIONS[@]}"
do
   pyenv install "$version"
   pyenv rehash
done

#pyenv global "${PYTHON_VERSIONS[-1]}"
pyenv global "${PYTHON_VERSION_DEFAULT}"

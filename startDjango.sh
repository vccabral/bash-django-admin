#!/bin/bash
EXPECTED_ARGS=1
E_BADARGS=65

if [ $# -eq $EXPECTED_ARGS ]
then
    django-admin.py startproject --template=https://github.com/vccabral/DjangoTemplate/zipball/master $1
    echo $1
    cd ./$1
    virtualenv venv --distribute
    source venv/bin/activate
    echo "install requirements"
    pip install -r requirements.txt
    echo "done installing"
else
    echo "First argument must be the name of the new project"
fi 

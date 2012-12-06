#/bin/bash
EXPECTED_ARGS=1
E_BADARGS=65

if [ $# -eq $EXPECTED_ARGS ]
then
    django-admin.py startproject --template=https://github.com/vccabral/DjangoTemplate/zipball/master $1
    virtualenv localpython
    source localpython/bin/activate
    cd $1
    pip install -r requirements.txt
else
    echo "First argument must be the name of the new project"
fi 


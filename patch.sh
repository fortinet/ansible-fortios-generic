#!/bin/bash 
ANSIBLEPATH=`which ansible| rev | cut -d'/' -f3- | rev`

cp fortios_json_generic.py $ANSIBLEPATH/lib/ansible/modules/network/fortios/
cp $ANSIBLEPATH/lib/ansible/module_utils/network/fortios/fortios.py  $ANSIBLEPATH/lib/ansible/module_utils/network/fortios/fortios.py.bak
cp fortios.py $ANSIBLEPATH/lib/ansible/module_utils/network/fortios/

#/bin/bash

#Start your engines
start=`date +%s`

#import functions
source helmfunctions

#This sections calls each function
SETVERS
HELMUPDATE
GETBITNAMI
GETKUBE
GETROOK
GETRANCHERSTABLE
GETRANCHERLATEST
GETVMWARE
CREATETAR
TOTHEBUCKETS
#end functions

end=`date +%s`

runtime=$((end-start))
runtime_in_minutes=$(( $runtime / 60 ))
echo
echo
echo 'your run time was ' $runtime_in_minutes ' minutes!'
echo


#!/bin/bash 

###################################################################
#Script Name	: k8s-describe.sh                                                                                      
#Description	: k8s describe resources                                                                          
#Args         :                                                                                           
#Author       : Nixon <nixon613@gmail.com>
###################################################################

echo "namespace?"
read NAMEPSPACE

echo "po/deploy/svc/pvc/ing(default po)?"
read TYPE_NAME
if [[ -z $TYPE_NAME ]]; then TYPE_NAME="po"; fi

echo "resouce name?"
read RESOURCE_NAME

COMMAND="kubectl describe -n $NAMEPSPACE $TYPE_NAME/$RESOURCE_NAME"
COMMAND_NAME="FULL COMMAND: $COMMAND"
echo "==============================="
echo $COMMAND_NAME
echo "==============================="

eval $COMMAND
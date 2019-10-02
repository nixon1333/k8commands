#!/bin/bash 

###################################################################
#Script Name	: k8s-get-pods.sh                                                                                      
#Description	: k8s get list of resources                                                                        
#Args         :                                                                                           
#Author       : Nixon <nixon613@gmail.com>
###################################################################


echo "namespace?"
read NAMEPSPACE

echo "pods/deploy/svc/pvc/ing(default pods)?"
read TYPE_NAME
if [[ -z $TYPE_NAME ]]; then TYPE_NAME="pods"; fi

COMMAND="kubectl get -n $NAMEPSPACE $TYPE_NAME"

echo "grep(default n)?"
read GREP
if [[ -z $GREP ]];
then
COMMAND=$COMMAND;
else 
COMMAND="$COMMAND | grep $GREP"; 
fi

COMMAND_NAME="FULL COMMAND: $COMMAND"
echo "==============================="
echo $COMMAND_NAME
echo "==============================="

eval $COMMAND
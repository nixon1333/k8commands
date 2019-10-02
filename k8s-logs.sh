#!/bin/bash 

###################################################################
#Script Name	: k8s-logs.sh                                                                                      
#Description	: k8s get logs of a resource                                                                      
#Args         :                                                                                           
#Author       : Nixon <nixon613@gmail.com>
###################################################################

echo "namespace?"
read NAMEPSPACE

echo "pod name?"
read POD_NAME

COMMAND="kubectl logs -f -n $NAMEPSPACE po/$POD_NAME"
COMMAND_NAME="FULL COMMAND: $COMMAND"
echo "==============================="
echo $COMMAND_NAME
echo "==============================="

eval $COMMAND
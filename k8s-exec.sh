#!/bin/bash 

###################################################################
#Script Name	: k8s-exec.sh                                                                                      
#Description	: k8s execute inside a pod                                                                          
#Args         :                                                                                           
#Author       : Nixon <nixon613@gmail.com>
###################################################################


echo "namespace?"
read NAMEPSPACE

echo "resouce name?"
read RESOURCE_NAME

COMMAND="kubectl exec -n $NAMEPSPACE $RESOURCE_NAME -it bash"
COMMAND_NAME="FULL COMMAND: $COMMAND"
echo "==============================="
echo $COMMAND_NAME
echo "==============================="

eval $COMMAND
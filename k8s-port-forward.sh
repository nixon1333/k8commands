#!/bin/bash 

###################################################################
#Script Name	: k8s-port-forward.sh                                                                                      
#Description	: k8s port forward a resouce or service                                                                    
#Args         :                                                                                           
#Author       : Nixon <nixon613@gmail.com>
###################################################################


echo "namespace?"
read NAMEPSPACE

echo "po/svc(default svc)?"
read TYPE_NAME
if [[ -z $TYPE_NAME ]]; then TYPE_NAME="svc"; fi

echo "resouce name?"
read RESOURCE_NAME

echo "port no (5432/5431:5432)?"
read PORT_NO

COMMAND="kubectl  port-forward -n $NAMEPSPACE $TYPE_NAME/$RESOURCE_NAME $PORT_NO"
COMMAND_NAME="FULL COMMAND: $COMMAND"
echo "==============================="
echo $COMMAND_NAME
echo "==============================="

eval $COMMAND
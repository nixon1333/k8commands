#!/bin/bash 

###################################################################
#Script Name	: k8s-image-update.sh                                                                             
#Description	: k8s update deployment image                                                                          
#Args         :                                                                                           
#Author       : Nixon <nixon613@gmail.com>
###################################################################

echo "namespace?"
read NAMEPSPACE

echo "image tag?"
read IMAGE_TAG

echo "deployment app name?"
read RESOURCE_NAME


COMMAND="kubectl set image deployment/$RESOURCE_NAME $RESOURCE_NAME=$IMAGE_TAG -n $NAMEPSPACE"
COMMAND_NAME="FULL COMMAND: $COMMAND"
echo "==============================="
echo $COMMAND_NAME
echo "==============================="

eval $COMMAND


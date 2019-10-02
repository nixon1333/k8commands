#!/bin/bash 

###################################################################
#Script Name	: alias.sh                                                                                      
#Description	: k8s alias resources                                                                          
#Args         :                                                                                           
#Author       : Nixon <nixon613@gmail.com>
###################################################################

MYDIR="$(dirname "$(which "$0")")"
alias kndel="'$MYDIR/k8s-delete.sh'"
alias kndes="'$MYDIR/k8s-describe.sh'"
alias knexec="'$MYDIR/k8s-exec.sh'"
alias knget="'$MYDIR/k8s-get-pods.sh'"
alias knlogs="'$MYDIR/k8s-logs.sh'"
alias knport="'$MYDIR/k8s-port-forward.sh'"


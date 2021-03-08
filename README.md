# k8commands
kubernetes short commands with little bit intuitive alias

```
alias kndel="'$MYDIR/k8s-delete.sh'"
alias kndes="'$MYDIR/k8s-describe.sh'"
alias knexec="'$MYDIR/k8s-exec.sh'"
alias knget="'$MYDIR/k8s-get-pods.sh'"
alias knlogs="'$MYDIR/k8s-logs.sh'"
alias knport="'$MYDIR/k8s-port-forward.sh'"
alias knImageUpdate="'$MYDIR/k8s-image-update.sh'"
```

## Description
- `kndel` will assist to delete resouces 
- `kndes` will assist to get description of a resouces (pod/ing/svc/deploy etc)
- `knexec` will assist to exec into a pod 
- `knget` will assist to get resources list (pods/deploy/ing/svc etc)
- `knlogs` will assist to get logs of a pod 
- `knport` will assist to forward port of a service or pod
- `knImageUpdate` will assist to change deployment images

## How to Use
Just include `alias.sh` into your shell profile(ie. `.zshrc` / `.bashrc`/ `.bash_profile` etc )

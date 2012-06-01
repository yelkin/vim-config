#!/bin/bash
#
# upload file from repository to ics using scp
#

main() {
    fname="$1";
    ip=192.168.122.3
    port=33
    login=root
    pass=1

    if [ -n "$fname" ] ; then
        scp -P$port "$fname" $login@$ip:/mnt/ro_disc/"${fname#*target_ro/}"
    fi
}
main $@

#!/bin/bash
. ./conf.sh
myvar=0
for x in ${DAYS[@]}
do
    count=''
    workfile="${WOR_FILENAME}"_${x}
    #count=$(sed -e "s/html/o/g" "${REP_FILENAME}_${x}" | wc -l)
    uri=$(awk '{print $3}' "${REP_FILENAME}_${x}")
    if test "$uri" != "" ;then
        echo "uri:${uri}"
    fi
    count=$(echo ${uri} | sed  -n -e "/html/p"  | wc -l)
    echo $count
   # if [ -f ${workfile} ]; then
   #     echo'' #${workfile}
   # fi
done

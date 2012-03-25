#!/bin/sh
google_q='http://google.co.jp/search?btnG=Google&q'

cat <<_END_
Content-type: text/plain
W3m-control: GOTO $google_q=$QUERY_STRING
W3m-control: DELETE_PREVBUF

_END_

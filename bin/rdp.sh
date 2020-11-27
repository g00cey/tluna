#!/bin/sh

xfreerdp /u:${XRDP_USER} /audio-mode:1 /f +fonts +clipboard /p:${XRDP_PASS} /v:192.168.0.10

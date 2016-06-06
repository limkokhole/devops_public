#!/bin/bash -e
##-------------------------------------------------------------------
## @copyright 2016 DennyZhang.com
## Licensed under MIT
## https://raw.githubusercontent.com/DennyZhang/devops_public/master/LICENSE
##
## File : start_all.sh
## Author : Denny <denny@dennyzhang.com>
## Description :
## --
## Created : <2016-06-04>
## Updated: Time-stamp: <2016-06-06 14:42:14>
##-------------------------------------------------------------------
# TODO: better location
. library_manage_service.sh
trap shell_exit SIGHUP SIGINT SIGTERM 0

service_list=${1:-"all"}
if [ "$service_list" = "all" ]; then
    service_list="couchbase-server,elasticsearch,mdm"
fi

manage_service "$service_list" "start"
## File: start_all.sh ends
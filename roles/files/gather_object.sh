#!/bin/bash
VALUE=`su - oracle -l -c "sqlplus -S /nolog" <<EOF
set termout on  heading off feedback off pagesize 0 verify off echo off
connect /as sysdba
@/tmp/gather_object.sql
exit;
EOF`

echo $VALUE


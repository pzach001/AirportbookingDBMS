#! /bin/bash

#PATH TO DATABASE FOLDER
export PGFOLDER=/tmp/$LOGNAME

#PATH TO DATA FOLDER
export PGDATA=$PGFOLDER/myDB/data

#DATABASE LISTENING PORT
export PGPORT=$1

#DBNAME
export DBNAME=flightDB

create_sh=../sql/create.sql
create_ind=create_indexes.sql
psql -h 127.0.0.1 -p $PGPORT $DBNAME < $create_sh
sleep 2
psql -h 127.0.0.1 -p $PGPORT $DBNAME <create_indexes.sql

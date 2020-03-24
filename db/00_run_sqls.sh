#! /bin/bash
cd `dirname $0`

until mysql --defaults-extra-file=./sql.cnf -e 'select 1'; do
  echo 'stop'
  sleep 1
done


for sql in $(ls *.sql); do
  mysql --defaults-extra-file=./sql.cnf < ${sql}
done
echo 'finish'

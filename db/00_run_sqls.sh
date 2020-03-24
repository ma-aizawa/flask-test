#! /bin/bash
cd `dirname $0`

for sql in $(ls *.sql); do
  mysql -u root -p < ${sql}
done

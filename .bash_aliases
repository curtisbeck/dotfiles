# ssh
alias gwilym='ssh gwilym'

alias omdw_search='psql -h omdw.cbjhrhwqcsm8.us-west-2.redshift.amazonaws.com -p 5439 -d omdw -U search_prod'
alias omdw_root='psql -h omdw.cbjhrhwqcsm8.us-west-2.redshift.amazonaws.com -p 5439 -d omdw -U root'
alias bdm='psql -h om-rs-proxy.inspdwprod.com -p 5439 -d bdm -U testa'
alias bdm_venicerpt='psql -h om-rs-proxy.inspdwprod.com -p 5439 -d bdm -U venicerpt'
alias dmpw_ro='psql -h dmpw.cbjhrhwqcsm8.us-west-2.redshift.amazonaws.com -p 5439 -d dmp -U readonly'
alias alerts='psql -h alertspg.c5qqqpnwarmx.us-west-2.rds.amazonaws.com -p 5432 -d alerts -U alerts'
alias console_scd='psql -h console-prod-pg.c5qqqpnwarmx.us-west-2.rds.amazonaws.com -p 5432 -d console -U scd'
alias console_qa='psql -h console-qa-db.openmail.company -p 5432 -d console -U consolemaster'
alias report_ro='psql -h report.c5qqqpnwarmx.us-west-2.rds.amazonaws.com -p 5432 -d report -U reportmaster'
alias console_master='psql -h console-prod-pg.c5qqqpnwarmx.us-west-2.rds.amazonaws.com -p 5432 -d console -U consolemaster'
alias optdb='mysql -unate -hoptdb.c5qqqpnwarmx.us-west-2.rds.amazonaws.com -Doptdb -phoPKDVpx9BcdMfD5gkbw'
alias ipyspark='PYSPARK_PYTHON=python2 PYSPARK_DRIVER_PYTHON=ipython2 pyspark'
alias ipyspark3='PYSPARK_PYTHON=python3 PYSPARK_DRIVER_PYTHON=ipython3 pyspark'


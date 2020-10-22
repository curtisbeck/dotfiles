# airflow
alias airflow-cp='docker cp mle/airflow/dags/. airflow_scheduler:/home/ubuntu/dags'
alias airflow-up='docker-compose --file=docker-compose.airflow.mle.yml up --build'
alias airflow-down='docker-compose --file=docker-compose.airflow.mle.yml down'
alias workon-airflow='workon airflow & cd $HOME/projects/OpenMail/mle/airflow'
alias airflow-worker-ips='aws ec2 describe-instances --filters Name=tag:Name,Values=mle-air_work_prod | jq -r .Reservations[].Instances[].PrivateIpAddress'
alias airflow-worker-containers='for ip in $( airflow-worker-ips ); do echo "**** $ip ****"; ssh $ip docker ps; echo; done'
alias airflow-worker-ps='for ip in $( airflow-worker-ips ); do echo "**** $ip ****"; ssh $ip ps -elf; echo; done'

# ssh
alias gwilym='ssh gwilym'

# alerts
alias tail_dmp='python tail_alerts.py -f | grep dumptruck'

# aws cli
alias ecr-login='$(aws ecr get-login --no-include-email --region us-west-2)'

# database
alias omdw_search='psql -h omdw.cbjhrhwqcsm8.us-west-2.redshift.amazonaws.com -p 5439 -d omdw -U search_prod'
alias omdw_root='psql -h omdw.cbjhrhwqcsm8.us-west-2.redshift.amazonaws.com -p 5439 -d omdw -U root'
alias bdm='psql -h om-rs-proxy.inspdwprod.com -p 5439 -d bdm -U testa'
alias bdm_venicerpt='psql -h om-rs-proxy.inspdwprod.com -p 5439 -d bdm -U venicerpt'
alias dmpw_ro='psql -h dmpw.cbjhrhwqcsm8.us-west-2.redshift.amazonaws.com -p 5439 -d dmp -U readonly'
alias alerts='psql -h alertspg.c5qqqpnwarmx.us-west-2.rds.amazonaws.com -p 5432 -d alerts -U alerts'
alias console_ro='psql -h console-prod-pg.c5qqqpnwarmx.us-west-2.rds.amazonaws.com -p 5432 -d console -U readonly'
alias console_scd='psql -h console-prod-pg.c5qqqpnwarmx.us-west-2.rds.amazonaws.com -p 5432 -d console -U scd'
alias console_qa='psql -h console-qa-db.openmail.company -p 5432 -d console -U consolemaster'
alias report_ro='psql -h report.c5qqqpnwarmx.us-west-2.rds.amazonaws.com -p 5432 -d report -U reportmaster'
alias airflow_db='psql -h mle-air-prod.c5qqqpnwarmx.us-west-2.rds.amazonaws.com -p 5432 -d mleairflow -U mleproduser'
alias airflow_db_stage='psql -h mle-air-stage.c5qqqpnwarmx.us-west-2.rds.amazonaws.com -p 5432 -d mleairflow -U mlestageuser'
alias console_master='psql -h console-prod-pg.c5qqqpnwarmx.us-west-2.rds.amazonaws.com -p 5432 -d console -U consolemaster'
alias optdb='mysql -unate -hoptdb.c5qqqpnwarmx.us-west-2.rds.amazonaws.com -Doptdb -phoPKDVpx9BcdMfD5gkbw'
alias ipyspark='PYSPARK_PYTHON=python2 PYSPARK_DRIVER_PYTHON=ipython2 pyspark'
alias ipyspark3='PYSPARK_PYTHON=python3 PYSPARK_DRIVER_PYTHON=ipython3 pyspark'
alias krs1='psql -h keyword-repository-prod.c5qqqpnwarmx.us-west-2.rds.amazonaws.com -dKRS1 -p 5432 -U KRS1_user'
alias influxdb-prod='influx -host influxdb-prod-us-west-2.system1.company'
alias influxdb-stage='influx -host influxdb-stage-us-west-2.system1.company'

alias chmod-docker-socket='sudo chmod 666 /var/run/docker.sock'


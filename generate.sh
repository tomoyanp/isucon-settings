sudo alp --cnt -f /var/log/nginx/access.log --limit=10000 > alp_cnt_`date "+%Y-%m-%d-%H-%M-%S"`.log
sudo alp --max -f /var/log/nginx/access.log --limit=10000 > alp_max_`date "+%Y-%m-%d-%H-%M-%S"`.log
sudo alp --avg -f /var/log/nginx/access.log --limit=10000 > alp_avg_`date "+%Y-%m-%d-%H-%M-%S"`.log
sudo cat /var/log/mysql/mysql-slow.log | pt-query-digest > pt-query-digest_`date "+%Y-%m-%d-%H-%M-%S"`.log

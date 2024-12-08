DIRECTORY_NAME=`date "+%Y%m%d%H%M%S_BK"`
mkdir $DIRECTORY_NAME
sudo alp --cnt -f /var/log/nginx/access.log --limit=10000 > alp_cnt_`date "+%Y-%m-%d-%H-%M-%S"`.log
sudo alp --max -f /var/log/nginx/access.log --limit=10000 > alp_max_`date "+%Y-%m-%d-%H-%M-%S"`.log
sudo alp --avg -r /var/log/nginx/access.log --limit=10000 > alp_avg_`date "+%Y-%m-%d-%H-%M-%S"`.log
sudo alp --sum -f /var/log/nginx/access.log --limit=10000 > alp_sum_`date "+%Y-%m-%d-%H-%M-%S"`.log
sudo cat /var/log/mysql/mysql-slow.log | pt-query-digest > pt-query-digest_`date "+%Y-%m-%d-%H-%M-%S"`.log
sudo cat /var/log/nginx/access.log | grep -v status:20 > nginx_access_error.log
sudo alp --cnt -f ./nginx_access_error.log --limit=10000 > alp_error_request_`date "+%Y-%m-%d-%H-%M-%S"`.log
sudo cat ./nginx_access_error.log | awk '{print $6 "|" $8}' > status_error_request_`date "+%Y-%m-%d-%H-%M-%S"`.log

mv *.log $DIRECTORY_NAME

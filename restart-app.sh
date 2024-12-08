cd ~/webapp/go && go build -o isuride
sudo systemctl daemon-reload
sudo systemctl restart isuride-go.service
sudo systemctl restart nginx.service

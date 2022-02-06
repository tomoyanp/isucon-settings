cd ~/isucari/webapp/go && make
sudo systemctl daemon-reload
sudo systemctl restart isubnb.go.service
sudo systemctl restart nginx.service

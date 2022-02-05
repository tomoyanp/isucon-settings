cd ~/isucari/webapp/go && make
sudo systemctl daemon-reload
sudo systemctl restart isucari.golang.service
sudo systemctl restart nginx.service

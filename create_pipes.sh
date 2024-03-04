folder=${PWD##*/} 
cd ..
mv $folder /home/orangepi/patrik/pipes
cd /home/orangepi/patrik/pipes
rm -rf gitupdate
mkfifo gitupdate
sudo cp patrik-cmd-pipe.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable patrik-cmd-pipe.service

1) Пересоздать файл(пайп) gitupdate
```bash
rm -rf gitupdate
mkfifo gitupdate
```
2) Создать сервис для systemd, который слушает пайп
```bash
sudo cp patrik-cmd-pipe.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable patrik-cmd-pipe.service
```

# Как развернуть
1. Получить ssh-ключ для репозиториев http://gl.appris.by/rating_mak/*
1. ```git clone https://github.com/fjqtp/rating .```
1. ```./install.sh```

# База данных
1. ```docker exec -i mysql mysql -uroot -prootpassword test < dump-2020-08-24_03-47.sql``` (dump базы данных спросите у бывалых)
1. ```docker exec -i mysql mysql -uroot -prootpassword test < dump-addon.sql``` (dump-addon.sql лежит в корне проекта)

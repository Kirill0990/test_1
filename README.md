## Технологий

- Python 3.9
- Django 3.2
- DRF

Cоздать и активировать виртуальное окружение:
```
python3 -m venv venv
```
```
source venv/bin/activate
```
Установите MySQL
MacOS 
```
brew install mysql pkg-config
```
Linux
```
sudo apt-get install mysql-client
```
Восстанавливаем базу данных из дампа
```
mysql -u -p -f mydb < news.sql
```
Установить зависимости из файла requirements.txt:
```
pip install -r requirements.txt
```

Выполнить миграции:
```
python manage.py migrate
```
Запустить проект:
```
python3 manage.py runserver
```

## Примеры работы с API для всех пользователе

```
GET api/news/ - получить список новостей.
GET api/news/{id}/ - получение новостей по id
```

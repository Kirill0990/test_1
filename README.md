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
Установить PostgreSQL
```
brew install postgresql
```
Восстанавливаем базу данных из дампа
```
psql news < news.bak
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

0. git clone https://github.com/0Teken6/Demo
1. git remote remove origin
2. cd mainapp
3. python -m venv venv
4. venv/Scripts/activate
5. pip install -r requirements.txt
6. python manage.py migrate
7. python manage.py collectstatic
8. python manage.py runserver

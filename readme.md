# Docker File para Django 3

Imagen para  creacion de projectos en djando 3

*Sigue en desarrollo*
Ejemplo de docker-compose
```yml
version: '3'

services: 
  web:
    image: leshz/django
    build: .
    command: python manage.py runserver 0.0.0.0:8000
    volumes:
      - ./:/code
    depends_on:
      - db
    ports:
      - "8080:8000"
```
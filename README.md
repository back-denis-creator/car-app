## Install

```
1. composer install
2. npm install
3. docker-compose up -d
4. git reset --hard
5. npm run production (не обязательно)
6. Создать символическую ссылку(чтобы видеть файлы), из докер-контейнера: php artisan storage:link
```

## Admin Panel

```
Admin Panel: http://localhost:8002/admin/
Login: admin@admin.com
Password: password
```

## Seeds testing data

```
php artisan db:seed
```

## phpMyAdmin

```
url: http://localhost:8003/
Login: car-app
Password: car-app
```

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

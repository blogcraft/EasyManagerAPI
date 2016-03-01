# Instrucciones de EASY MANAGER

Este instructivo está enfocado a aclarar aspectos tecnicos de Easy Manager así como también explicar como fue generado el código base y la forma correcta de implementar en un PC desde 0, disfruten.

## Requerimientos
* Ruby version 2.3.0

* System dependencies TODO

* Configuration TODO

* Database creation TODO

* Database initialization TODO

* How to run the test suite TODO

* Services (job queues, cache servers, search engines, etc.) TODO

* Deployment instructions TODO

## Generacion de ambiente
Cuando se requiere crear un ambiente de desarrollo desde 0 y tambien buenas practicas.
TODO

## Lineas de comando para generar codigo base implementar y ejecutar

### Crear API
```
rails new easymngr --api
rails g scaffold person name:string email:string phone:string address:string
rails g scaffold client notes:string rating:integer person:references
rails g scaffold user user_name:string password_hash:string person:references
```
Agregar a app/models/person.rb:   has_many :clients, dependent: :destroy
Agregar a app/models/person.rb:   has_many :users, dependent: :destroy
```
rails g scaffold job date:date note:string amount:integer paid:boolean user:references client:references
```
Agregar a app/models/client.rb:   has_many :jobs, dependent: :destroy
```
rails g scaffold system_log type:string message:string
```
### Realizar migraciones
```
rails db:migrate
```
### Ejecutar Servidor
```
rails s
```
## Otros

Este documento fue realizado con Markdown, para conocer la sintaxis visita [Mastering Markdown]( https://guides.github.com/features/mastering-markdown/).

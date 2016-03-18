# Instrucciones de EASY MANAGER API

Este instructivo está enfocado a aclarar aspectos tecnicos de Easy Manager API así como también explicar como fue generado el código base y la forma correcta de implementar en un PC desde 0, disfruten.

## Indice

1. Requerimientos
2. Generacion de Ambiente
3. Obtener e Implementar el Código
4. Lineas de Comando para Generar Codigo Base
5. Editores Recomendados
6. Referencias

## Requerimientos

* Ruby version 2.3.0

* Rails version 5.0.0.beta3

* System dependencies
[devise](https://github.com/plataformatec/devise)
[devise_token_auth](https://github.com/lynndylanhurley/devise_token_auth)
[omniauth](https://github.com/intridea/omniauth)

* Configuration TODO

* Database creation TODO

* Database initialization TODO

* How to run the test suite TODO

* Services (job queues, cache servers, search engines, etc.) TODO

* Deployment instructions TODO

## Generacion de Ambiente

Cuando se requiere crear un ambiente de desarrollo desde cero y tambien buenas practicas. (Todas las instrucciones requieren de la consola `CTRL + ALT + T`)

1. Instalar RVM con Ruby
```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
```

2. Cada vez que se abra un Shell se debera de ejecutar esta linea para permitir a RVM funcionar
```
source $HOME/.rvm/scripts/rvm
```

3. Actualizar el Gem Manager
```
gem update --system
```

4. Instalar Ruby (en este ejemplo se usa la versión 2.3.0)
```
rvm install 2.3.0
```

5. Listar las versiones de Ruby instaladas
```
rvm list
```

6. Establecer version de Ruby (en este ejemplo se usa la version 2.3.0)
```
rvm 2.3.0
```

7. Crear el Gemset y ponerle un nombre (en este caso usaremos el gemset para rails v 5.0.0.beta3)
```
rvm gemset create rails5
```

8. Listar los Gemsets
```
rvm gemset list
```

9. Para cambiar al Gemset se selecciona la version de Ruby seguido del Gemset (El gemset deve coincidir a la version de rubi con la que fue creada)
```
rvm 2.3.0@rails5
```

10. Instalar Rails (en este caso se especifica la version 5.0.0.beta3)
```
gem install rails --pre
```

11. Instalar servidor de Mail (opcional)
```
sudo apt-get install sendmail
```

## Obtener e Implementar el Código


1. Crear Carpeta donde Manegaran proyectos y posicionarse en ella.
```
mkdir proyectos
cd proyectos/
```

2. Clonar el repositorio e iniciar sesion.
```
git clone https://blogcraft@bitbucket.org/easymanager/easy_manager.git
```

3. Posicionarse en el proyecto easy_manager.
```
cd easy_manager/
```

4. Instalar las dependencias (gems) que se encuentren en el Gemfile.
```
bundle install
```

5. Generar las migraciones
```
rails db:migrate
```

6. Listo!

## Lineas de Comando para Generar Codigo Base

### Crear API

```
rails new easymngr --api
rails g scaffold person name:string email:string phone:string address:string
rails g scaffold client notes:string rating:integer person:references
```
Agregar `has_many :clients, dependent: :destroy` a `app/models/person.rb`.
```
rails g scaffold user user_name:string password_hash:string person:references
```
Agregar `has_many :users, dependent: :destroy` a `app/models/person.rb`
```
rails g scaffold job date:date note:string amount:integer paid:boolean user:references client:references
```
Agregar `has_many :jobs, dependent: :destroy` a `app/models/client.rb`
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

## Editores Recomendados

Recomiendo los 3 por igual, y es buena idea descargar los 3 para ver cual se acomoda mejor a tu gusto.

1. [Atom](https://atom.io/) editor de texto open source de GitHub.
2. [Visual Studio Code](https://code.visualstudio.com/) editor de texto open source (no es broma) de Microsft.
3. [Brakets](http://brackets.io/) editor de texto open source de Adobe.

## Referencias
1. Para saber mas sobre Rails asi como funcialidades más avanzadas visita [Ruby on Rails Guides](http://edgeguides.rubyonrails.org/).
2. Este documento fue realizado con Markdown, visita [Mastering Markdown]( https://guides.github.com/features/mastering-markdown/) para conocer la sintaxis.

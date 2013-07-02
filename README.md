e-shopping
==========

e-shopping demo

Requirements
==========

* ruby 2.0.0
* rails 4.0.0

Install
==========

```
rvm install 2.0.0
rvm use 2.0.0
rvm gemset create e-shopping
git clone git@github.com:tumayun/e-shopping.git
cd e-shopping
rake db:create
rake db:migrate
rake db:seed
rails s
```

Admin
==========

```
email: admin@e-shopping.com
password: admin

http://127.0.0.1:3000/admin
```

User
==========

```
email: user@e-shopping.com
password: user123

http://127.0.0.1:3000
```

Thanks
==========

* [Twitter Bootstrap](https://twitter.github.com/bootstrap)
* [Devise](https://github.com/plataformatec/devise)

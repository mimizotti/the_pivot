# Little Shop 2 (The Pivot) 

Little Shop 2 builds upon an existing implementation of Little Shop. We took an application that only supported one store to an e-commerce platform that can handle multiple, simultaneous businesses. Each business has their own name, unique URL pattern, items, orders, and administrators.

During this project, the Pivot team:

* Used TDD to drive all layers of Rails development including unit and integration tests
* Designed a system of models which used one-to-one, one-to-many, and many-to-many relationships
* Practiced mixing HTML, CSS, and templates to create an inviting and usable User Interface
* Deployed an application to Heroku
* Exercised ActiveRecord and SQL queries. 

## Endpoints

* /categories
* /items
* /orders
* /stores

### Prerequisites

* Ruby 2.3.1
* Rails 5

### Getting Started
```
$ git clone git@github.com:mimilettd/little-shop-of-useless-things.git
$ cd little-shop-of-useless-things
$ bundle install
$ rake db: {create,migrate,seed}
```

## Built With

* [Rails 5.1.4](http://api.rubyonrails.org) - The web application framework used
* [Bootstrap](https://getbootstrap.com/docs/4.0/getting-started/introduction/) - CSS framework used
* [Postgresql](https://www.postgresql.org/) - Relational database

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Contributors

<a href="https://github.com/mimilettd">Mimi Le</a>, <a href="https://github.com/vaidashi">Ashish Vaid</a>, <a href="https://github.com/jimszalew">Jim Szalewski</a>, and <a href="https://github.com/liambarstad">Liam Barstad</a>.


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

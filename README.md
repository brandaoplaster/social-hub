# Social hub

An app inspired by twitter, where it allows the user to create post, 
comment post and like the post, besides having the possibility to follow 
other users or be follow

## Prerequisites

>You just need have docker-compose installed in your machine.

## Getting Started
>To get the app running, run the following commands:

  ```docker
    docker-compose build
    docker-compose run --rm webiste bundle install
    docker-compose run --rm website bundle exec rails db:create
    docker-compose run --rm website bundle exec rails db:migrate
    docker-compose up
  ```

## Built With

* [Ruby on Rails](https://rubyonrails.org/) - Dependency Management
* [Materialize](https://materializecss.com/) - Dependency Management

## Authors

* **Lucas Brandão** - [brandaoplaster](https://github.com/brandaoplaster)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

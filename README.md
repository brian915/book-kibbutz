##README


based upon : 

***

and perhaps : 
***https://tutorials.railsapps.org/tutorials/rails-devise-roles***

using :

* Pundit 1.1.0
* Devise 3.5.6
* Rails 4.2.6
* Ruby 2.3

Rails Composer Options : 


Things you may want to cover:


* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...




## Book Kibbutz


###Database:

```bash
createdb -U book_kibbutz -W  book_kibbutz_development
createdb -U book_kibbutz -W  book_kibbutz_test
psql
rake db:migrate 

rails c
```
```ruby
b = Book.all
quit
```
```bash
ee config/database.yml
rails generate rspec:install
rake
```


###Theme:

```bash
rails g simple_form:install  --bootstrap
```
  Be sure to have a copy of the Bootstrap stylesheet available on your
    application, you can get it on http://getbootstrap.com/.

  Inside your views, use the 'simple_form_for' with one of the Bootstrap form
    classes, '.form-horizontal' or '.form-inline', as the following:

```ruby
simple_form_for(@user, html: { class: 'form-horizontal' }) do |form|
```

###Specific Steps for Local Install:

still required ? 
***gem install eventmachine -v '1.0.3' -- --with-cppflags=-I/usr/local/opt/openssl/include***

###Git Repo:

* git status
* ee .gitignore
* git add .
* git commit -m 'initial commit'
* git remote add origin git@github.com:brian915/book-kibbutz.git
* git remote
* git push origin master
* git push -u origin master






# README

This README to document steps & process for setting up Rails project

* Ruby version:ruby 2.7.2p137


# to start project: 
* ``` rails new "project name" ``` -> will create directory to hold project
* ``` bin/rails server ``` -> runs the server
* create controller: ``` bin/rails generate controller ControllerName index(is this an action?) --skip-routes(IF the route was already created!) ```
     * creates Name_controller.rb, views/name & views/name/index.html.erb, tests, helpers/name_helper.rb, assets/stylesheets/name.scss    
* create model: ``` bin/rails generate model ControllerName title:string body:text ``` -> title & body adds columns to the model
    * creates models/name.rb, models/name_test.rb, rest/fixture/names.yml, and a migrations file  
* ``` bin/rails db:migrate ``` migrates! 
* Launch console, interactive env to interact with model``` bin/rails console ``` !ctrl+ D to exit console!
* 
# random notes: 
* ERB is a templating system that evaluates Ruby code embedded in a document.
* 
# Edit as you go: 
* System dependencies:

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

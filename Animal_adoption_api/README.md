# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

TABLE OF CONTENTS
-----------------
- INTRODUCTION
- EXAMPLE USAGE
- TECHNOLOGIES USED
- SYSTEM DEPENDENCIES
- DATABASE CREATION
- SERVICES
- CONTRIBUTORS
- ISSUES
- DEPLOYMENT


INTRODUCTION
------------
Animal Adoption is an application that allows users to browse and search for animals available for adoption at regional and national pet adoption centers.

EXAMPLE USAGE
-------------
The user visits the site and lands on the main page which lists all the regional pet adoption centers.
The user can click on any of the available centers to see detailed information about that center and a list of all the animals available for adoption at that center.
The user can click on any available animal to see more detailed about that animal.
Besides browsing animals by location, the user can also list all the animals available for adoption at all regional adoption centers.
The user can search all animals available for adoption and filter the results by animal type, for example: dog, cat, birds, and many more.
The user can also search for animals outside the regional network of participating adoption centers. To do so, the user can input animal type and zip-code to obtain a comprehensive list of all animals available of that type on that zip-code area.

TECHNOLOGIES USED
-----------------
AngularJS. The application is an Angular front-end application capable of updating UI.
AJAX. To request data served by our Rails application.
Ruby on Rails. The application uses Rails as an API with full RESTful capabilities. The Ruby version: 2.4.0.
JSON. A syntax for storing and exchanging data written in JavaScript notation.
JQuery. JavaScript library to simplify javascript programming.
Javascript.
CSS. Style-sheets.

SYSTEM DEPENDENCIES
-------------------
Besides the technologies described above, the Angular application is dependent on the services:
- ui-router
- $stateProvider
- ngResource
- $location

DATABASE CREATION
-----------------
The Angular application depends on a seeded database on the back-end Rails application to serve data.
The application also makes use of an external API to serve extra data.

SERVICES
--------
Search engine. Search animals on local network filtered by animal type.
Search engine API. Search animals on national level according to animal type and zip-code.

CONTRIBUTORS
------------
Curtis Ostle. Angular development.
Luisa Gonzalez. CSS styling and layout.
Andres Arango. Ruby on Rails back end development.

ISSUES
------
When the user creates or deletes animals by making RESTful requests to the API back-end, the application needs to be reloaded to show the updated information.

DEPLOYMENT
----------

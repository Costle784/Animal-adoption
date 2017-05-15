angular
  .module("animal_adoption", [
    "ui.router",
    "ngResource",
  ])
  .config([
    "$stateProvider",
    "$locationProvider",
    RouterFunction
  ])
  .factory("LocationFactory", [
    "$resource",
    LocationFactoryFunction
  ])
  .factory("AnimalLocationFactory", [
    "$resource",
    AnimalLocationFactoryFunction
  ])
  .factory("AnimalFactory", [
    "$resource",
    AnimalFactoryFunction
  ])
  .controller("LocationIndexController", [
    "LocationFactory",
    LocationIndexControllerFunction
  ])
  .controller("LocationShowController", [
    "LocationFactory",
    "$stateParams",
    LocationShowControllerFunction
  ])
  .controller("AnimalIndexController", [
    "AnimalFactory",
    AnimalIndexControllerFunction
  ])
  .controller("AnimalNewController", [
    "AnimalLocationFactory",
    "$stateParams",
    "$location",
    AnimalNewControllerFunction
  ])
  .controller("AnimalEditController", [
    "AnimalLocationFactory",
    "$stateParams",
    "$location",
    AnimalEditControllerFunction
  ])
  .controller("AnimalShowController", [
    "AnimalLocationFactory",
    "$stateParams",
    AnimalShowControllerFunction
  ])


  function RouterFunction($stateProvider){
    $stateProvider
    .state("home", {
      url:"",
      templateUrl:"js/ng-views/index.html",
      controller:"LocationIndexController",
      controllerAs:"vm"
    })
    .state("locationIndex",{
      url:"/locations",
      templateUrl:"js/ng-views/index.html",
      controller:"LocationIndexController",
      controllerAs:"vm"
    })
    .state("locationShow", {
      url: "/locations/:id",
      templateUrl: "js/ng-views/show.html",
      controller: "LocationShowController",
      controllerAs: "vm"
    })
    .state("animalIndex",{
      url: "/animals",
      templateUrl:"js/ng-views/animal_index.html",
      controller: "AnimalIndexController",
      controllerAs:"vm"
      })
    .state("animalNew", {
      url: "/locations/:location_id/animals/new",
      templateUrl: "js/ng-views/animal_new.html",
      controller: "AnimalNewController",
      controllerAs: "vm"
    })
    .state("animalEdit", {
      url:"/locations/:location_id/animals/:id/edit",
      templateUrl:"js/ng-views/animal_edit.html",
      controller:"AnimalEditController",
      controllerAs:"vm"
    })
    .state("animalShow", {
      url: "/locations/:location_id/animals/:id",
      templateUrl: "js/ng-views/animal_show.html",
      controller: "AnimalShowController",
      controllerAs: "vm"
    })

  }
  function LocationFactoryFunction ($resource){
    return $resource("http://localhost:3000/locations/:id",{},{});
  }

  function AnimalLocationFactoryFunction ($resource){
    return $resource("http://localhost:3000/locations/:location_id/animals/:id",{},{
        update: {method: "PUT"}
    });
  }

  function AnimalFactoryFunction($resource) {
    return $resource("http://localhost:3000/animals")
  }

  function LocationIndexControllerFunction(LocationFactory){
    this.locations = LocationFactory.query();
  }

  function LocationShowControllerFunction (LocationFactory, $stateParams) {
    this.location = LocationFactory.get({id: $stateParams.id})
  }

  function AnimalIndexControllerFunction(AnimalFactory) {
    this.animals = AnimalFactory.query();
  }

  function AnimalNewControllerFunction(AnimalLocationFactory, $stateParams, $location) {
    this.animal = new AnimalLocationFactory();
    this.create = function() {
      this.animal.$save({location_id: $stateParams.location_id})
      $location.path('/locations/' + $stateParams.location_id)
    }
  }

  function AnimalEditControllerFunction(AnimalLocationFactory, $stateParams, $location) {
    this.animal = AnimalLocationFactory.get({location_id: $stateParams.location_id, id: $stateParams.id})
    this.update = function(){
      this.animal.$update({location_id: $stateParams.location_id, id: $stateParams.id});
      $location.path('/locations/' + $stateParams.location_id + '/animals/' + $stateParams.id)
    }
    this.destroy = function(){
      this.animal.$delete({location_id: $stateParams.location_id, id: $stateParams.id})
      $location.path('/locations/' + $stateParams.location_id)
    }
  }

  function AnimalShowControllerFunction(AnimalLocationFactory, $stateParams) {
    this.animal = AnimalLocationFactory.get({location_id: $stateParams.location_id, id: $stateParams.id})
  }

angular
  .module("animal_adoption", [
    "ui.router",
    "ngResource"
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ])
  .factory("LocationFactory", [
    "$resource",
    LocationFactoryFunction
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
  .controller("AnimalShowController", [
    "AnimalFactory",
    "$stateParams",
    AnimalShowControllerFunction
  ])

  function RouterFunction($stateProvider){
    $stateProvider
    .state("locationIndex",{
      url:"/locations",
      templateUrl:"js/ng-views/index.html",
      controller:"LocationIndexController",
      controllerAs:"vm"
    })
    .state("animalShow", {
      url: "/locations/:location_id/animals/:id",
      templateUrl: "js/ng-views/animal_show.html",
      controller: "AnimalShowController",
      controllerAs: "vm"
    })
    .state("locationShow", {
      url: "/locations/:id",
      templateUrl: "js/ng-views/show.html",
      controller: "LocationShowController",
      controllerAs: "vm"
    })

  }
  function LocationFactoryFunction ($resource){
    return $resource("http://localhost:3000/locations/:id",{},{});
  }
  function AnimalFactoryFunction ($resource){
    return $resource("http://localhost:3000/locations/:location_id/animals/:id",{},{});

  }

  function LocationIndexControllerFunction(LocationFactory){
    this.locations = LocationFactory.query();
  }

  function LocationShowControllerFunction (LocationFactory, $stateParams) {
    this.location = LocationFactory.get({id: $stateParams.id})
  }

  function AnimalShowControllerFunction(AnimalFactory, $stateParams) {
    this.animal = AnimalFactory.get({location_id: $stateParams.location_id, id: $stateParams.id})
  }

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
  .controller("LocationIndexController", [
    "LocationFactory",
    LocationIndexControllerFunction
  ]);
  function RouterFunction($stateProvider){
    $stateProvider
    .state("locationIndex",{
      url:"/locations",
      templateUrl:"js/ng-views/index.html",
      controller:"LocationIndexController",
      controllerAs:"vm"
    })
  }
  function LocationFactoryFunction ($resource){
    return $resource("http://localhost:3000/locations/:id",{},{});
  }
  function LocationIndexControllerFunction(LocationFactory){
    this.locations = LocationFactory.query();
  }

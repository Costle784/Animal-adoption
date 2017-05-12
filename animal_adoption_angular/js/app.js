angular
  .module("animal_farm", [
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
  .controller("LocationIndexController") [
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

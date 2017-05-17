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
  .controller("FormController", [
    "$stateParams",
    "$location",
    "AnimalLocationFactory",
    FormControllerFunction
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
    .state("form", {
      url: "/locations/:location_id/animals/:id/form",
      templateUrl: "js/ng-views/form",
      controller: "FormController",
      controllerAs: "vm"
    })
  }

  function LocationFactoryFunction ($resource){
    return $resource("https://animaladoption.herokuapp.com/locations/:id",{},{});
  }

  function AnimalLocationFactoryFunction ($resource){
    return $resource("https://animaladoption.herokuapp.com/locations/:location_id/animals/:id",{},{
        update: {method: "PUT"}
    });
  }

  function AnimalFactoryFunction($resource) {
    return $resource("https://animaladoption.herokuapp.com/animals")
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
      this.animal.$save({location_id: $stateParams.location_id}, () => {
        $location.path('/locations/' + $stateParams.location_id)
      })
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

  function FormControllerFunction($stateParams, $location, AnimalLocationFactory) {
    this.animal = AnimalLocationFactory.get({location_id: $stateParams.location_id, id: $stateParams.id})
    function shuffle(array) {
      var currentIndex = array.length, temporaryValue, randomIndex;
      while (0 !== currentIndex) {
        randomIndex = Math.floor(Math.random() * currentIndex);
        currentIndex -= 1;
        temporaryValue = array[currentIndex];
        array[currentIndex] = array[randomIndex];
        array[randomIndex] = temporaryValue;
      }
    return array;
    }
    let text = $('#text')
    let button = $("#button")
    let formContainer = $("#form_container")
    let answerArray1 =[];
    let answerArray2 =[];
    let answerArray3 =[];
    let answersArray = [];
    let questionsArray = [];

    button.on("click", (evt) => {
      evt.preventDefault();
      let url = "https://opentdb.com/api.php?amount=3&category=27&type=multiple"
      $.ajax({
        url: url,
        type: "get",
        dataType: "json"
      }).done((response) => {

        let question1 = response.results[0];
        let question2 = response.results[1];
        let question3 = response.results[2];
        questionsArray.push(question1)
        questionsArray.push(question2)
        questionsArray.push(question3)

        answerArray1.push(question1.correct_answer)
        question1.incorrect_answers.map ((wronganswer) => {
          answerArray1.push(wronganswer);
        })
        shuffle(answerArray1);
        answersArray.push(answerArray1);

        answerArray2.push(question2.correct_answer)
        question2.incorrect_answers.map ((wronganswer) => {
          answerArray2.push(wronganswer);
        })
        shuffle(answerArray2);
        answersArray.push(answerArray2);

        answerArray3.push(question3.correct_answer)
        question3.incorrect_answers.map ((wronganswer) => {
          answerArray3.push(wronganswer);
        })

        shuffle(answerArray3);
        answersArray.push(answerArray3);


        let counter = 0;
        questionsArray.map ((question) => {
          formContainer.append(`<div>${question.question}</div>`)
          answersArray[counter].map ((answer) => {
            formContainer.append(`<div>${answer}</div>`)
          })
          counter++;
          // formContainer.append("<input type='text' id='text'><input type='submit'>")
          // formContainer.append(`<input type='text' id='text' ng-model="vm.question_${counter}_answer"><button type="button" id="button_${counter}" ng-click="vm.check_answer()">Submit</button>`)
          formContainer.append(`<input type='text' id='question_${counter}_answer' name='question_${counter}_answer' value="">`)
          let button = $(`<button type="button" id="button_${counter}">Submit</button>`);
          formContainer.append(button);
          button.click(function(){
            let button_id = $(this).attr("id");
            let input = $(`question_${counter}_answer`);
            // console.log("Clicked", arguments);
            console.log("Clicked", button_id, input.val());
          })
            // answersArray[counter].map (() => {
            //
            // })
        })


        }).fail((response) => {
        console.log("Ajax request failed")
      }).always(() => {
        console.log("Thank you for using our API")
      })
    })
  }

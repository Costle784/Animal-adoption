# Project 3 Evaluation

## Back-end Technology
**2: Performing**
>Includes 2 models

## Front-end Technology
**2: Performing**
>Front-end makes appropriate use of Angular controllers and states with ui-router.

## Code Quality
**1: Progressing**
>Code lacks proper formatting, includes commented out, non-functional code, or otherwise contains major issues of quality (DRY, naming, etc)

## Deployment and Functionality
**2: Performing**
>Application contains no major errors, is deployed correctly, and contains a custom Heroku app name appropriate for the app.

## Planning / Process / Submission
**2: Performing**
>Submission contains clear evidence of planning, adequate documentation, include all from previous category, as well as additional information such as unsolved issues.

#### Feedback
Nice work team!

You've put together a very strong app especially considering the setbacks of having to pivot from your original baseball idea and dropping a desired external API.

Please read the below feedback as things to work on improving and keep in mind with future development projects.

##### Re: Team Commits

I was a little concerned at first when I saw the team contribution didn't seem to include Luisa:
https://github.com/Costle784/Animal-adoption/graphs/contributors

I did ultimately find her commits in the history
https://github.com/Costle784/Animal-adoption/commits/master
but her username wasn't linked properly so I'm confused as to what happened here. Was she committing from a different github account that was since deleted? Was she accidentally removed as a contributor to the repo?

##### Re: Code quality
Of more concern was the presence of some extraneous files in your master branch. Your [rails db folder](https://github.com/Costle784/Animal-adoption/tree/master/Animal_adoption_api/db) had merge-conflict versions of the seeds.rb file (seeds_BACKUP_2758.rb, seeds_BASE_2758.rb, seeds_LOCAL_2758.rb, seeds_REMOTE_2758.rb) committed to the repo. The merge conflict should have been resolved locally first preventing these files from being added to the repo. And oddly, an entire copy of the OMDB HW assignment's [script.js file](https://github.com/Costle784/Animal-adoption/blob/master/animal_adoption_angular/js/script.js) was included in your angular application's js folder. I presume it was there as a reference, but shouldn't have been allowed to be committed to master.

##### Re: Pending Issues
Your Readme mentioned having trouble getting creations/deletions reflected in the the site without hard refreshing the page.

This trouble has to do with two things.

First, in your angular app.js, the redirect `$location.path` is called immediately after the update and delete action. Because these are api calls are asynchronous, the action might not be complete before the view switches. That's why your data sometimes appears not to change. There should be a callback used in your `.$update` and `.$delete` in angular [/animal_adoption_angular/js/app.js#L149-L159](https://github.com/Costle784/Animal-adoption/blob/master/animal_adoption_angular/js/app.js#L149-L159) Moving the `$location.path()` method call into that callback will ensure that angular will wait for the server to finish handling our request before switching views. See an example of this in my edits to your app.js for `.$delete`

Second is your rails api [/Animal_adoption_api/app/controllers/animals_controller.rb#L33-L45](https://github.com/Costle784/Animal-adoption/blob/master/Animal_adoption_api/app/controllers/animals_controller.rb#L33-L45) It's normal when when serving webpages to redirect when responding to POST/PUT/DELETE methods, but for JSON-only APIs (even though it's not strictly RESTful) we typically want to respond directly with JSON instead of redirecting. Refer to the [Rails API lesson](https://github.com/ga-wdi-lessons/rails-api) for more information and see edits to /Animal_adoption_api/app/controllers/animals_controller.rb
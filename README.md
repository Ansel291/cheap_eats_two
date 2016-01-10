
#![](http://i.imgur.com/EgqdClg.jpg)

#Cheap Eats LA

---

### The Product:


Cheap eats LA is a food blog database application that allows a user to view food, as deemed by the public to be highly rated and of high quality for a price of less than $10.  

- [Click here to visit Cheap Eats of LA](https://mighty-stream-1020.herokuapp.com/)

A user can register and login to the app by typing in their email and a password.  

If not signed in, a user will be able to view the index of the application which displays the thumbnails of each dish, as well as enter into an individual dish's "show" page which describes the name, the restaurant, the category of food (i.e. mexican or italian), the price, and a brief summary of the dish itself, a calculated average rating, as well as individual ratings posted by other viewers. The user will also be able to view dishes by category according to dish's ethnic origin.

However, if signed in, a user will be authenticated by their own individual unique password and will be able to upload/create their own images and add/post to the database, and fill in detailed information of a dish that they are presenting to other viewers.

Also when signed in, viewers will be able to "review" a dish (if they have tried it) on a 1 to 5 scale star-rating.  Users who create their own reviews/ratings will also be authorized to update and delete their own posts.  Users who try to update/delete a post or review not created by them originally will not be authorized to do so.

---

### Created By:

**Name** | **GitHub** | **Email** 
---------| ---------- | ---------
Jason **Asahara** | [GitHub](https://github.com/Ansel291) | [jasahara@yahoo.com](jasahara@yahoo.com)


###Design:

![](http://i.imgur.com/6CzyoCW.png)


###Technologies Used:

Technologies used for the creation of this application database include:

Amazon Web Services, Git, GitHub, Heroku, Terminal, Trello, Rails 4.2.4. 

###Languages Used:

Bootstrap, CSS, HTML, JavaScript, JQuery, Ruby v. 2.4.3


###Installations Required:

- Below is a snippet of the gemfile with all ruby gem dependencies.

```
gem 'rails', '4.2.4'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'simple_form', '~> 3.2'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.5.1'
gem 'devise', '~> 3.5', '>= 3.5.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'puma'
gem 'bcrypt', '~> 3.1.7'
gem "paperclip", "~> 4.3"
gem 'aws-sdk', '< 2.0'
gem 'rails_12factor', group: :production

group :development, :test do
  gem 'byebug'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
end
```



### Development Process:* Visit the [trello.com](https://trello.com/b/3y7ERjng/cheap-eats-of-la) to see how this project was organized, planned, goals that were reached, user stories, and rough sketches.
---
###Wireframe/ERD:

![](http://i.imgur.com/1omrtnA.jpg)
![](http://i.imgur.com/xXNaeOO.jpg)


###Milestones/User Stories Accomplished:

[ x ]  As a user, i want to be able to leave a rating on a Dish on a scale from 1 to 5 with use of png "stars".  (Ask about storing png files in assets folder ) 10-30-15 (Completed on 11-05-15)

[ x ] As a user, I want to be able to leave comments and ratings on other people's blog/reviews 11-01-15 (Completed 11-05-15)

[ x ]  As a user, I want to be able to upload images onto the application view. 11-01-15 (completed on 11-03-15)

[ x ]  As I user, i want to see nice pretty pictures of food. 11-02-15 (Completed 11-03-15)

[ x ] As a user, I want to be able to write a cheap eats review into a text field and submit, and to see my review posted on the application. 11-01-15 (Completed on 11-02-15)

[ x ] As a user, I want to be able to Delete my review. 11-01-15 (Completed on 11-02-15)

[ x ] As a user, I want to establish my identity by submitting my email and a password, and my identity to be authenticated. 11-01-15 (completed on 11-02-15)

[ x ] As a user, i want to be able to press a submit button that stores a food description summary as a string into a database. 10-30-15 (Completed on 11-01-15)

[ x ] As a user, I want to be able to Edit my review. 11-01-15 (Completed on 11-01-15)

---

###Upcoming Features:

[ ]  A counter that tracks how many times a post has been viewed. 10-30-15
 
[ ]  A "like" button with a counter that tracks the number of times that a post has been liked.  11-02-15

---

###Unsolved Problems/Major Hurdles:

Perhaps the most relevant problematic hurdle that remains is need for creating some sort of warning dialogue box or modal when a user is attempting to post a dish without completely filling out every form field.  When the user fails to fill out information for each category, the database for that particular dish freezes, and the user is therefore not able to click and open the show page for the newly posted Dish.  In order to resolve this problem, a warning modal must be created to inform the user when he/she has not completely filled in every field in the create new dish page in its entirety.

---

####Copyrighted by:
Jason Asahara 2015









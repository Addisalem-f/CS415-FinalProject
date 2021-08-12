# CS415-FinalProject
CityLibrary Project

Techonologies used in this application
Front-end
    -HTML5
    -CSS3
    -BOOTSTRAP 4
    -jQuery
Back-end
   -MongoDB
   -Express.js
   -Node.js
   -Passport.js for router flexiblity. we didn't learned yet, but it is good to add whenever it is possible.

Run the application
     ======>all stesp below  required??????????????????????? yes required
  ==>create a .env file in app directory

  ===> add SESSION_SECRET=<your session secret>, ADMIN_SECRET=<your admin secret> and DB_URL=<your mongodb url> into that file.
   ==> run---> npm run dev or ---> node app.js
  ===>  App will open at http://localhost:3000
  
  
  Whole app is divided into three modules.

       Admin
       User
       Browse books
#Admin module functionalities
      Sign up (This route is hidden. only accessible by typing the route manually and when admin log in)
     Login
     Logout
     Track all users activities
     Add books
   Update books
    Delete books
   Search books by category, title, author, ISBN
   Find users by firstname, lastname, email and username
   Delete user acount

   Send notification to all/individual/filtered user (not ready yet, will be added as soon as I learn(study by myself==>> socket.io)
  Browse books showcase
   Update admin profile and password
  Add new admin
   Delete currently logged in admin profile
User module functionalities
   Sign up
  Login
  Logout
  Track own activities
  Issue books
  Renew books
  Return books
  Pay fines (not ready yet, will be added )
  Browse books showcase
  Add, edit and delete comment on any books comment section
  Upload/Update profile picture
  Update profile and password
  Delete account
#Browse books module functionalities
  This module can be accessed by anyone

    Show all books
   Find books on filtered search
  
  

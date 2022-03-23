# README

Create a new rails app called example-dogs-api.

Use the Authentication guide to implement user signup and login actions. 

Test each using requests.http (create at least 2 different users).

Make a Dog model with attributes for name, age, and breed.

Implement a dogs create action. The dogs create action should only work if a user is logged in; if they are not, send a json message saying users must be logged in to create new dogs.

Bonus: Make a has_many / belongs_to relationship between users and dogs, and change the create action to save the user’s id with each dog.

Bonus part 2: Make update and destroy actions that only work if the current user is the owner of that dog.
# Rails Assessment

It's time to put our Rails know-how to the test. Today, we have a basic new application.

## Objectives
+ MVC
+ REST
+ Request/Response Cycle
+ Form/Form Helpers
+ ActiveRecord
+ Validations

## Setup

Before you begin, fork and clone this repo, run `rake db:migrate` and `rake db:seed` to get started.

## The Domain

You've just been hired by 'The Late Show With Stephen Colbert' - congratulations! The production staff needs help keeping track of all of the guests that they've had on the show. To do this, we need to be able to keep track of each guest and all of their appearances on the show.

Luckily, another developer has already started the job. We have a model for guests and a model for episodes. Visiting `'/guests'` displays all of the guests, and visiting `'/episodes'` displays all of the episodes. We just don't have a way to associate an episode with a guest. Remember that guests can appear on the show many times, and an episode can (and usually does) have many guests.

## What You Already Have

***Schema***

Episodes

| Column | Format|
| ------------- | ------------- |
| date  | Date  |
| number  | Integer  |
| created_at  | DateTime  |
| updated_at  | DateTime  |

Guests

| Column | Format|
| ------------- | ------------- |
| name  | String  |
| occupation  | String  |
| created_at  | DateTime  |
| updated_at  | DateTime  |

### Model Methods and Validations

- None

### Routes, Controllers and Views

- Episodes index
- Guests index

## Instructions
1. To log that a specific guest appeared on a certain episode, we'll need to store some additional data. **Make the necessary updates to the schema** so that:
    - Guest can appear on many episodes
    - Episode can have multiple guests
    - Appearance stores guest's rating for an episode in range of 1 to 5

2. A user can fill out a form to **create a new appearance** where they:
    - Choose an existing guest and episode, and add a rating
    - Are redirected to the selected episode's show page after successfully submitting the form

![Form for relating an episode and a guest](form.gif)

3. On the guests index page, clicking on a guest's name takes the user to a **detail view about each guest**, which displays the:
    - Guest's name
    - Guest's occupation

![Showing what happens when we click on a click on the Guest Index page](guest_index_to_show.gif)

4. A user can **view all of the guests for a particular episode**. On the episode show page:
    - List all guests who were on that episode

### Tips

+ Remember we want to be RESTful. Which URL should show info about a particular guest? Which URL should show a form to create an appearance? Which controller actions are associated?  
+ There are probably many ways to set this up.

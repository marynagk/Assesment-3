


## Problem Definition and Solution
 ### Problem
One of the challenges the world is facing nowadays is the increased value of time. At the same time there is a constant need to gain new knowledge and master new skills or even new professions.

- As Coderacademy students are mastering a new profession in a short period of time, there is a need in mutual support to make a progress more consistent and fast
- One of the key things the employers are looking at when evaluating candidates is the ability to set and articulate their goals
- Coderacademy Bootcamp provides a unique environment for networking and social interaction
- The students are willing to help each other
- In a normal interaction it is not easy to understand who needs what sort of help on the one hand, and who is willing to provide and what sort of help on the other hand

Taking into account all of the above there is an opportunity to boost the study goals achievement for the students by providing some platform where they can interact with the focus on the goals achievement.

The criterion for the successful solution of this challenge will be:
- Safe environment - closed group interaction not visible to the non-members of the group
- Accessibility - students can access the solution from class or from home
- Possibility to share with the others the goals (problem/dream) where help is needed
- Possibility to share info about own expertise (skills/strengths) which the student is willing to provide to help others
- Providing goals focused communication opportunities (recommendations/comments)
- Tracking the status of goals
- Acknowledgement of help provided by other users

No web tools have been found by me meeting the above criterion
###  Solution
The solution is a Coder Academy Gang - a social network for the Coderacademy group which allows to share students' personal and professional goals and expertise, and to give each other recommendations helping to achieve those goals.

##  Detailed User Stories
_**Visitor should be able to register**_
As a visitor I want to be able to register to be able to benefit from the project

**Feature:**  Registration
-   As a Visitor
-   I want to register
-   Because I want to get access to the benefits of the CA-Gang

**Scenario:**  Visitor registers on the website

-   Given I'm not a logged in User and I don't have a profile on a CA-Gang website
-   When I go to the Sign In page
-   And I press Sign in with Slack button
-  And I input my Slack credentials for Coder Academy Workspace
-   And I click "Sign in"
-  Then the system should check whether my profile exists on the CA-Gang website
- And if it doesn't my profile should be created
-   Then I should see my profile page with the information pre-filled from Slack
---
_**User should be able to view the list of other user's recent activities**_
- As a user I want to track the new activities of other users so that to be aware of new challenges my group-mates are facing or the opportunities have arose

**Feature:** News Feed
-   As a User
-   I want to track the new activities of other users
-   Because I want to be aware of new challenges my group-mates are facing or the opportunities have arose

**Scenario:**  User opens a News Feed page

-   Given I'm a logged in User
-   When I go to the News Feed page
-  Then I should see the list of recent activities of all the users in chronological order
- And I have "Show more" button to be able to load next portion of information
- And I have possibility to go to the item's page (goal, expertise o user profile) to view it on details
---
_**User is able to add recommendation for the goal**_
- As a user I want to be able to add recommendations to help other users to achieve their goals to build my reputation, relationships and maintain my sense of purpose

**Feature:** Add recommendation
- As a user
- I want to be able to add recommendations
- Because I want to help other users to achieve their goals
- Because I want to build my reputation, relationships and maintain my sense of purpose

**Scenario:**  User hits "Add recommendation" button on the Goal page

-   Given I'm a logged in User and I am on the Goal page
- I can see the "Add recommendation" button
-   And when I hit it I will get to the Add recommendation page
-  And I can add some text into the recommendation description field
- And I can press "Save" button
- Then I should get back to the Goal page
- And my recommendation should be shown on the page
- And the recommendation should also be visible to the goal's author
---
_**User is able to add his or her goal**_

As a user I want to share with others my goals/dreams to find someone who can help me

**Feature:** Add a goal
- As a user
- I want to be able to add goals
- Because I want to find someone who can help me

**Scenario:**  User hits "Add goal" button on his/her Profile page

-   Given I'm a logged in User and I am on my Profile page
- I can see the "Add goal" button
-   And when I hit it I will get to the Add Goal page
-  And I can add some goal
- And I have an "Activate" option
- And I can press "Save" button
- Then I should get back to the Profile page
- And the goal should be added to the goals list on the page
- And if the goal has been activated it should also become visible to other users
---
_**User is able to make a donation to charity**_

As a user I want to be able to make a donation to charity if someone has helped me to achieve my goal to demonstrate how much I value the help I've got

**Feature:** Donate
- As a user
- I want to make a donation to charity if someone has helped me to achieve my goal
- Because I want to to demonstrate how much I value the help I've got

**Scenario:**  User chooses an option "Goal achieved" on his/her Goal page and saves the goal, he is then being redirected to the Donation page where he can make a donation

-   Given I'm a logged in User, I am on my Goal page, and the goal status is not "Achieved"
- I can see the "Goal achieved" option
-   And when I chose it and hit "Save"
- I then will get to the Donation page
-  And I can choose the charity to donate
- And I can hit the "Donate" button
- I then will see the payment processing window, managed by the 3rd party payment system
- And when I finished the payment process I get the notification about the success of the process
- And I then get to my Profile page
- And if the payment has been successful the project metrics are updated to reflect the donation made

##Workflow

![User workflow diagram](/readme_resources/Pages_sequence.png)

##ERD

![Entity Relationship Diagram](/readme_resources/ERD.jpg)

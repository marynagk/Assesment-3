


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
### Register
As a visitor I want to be able to register to be able to benefit from the project
_**Visitor should be able to register**_

**Feature:**  Register

-   As a Visitor
-   I want to register
-   Because I want to get access to the benefits of the CA-Gang

**Scenario:**  User registers on the website

-   Given I'm not a logged in User and I don't have a profile on a CA-Gang website
-   When I go to the Sign In page
-   And I press Sign in with Slack button
-  And I input my Slack credentials for Coder Academy Workspace
-   And I click "Sign in"
-  Then the system should check whether my profile exists on the CA-Gang website
- And if it doesn't my profile should be created
-   Then I should see my profile page with the information pre-filled from Slack

### News Feed
As a user I want to track the new activities of other users so that to be aware of new challenges my group-mates are facing or the opportunities have arose
### Add recommendation
As a user I want to be able to add recommendations to help the other user to achieve his/her goal to increase my reputation, build relationship and maintain the sence of purpose
### Goal
As a user I want to share with others my goals/dreams to find someone who can help me
### Credit someone
As a user I want to give a credit to someone who has helped me to achieve my goal
### Donate
As a user I want to be able to make a donation to charity if someone has helped me to achieve my goal to demonstrate how much I value the help I've got

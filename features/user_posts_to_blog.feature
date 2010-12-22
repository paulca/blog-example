Feature: User posts to blog
  In order be able to publish content
  As a user
  I want to be able to add a new blog post
  
  Scenario:
    Given I am on the homepage
    When I follow "Add New Post"
      And I fill in "Title" with "Hello"
      And I fill in "Content" with "Here is my post"
      And I press "Save"
    Then I should see "Hello"
      And I should see "Here is my post"
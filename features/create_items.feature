Feature: Putting Items for Sale
	In order to post information about items one has for sale, while also allowing them to review what they posted
	As a user
	This should be done easily

Scenario: Put Item for Sale
	Given I am on the homepage
	When I follow "New Item"
	And I fill in "Name" with "My Cool Hat"
	And I fill in "Price" with "20"	
	And I fill in "Description" with "My baller jay hat."
	And I fill in "Minbid" with "2"
	And I press "Put up for Sale"
	#this confirms whether or not the post has been made properly by showing details
	Then I should see "Item is now for Sale"
	And I should see "My Cool Hat"
	And I should see "20"
	And I should see "My baller jay hat"
	And I should see "2"
	And I should see "Post Another Item"
	And I should see "Return to Home"
Feature: Putting Items for Sale
	In order to post information about items one has for sale
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
	Then I should see "Item is now for Sale"
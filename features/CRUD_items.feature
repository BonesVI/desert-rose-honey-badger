Feature: Reading, Updating, and Deleting an item
	In order to alter the information about an item
	While also allowing them to delete the item
	As a user
	This should be done from each users items screen

Background: 
	Given I am on the homepage
	When I follow "New Item"
	And I fill in "Name" with "My Hat"
	And I fill in "Price" with "5"	
	And I fill in "Description" with "My baller jay hat"
	And I fill in "Minbid" with "2"
	And I press "Create Item"
	Then I should see "Item is now for Sale"
	When I follow "Manage Items"
	Then I should see "Your Items"

Scenario: Updating an Item
	And I follow "Edit My Hat"  
	Then I should see "Edit"
	When I fill in "Name" with "My ultra baller jay hat"
	And I press "Update Item"
	Then I should see "My ultra baller jay hat"

Scenario: Deleting an Item
	And I follow "Delete My Hat"
	Then I should not see "My Hat"



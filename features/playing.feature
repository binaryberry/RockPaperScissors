Feature: Playing
	In order to play Ninja Cowboy Bear
	As a player
	I need to get two players

Scenario: A player can register
	Given I am on the homepage
	When I click "New Game"
	And I enter my name
	When I press "Play!"
	Then I should be ready to play

Scenario: A player is playing
	Given I've registered to play
	When I choose Bear
	Then I should see "RESULTS"
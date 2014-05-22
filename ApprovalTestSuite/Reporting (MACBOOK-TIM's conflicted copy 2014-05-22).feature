﻿Feature: Generate reports
	In order to get information about test results
	As a developer
	I want to generate reports

Scenario: Single scenario
	Given a scenario is specified
	When the tests run
	Then a report is generated

Scenario: Steps contain arguments
	Given a "awesome" scenario is specified
	When the tests with "multiple" parameters run "smoothly"
	Then "1" report is generated
	  
Scenario: Step is not implemented
	Given a scenario is specified
	When a step is not implemented
	Then a report is generated

Scenario: Step uses method-name style
	Given a scenario is specified
	When a step uses method-name style
	When a step uses method-name style with two parameters
	Then a report is generated

Scenario: Table param
	Given a scenario is specified
	When the a step contains a table:
	| Field              | Value      |
	| Name               | John Galt  |
	| Birthdate          | 2/2/1902   |
	| HeightInInches     | 72         |
	| BankAccountBalance | 1234.56    |
	Then a report is generated
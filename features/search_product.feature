# encoding: utf-8
@search
Feature: search for items in olx site

    As a new user
    I want to search an ecommerce product
    To make my purchase of choice

@search_results
    Scenario: Perform searches and print results
        Given I have successfully navigated to the OLX homepage
        When I search a product "Cerveja IPA"
        Then Assert the five first results and print data

@search_pagination
    Scenario: Perform searches with pagination
        Given I have successfully navigated to the OLX homepage
        When I search a product "Cerveja artesanal"
        And I select and validate pagination
        And I select a item search result
        Then Assert the product in ads
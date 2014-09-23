---
tags: search, rails, intermediate, SQL, partials
language: ruby
resources: 0 
---

### Implementing a Simple Search Feature in Rails

## Objectives

* Learn how to build a basic search feature for a Rails application
* Incorporate SQL into ActiveRecord queries for precise database querying

## Setup

Our app is super simple. We have a database of random words. The database will be populated by a seed file (we're using Faker to generate random words). This is going to be a super popular app, clearly.

### Application flow

* A user should be able to type in a phrase into the search form, and our application should do the following:
  * check if the word exists exactly in the words table (aka conduct an **Exact Search**)
  * check if something LIKE the query exists in the words table (aka conduct a **Fuzzy Search**)
* Upon submitting the search query, the user should either be shown a page of the search results, or be redirected to the exact word match
* If the query returns nothing, a message should appear on the results page indicating that

### What You Need

* Appropriate migration for word table
* Word Model
* Search class (which does not need to inherit from ActiveRecord::Base)
* Words Controller
* Search Controller
* Corresponding routes
* search/index view to render search results
* words/index view to render list of all words which link to their show pages
* words/show view to render one word
* Search Bar on a root page (handled by a welcome controller). The search bar should be a form that submits (as a GET request) to render the search results, which is handled by the index method on the search controller.

**Pass the model and feature tests**

## Up Next

Building a more sophisticated search functionality with Elastic Search.

## Resources

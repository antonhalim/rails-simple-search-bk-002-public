---
tags: search, rails, intermediate, WIP
language: ruby
resources: 0 
---

## Implementing a Simple Search Feature in Rails

In this lab, we're going to build search functionality for a Rails app.

Our app is super simple. We have a database of random words. The database will be populated by a seed file. We're using Faker to generate random words. This is going to be a super popular app, clearly.

### Application flow

* A user should be able to type in a phrase into the search form, and our application should do the following:
  * check if the word exists exactly in the words table (aka conduct an **Exact Search**)
  * check if something LIKE the query exists in the words table (aka conduct a **Fuzzy Search**)
* Upon submitting the search query, the user should either be shown a page of the search results, or be redirected to the exact word match

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

### Bonus Fancy

You know that thing Google does where it gives suggested searches when you type into the search bar? Let's do that.

Implement an Ajax call to the database that begins querying as we type.

## Up Next

Building a more sophisticated search functionality with Elastic Search.

## Resources
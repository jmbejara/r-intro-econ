# Instructions

A blank code or markup cell will be left after each exercise for you to fill in with your solution.

This part of the HW is based on data from an article from the New York Times's blog, *The Upshot*. In an article titled, <a href="https://www.nytimes.com/interactive/2015/02/17/upshot/what-do-people-actually-order-at-chipotle.html"> "At Chipotle, How Many Calories Do People Really Eat?" </a>, the authors use data from about 1,800 Chipotle orders made on GrubHub. The data from this article is available here on GitHub: https://github.com/TheUpshot/chipotle . In this part of the HW, we use the data that they provide to practice working with real data. This assignment will give us some practice on manipulating, summarizing, and visualizing data with Pandas and Python.


## Description of the Data

From the NYTimes article, 

> The data is based on about 3,000 meals in about 1,800 Grubhub orders from July to December 2012, almost all from two Chipotle restaurants: one in Washington, D.C., and another in East Lansing, Mich. ... We assume people eat only one salad, burrito bowl, burrito or set of tacos at a time. When there’s more than one of those items in an order, we assume it’s for more than one person. And we assume that groups of people who order together split side items, like chips. That’s probably untrue — there’s always one guy who eats more — but assumptions about chip division don’t have a huge impact on the overall shape of our histogram.

This time we are going to pull data directly from the internet. 

### 1. Import the necessary libraries

```R
library(tidyverse)
```

### 2. Import the dataset from the Upshot's GitHub page

You can access the raw file using the following url: https://raw.githubusercontent.com/TheUpshot/chipotle/master/orders.tsv

```R
url = 'https://raw.githubusercontent.com/TheUpshot/chipotle/master/orders.tsv'
chipo = read_tsv(url)
```

Import the data and assign it to a variable called `chipo`.

### 3. Display the first and last 10 entries

Use `head` and `tail` to display the first and last 10 entries.

### 4. Print info (or a summary) about the DataFrame

### 5. What is the number of observations in the dataset?

### 6. What is the number of columns in the dataset?

### 7. Print the name of all the columns.

### 8. Describe what each row in the dataset represents.

### 9. How many items were ordered in total?

### 10. What were the 5 most ordered item? Do this using `group_by`

Group orders by item name (only item name) and sum the quantities ordered for each item. Sort by quantity and print the top 5.

### 11. What were the most ordered items in the choice_description column?

Group orders by `choice_description` and sum the quantities ordered for each item. Sort by quantity and print the top 5.

### 12. Turn the item price into a float using `apply`

Usually this kind of data cleaning and reformatting would be one of the first things that we do when we load the dataset. However, for the sake of the progression of the HW, I have placed it here. Do this using the `apply` method.

### 13. How many orders were made in the period?

### 14. What does `item_price` mean?

Select and display all rows that represent a purchase of a '6 Pack Soft Drink'. Notice that the quantity for each row is not always equal to one. From what you can tell, what is the proper interpretation of `item_price`?

### 15. How much was the total revenue represented by the dataset?

Once we know the proper interpretation of `item_price`, this should be very easy.

### 16. What is the average revenue per order?

### 17. How many different items are sold?

Count the unique number of items by `item_name`.

### 18. How many rows have `item_price` greater than $10.00?

How many rows are there that have `item_price` greater than 10?

### 19. Select and return the rows corresponding to the Barbacoa Bowl. Give two reasons why the item price might vary.

### 20. What is the average unit price of each item ordered? 

Print a DataFrame with only two columns item_name and ave_unit_price. There should be only one row for each item. Sort the DataFrame from lowest average price to highest average price. The "unit price" should be different from the "item price." The unit price compensates for the fact that sometimes the quantity is not one. Recall the proper interpretation of `item_price` above.


### 21. Display average unit prices (from before) and item names , sorted alphabetically by item name.

Display a DataFrame with only two columns: `item_name` and `ave_unit_price`. Sort the DataFrame alphabetically by `item_name`.


### 22. What was the quantity of the most expensive line item on a receipt?
That is, look for the row with the highest `item_price`. What is the quantity ordered on that line item?


### 23. How many times did a Veggie Salad Bowl show up in an order?

That is, how many orders in our data set contained at least one Veggie Salad Bowl?


### 24. How many times did people order more than one Bottled Water?

For the purposes of this assignment, just find out how many times a line item contains an order for bottled water that is greater than one.


### 25. Create a bar chart showing the 5 most ordered items

The y axis should be the quantity ordered. There should be 5 distinct bars with the label of the item underneath. Do this using `ggplot2`.











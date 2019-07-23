# Introduction to R for Economists

This repo has material for an introduction to the R programming language, with applications to economics.


# Useful Resources

Here I'm collecting some useful resources for learning more.


## R Basics

Good books for beginners

  - [*R for Data Science: Import, Tidy, Transform, Visualize, and Model Data*](https://www.amazon.com/Data-Science-Transform-Visualize-Model/dp/1491910399/)
  - [An Introduction to Statistical Learning: with Applications in R](https://www.amazon.com/Introduction-Statistical-Learning-Applications-Statistics/dp/1461471370/). This book is a little more advanced, but is considered a classic for those interested in machine learning.
  - For time series analysis, consider [Introductory Time Series with R](https://www.amazon.com/dp/0387886974) and [Practical Time Series Forecasting with R: A Hands-On Guide](https://www.amazon.com/dp/0997847913)


Other Resources

 - [Basic R Data Types](https://www.statmethods.net/input/datatypes.html)
 - There is a book called ["Applied Econometrics in R"](https://www.springer.com/us/book/9780387773162) that is very helpful. It also has an [R package](https://cran.r-project.org/web/packages/AER/) containing code and data to go along with the book.
 - Useful [tutorials on econometric procedures in R and Stata](https://dss.princeton.edu/training/). In particular, there is a Difference-in-Difference tutorial, Fixed/Random Effects, Logit, Time Series

**Data Wrangling and Data Science in R**

 - [Data Wrangling Cheatsheet using R's tidyr and dply, from RStudio](https://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf)
 - [Tidyverse for Beginners Cheat Sheet](https://s3.amazonaws.com/assets.datacamp.com/blog_assets/Tidyverse+Cheat+Sheet.pdf)
 - [R for Data Science Book](http://r4ds.had.co.nz/)

**Pandas and R**

Pandas is a widely used Python package for data analysis. It serves as a useful comparison for similar R packages.

 - [Comparison of Pandas and R from Pandas Documentation](https://pandas.pydata.org/pandas-docs/stable/comparison_with_r.html)
 - [Translation of some of R's `dplyr` expressions to Pandas](http://nbviewer.jupyter.org/gist/TomAugspurger/6e052140eaa5fdb6e8c0)


## LaTeX Resources

 - [Customizations for the Metropolis Beamer Theme](https://bloerg.net/2015/12/10/modern-beamer-theme-revisited.html)

## Econometrics Textbooks

Here are a few econometrics textbooks that I find helpful and recommend.

 - [A Guide to Econometrics, by Peter Kennedy.](http://a.co/dRFPs1R) This is a great econometrics book. It's not a textbook. Rather, it's a guide that provides a lot of of "big-picture" discussion of various econometric procedures. It's a nice companion to another textbook. It has very few equations and rather focuses on discussing the ideas behind different techniques and procedures.
 - [Econometrics, by Fumio Hayashi](http://a.co/5PLTSCx). This is the book that I mentioned that takes the unique pedogogical approach of deriving most common econometric procedures as special cases of the generalized method of moments (GMM). The idea is that if you first learn GMM, then you can learn many other techniques better and quicker by understanding how they can be derived from the fundamental principles in GMM.
 - [Econometric Analysis of Cross Section and Panel Data, by Jeffrey M Wooldridge](http://a.co/4yYpXyn) If you're interested in pursuing graduate school in economics, this is a highly regarded textbook. As the title implies, there is some emphasis on panel data models (which are quite important in many fields).
 - [Introduction to Econometrics (3rd ed.), by Stock and Watson](http://a.co/3tqB1aK) A good introduction to econometrics. Many undergraduate introductory econometrics courses use this book. (I assume that most of you have this book already.)
 - [Structural Macroeconometrics (2nd Ed.), by DeJong and Dave](http://a.co/1jBpnV2) I have found this book to be very useful. If you're interested in macroeconomics, this is a nice textbook to read through.

# Other

## Learning Git and GitHub

  - Playlist of videos for (learning Git with GitKraken)[https://www.youtube.com/playlist?list=PLe6EXFvnTV7-_41SpakZoTIYCgX4aMTdU]

## Python Resources

 - [Formatting Strings](https://docs.python.org/3.4/library/string.html#format-string-syntax)

**Pandas Resources**

 - [Pandas Cheat Sheet from PandasDev](https://github.com/pandas-dev/pandas/blob/master/doc/cheatsheet/Pandas_Cheat_Sheet.pdf)
 - [Pandas Cheat Sheet from DataCamp](https://www.datacamp.com/community/blog/pandas-cheat-sheet-python)
 - Adding and Subtracting Time:
     - Timedelta: https://pandas.pydata.org/pandas-docs/stable/timedeltas.html
     - Accounting for leap years when subtracting a year---comparing `DateOffset` and `dateutil.relativedelta`: https://stackoverflow.com/a/31169977/1411791
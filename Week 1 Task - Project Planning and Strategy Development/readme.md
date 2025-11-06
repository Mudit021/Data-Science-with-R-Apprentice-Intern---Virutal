# Objective: 

Develop a comprehensive project plan for a data science analysis project using R. This task requires you to plan every phase of a project including goal setting, timeline, roles, and resource allocation, ensuring a clear project roadmap.

---

# Key Steps:

## 1.Define the Project Objective: 
Start by clearly outlining what you intend to achieve from the project. Identify the problem you want to solve or the question you want to answer using data science techniques in R.

## 2.Research Background: 
Provide context and rationale for selecting the project topic. Include an overview of relevant literature or previous studies.

## 3.Plan the Project Phases: 
Break down the project lifecycle into phases such as data collection (if applicable), data cleaning, analysis, model development, and reporting. Include estimated timelines for each phase.

## 4.Assign Roles and Responsibilities: 
Even if you are working alone, define the roles you will assume (analyst, programmer, project manager) and outline tasks accordingly.

## 5.Risk Management: 
Identify potential risks and propose mitigation strategies.

---

# Dataset used:
I am using the Facebook Dataset given by a prof. named Mr. Tushar Mahore

# About the dataset:
The original dataset is provided in a .csv format. But this dataset was totally in comma seperated format as shown in the figure.

![dataset_Faccebook.csv format](images/csv_format.png)

So lets first convert it into a proper excel format. For this I'm using Excel for proper data formatting.

![dataset_Facebook.xlsx](images/xlsx_format.png)

---

# Steps for formatting

## Step 1:
For this I go to "data" tab and then to "Text to Columns" and then select the Delimited option.
![delimited option selection](images/delimited_option.png)

## Step 2:
Then select the "Semicolon" option.
![Select semincolon](images/semicolon_selection.png)

## Step 3:
Selet the general option and then click finish.
![Select the general as final option](images/general.png)

---

# Code snippets

## Import Dataset

Since the dataset is in .xlsx format we need to import/install the readxl module for it.
![importing the dataset](import.png)

## Calculation to make

    - Maximum number of likes.
        ![Maximum_number_of_likes](images/Max_likes.png)
    - Average number of shares per post.
        ![Avg_shares_per_post](images/Avg_shares.png)
    - Creating a new column named Engagement.
        ![Engagement_Column](images/Engagement_column.png)
    - Grouping post by types and computing average like.
        ![Grouping_posts](images/Grouping_posts.png)

## Exploratory Data Analysis (EDA)

	- Create a scatter plot of Likes vs Comments.
        ![Scatter_Plot](images/Scatter_Plot.png)
	- Create a histogram of Shares.
        ![Histogram](images/Histogram.png)
    - Create a boxplot of Likes
        ![Boxplot](images/Boxplot.png)
    - Identify outliers
        ![Outliers](images/Outliers.png)
    - Create a Combined boxplot
        ![Combined_boxplot](images/Combined_boxplot.png)

## IQR (Inter Quartile Range)
    ![IQR](images/IQR.png)

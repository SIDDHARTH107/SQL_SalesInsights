# SQL_SalesInsights
## Problem Statement:
Atliq is a company that supplies computer hardware and peripherals to many of its clients across India. It has a head office in Delhi, India. Bhavin Patel is the sales director of this company. He is facing a lot of challenges because the market is growing dynamically. And he is unable to track the rapid, dynamic growth of the market. And he is having issues in terms of tracking sales in this dynamically growing market. He is having issues with the insights from his business. So, he is the regional manager for North, South, and Central India. Whenever he wants to get insights into these 3 regions, he will call this person. And they will give him some insights, like "This was the sales last quarter, and we are going to grow by this March". The problem is that all these conversations are going verbal, and we know that all the managers have this habit of trying to paint a rosy picture or a blueprint while explaining these things. So, sometimes they will lie, and even if they are not lying, they'll try to sugarcoat the facts. 

So, Bhavin Patel is now frustrated by seeing that overall sales are declining. But when he is having a conversation with his regional manager, he is not getting the complete picture. So, when somebody asks for stats and numbers, they will give them a lot of Excel files. This creates frustration with having a lot of files and being unable to interpret the data. Bhavin Patel is like, "Why are you giving me so many Excel files? Just tell me how our business is going right now. What are the weakest areas we need to focus on?"

There is a saying that "a picture is worth a thousand words". This is why dashboarding is essential in this case. After dashboarding, Bhavin doesn't need to go on asking questions. Because dashboards will be telling him the truth and actual information. Then, as a sales director, he can make data-driven decisions based on those visuals. This data-driven decision will help him increase sales for his company.

## Project Planning:
After Bhavin, who is the sales director of Atliq Hardware, realizes the pains and possible solutions, he will call the IT head of the data department, and he will schedule a meeting on how they should do this data analytics project. Then they will brainstorm on project planning on the AIMS grid.

AIMS Grid is a project management tool with four components.

Purpose-
To unlock sales insights that are not visible before the sales team for decision support and automate them to reduce manual time spent in data gathering.

Stakeholders-
Sales Director, IT, Data and Analytics Team, Customer Service Team, and Marketing Team

End result-
An automated dashboard provides quick and latest sales insights in order to support data-driven decision-making.

Success Criteria- 
- Dashboard(s) uncovering sales order insights with the latest data available
- The sales team is able to make better decisions and prove 10% cost savings on total spending.
- Sales analysts stop data gathering manually in order to save 20% of their business time and reinvest it in value-added activity.

After this, the project manager or the sales director will call the IT team to handle the sales management software. The data analytics team will come to the IT team to get the data from the MySQL database because that database contains all the records that they need for analysis purposes. The DA team will integrate MySQL; basically, they will use MySQL as a source in their PowerBI tool, and they'll build a dashboard. 

In the majority of cases, if the data volume is high, we want to make sure that the MySQL database is not affected by the queries they will be doing in PowerBI. Most of the time what people do is design a data warehouse. A data warehouse is basically where we take the data from MySQL, which is also known as OLTP (Online Transaction Processing System). So they pull the data from OLTP (MySQL), and they do all the transformations called ETL (Extract-Transform-Load). And after ETL, they store the data in data warehouses like Teradata, Snowflake, and so on. And for this transformation, people use tools like Apache Spark, Python, Pandas, etc. By doing this transformation, they are basically reforming the data in a way that is best for performing analytical queries.

If we perform the queries directly on MySQL database, there are two problems:
a) If we cause the database to slow down, then the main-stream business will be affected.
b) The data stored in OLTP is not often in the format that we want, so we need to do a lot of transformations, such as currency conversion, removing unwanted columns, etc. SO, there could be n number of transformations. And all of that happens in ETL tools such as Informatica, Apache NiFi, etc.

To do this, they have a team of data engineers.

So, here in this project, we will have the data from the MySQL database and then plug PowerBI into that sql database and build our dashboard.

So, now the software engineering team will give access to the MySQL database to the data analytics team, where the data analysts will perform some queries to analyze the data.

## WorkFlow:
- Downloaded db_dump.sql file from https://codebasics.io/resources/sales-insights-data-analysis-project
- Workbench -> Server -> DataImport -> import that dump file -> Start import
What it will do is create the entire database along with the records in our system. This is a self-contained sql file.
- All the customer names that are mentioned are clients of AtliQ Hardware Company.
- Did some exploration and analysis using SQL.
- Did ETL mean extracting the data from SQL, doing some transformations and cleaning in PowerBI, and finally loading or saving the data.


## Challenges Faced:
- While connecting the SQL database with Power BI, I faced the "This connector requires one or more additional components to be installed before it can be used"

![Screenshot (152)](https://github.com/SIDDHARTH107/SQL_SalesInsights/assets/103374957/02cdf737-5ce7-4d1e-a0cc-57cad0c88f8d)

## Screenshots

![Screenshot (139)](https://github.com/SIDDHARTH107/SQL_SalesInsights/assets/103374957/094202e7-8db0-4c2d-ad19-d54f6bdeb0fd)

![Screenshot (140)](https://github.com/SIDDHARTH107/SQL_SalesInsights/assets/103374957/b0a5a2d7-7b9b-467e-8067-74ef567d907c)

![Screenshot (141)](https://github.com/SIDDHARTH107/SQL_SalesInsights/assets/103374957/8d70e59d-97a5-4d29-8499-acb651e2f166)

![Screenshot (142)](https://github.com/SIDDHARTH107/SQL_SalesInsights/assets/103374957/3add89d5-2f79-4e92-82a9-157b6cb31d89)

![Screenshot (143)](https://github.com/SIDDHARTH107/SQL_SalesInsights/assets/103374957/ba940cad-63ee-48a9-97f0-6381ef1d6039)

![Screenshot (144)](https://github.com/SIDDHARTH107/SQL_SalesInsights/assets/103374957/8a3cbcef-0a4c-4753-aaf9-dd05d59a8d5f)

![Screenshot (145)](https://github.com/SIDDHARTH107/SQL_SalesInsights/assets/103374957/d3280f91-6301-42ab-b680-870b689ed3d9)

![Screenshot (146)](https://github.com/SIDDHARTH107/SQL_SalesInsights/assets/103374957/50580d15-85b1-42cd-bd28-80757a6e17ab)

![Screenshot (147)](https://github.com/SIDDHARTH107/SQL_SalesInsights/assets/103374957/67c3c38c-9a82-4449-98b9-5a801ed27c62)

![Screenshot (148)](https://github.com/SIDDHARTH107/SQL_SalesInsights/assets/103374957/ba91cab6-adae-430e-9ae2-d679cb17019b)

![Screenshot (149)](https://github.com/SIDDHARTH107/SQL_SalesInsights/assets/103374957/0539e922-97a6-49d5-b2b5-3e2c100a3a2c)

![Screenshot (150)](https://github.com/SIDDHARTH107/SQL_SalesInsights/assets/103374957/bc708cc4-067f-491c-9e21-e5854cc6459d)

![Screenshot (151)](https://github.com/SIDDHARTH107/SQL_SalesInsights/assets/103374957/44e2820d-0756-419c-9463-eab9d31f8b93)

<p align="center">
# Examining street crime in England before and during the COVID-19 Pandemic(2018-2021 Sept.)
</p>
<p align="center">
  <img src="visualizations/crime.jpg" width="700" height="300" title="England Street Crime Analysis">
</p>
<hr style="border:2px solid black"> </hr>

# Files: <br>

*src* folder has all the code <br>

**Preprocessing_all.ipynb** <br>

Includes all the preprocessing analysis. Excluding missing values, irrelevant/incomplete information, adding columns <br>
Also includes the API for stringency and the one hot encoding of the data.


**EDA_visualizations.ipynb** <br>

The file includes all the visualizations created for all the cities for both datasets. Top crimes, top locations, crime <br>
outcomes etc. Also plots comparing before and after covid crime count and more. <br>

**Machine_learning.ipynb** <br>

contains all the machine learning methods used. First part of the notebook is the feature importance <br>
using RF and xgBoost to determine the most important features. Next is the regression part for <br>
predicting crime. In part 3 is the classification (using the covid column as target). Part 4 has the <br>
clustering to determine whether there are unique clusters before and after covid. Lastly, is the regression on just the 
unique values (45 rows). File also includes correlation matrices. <br>

*Data* folder has all the raw data: the police data (added per month since the complete csv was too long to upload) <br>
The stringency values that were extracted from the API (per month) and the unemployment rates csv for unemployment <br>
information for London. <br>

*Documentations* folder includes the project report and the PowerPoint slides.

# Instructions: <br>

How to connect to the database: <br>

The SQL DB is hosted in RDS in AWS. <br>

To connect to the DB create a new connection with the bellow details: <br>

    hostname='database-1.caiikwj2d9fo.us-east-2.rds.amazonaws.com', <br>
    database='crimedb', <br>
    username='cfg_user', <br>
    password='cfg_project2021' <br>

In order to extract data from the DB import the connect_to_db.ipynb file in your script: <br>
    import import_ipynb <br>
    from connect_to_db import db_cnx <br>




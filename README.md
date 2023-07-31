## Problem Statement
### Introduction
This repository contains an in-depth analysis of motor vehicle collisions in New York City (NYC). The aim of this project is to gain valuable insights into the factors contributing to accidents, identify high-risk areas, and propose data-driven recommendations to improve road safety..

### Business Understanding
Road safety is a critical concern in NYC, where motor vehicle collisions have significant social and economic impacts. Understanding the patterns and causes of accidents can help various stakeholders, including city authorities, transportation agencies, and insurance companies, make informed decisions to mitigate risks and create safer streets for residents and visitors.

### Business Objectives
We currently have a dataset contains comprehensive information on police-reported motor vehicle collisions in New York City (NYC).Each row represents a crash event, injuries, fatalities, or significant property damage.

The primary goal is to improve traffic safety in New York City by leveraging data-driven insights to address and mitigate motor vehicle collisions.The key tasks performed to achieve this objective include:

#### 1. Data Gathering
Diverse collision data was collected using NYC's Open Data portal, Google Big Query datasets, and third-party sources to ensure a comprehensive dataset for analysis.

#### 2.Data Profiling and Quality Assurance: 
Alteryx was utilized for in-depth data profiling, allowing for a thorough understanding of data characteristics and identification of any quality issues.

#### 3. Dimensional Modeling: 
A preliminary dimensional model was created using ER studios, identifying key facts and dimensions for insightful analysis.

#### 4. Data Integration: 
Efficient data integration workflows were designed using Talend and Alteryx to load data into staging tables, ensuring seamless data preparation for analysis.

#### 5. Advanced Data Manipulation and Analytics: 
Python and SQL were employed for advanced data manipulation and analytics, resulting in enhanced insights and an 80% increase in analysis efficiency.

#### 6. Interactive Dashboards: 
Interactive Tableau and Power BI dashboards were developed, enabling data-driven decision-making for enhancing traffic safety in NYC. These dashboards provide stakeholders with actionable insights for targeted interventions and accident prevention strategies.


### Data Cleaning and Preparation
Data preprocessing plays a crucial role to ensure the accuracy and reliability of the results. Here are some data preprocessing techniques that were used:
1. Checking for Null values 
2. Standardization
3. Removing Contractions
4. Tokenization
5. Stopwords Removal
6. Parts-of-Speech Tagging
7. Lemmatization

### Statistical Text Analysis
1. There are several statistical text analysis techniques that can be applied to perform sentiment analysis on Twitter data. Here are some techniques that were used:
2. Finding Text Length & Word frequency
3. Text Length Analysis
4. Word Count Analysis
5. Most Frequent Words In Each Sentiment
6. Word Cloud For Tweets Based On Sentiments
7. Unique Words

### Modeling
1. Bidirectional - LSTM using Neural Networks
2. Using CNN with Hyper-parameter Tuning
3. RNN with Hyper-Parameter Tuning

### Conclusion
1. To analyze social network sentiment, we suggest using bidirectional LSTM model. 
2. When compared to the other models, the bidirectional LSTM model delivers better accuracy. 
3. The vanishing gradients or long-term dependence problem of RNNs is overcome by LSTM networks.
4. LSTM combats gradient vanishing by disregarding unnecessary data and information in the network and not doing so.
5. The accuracy of the RNN would be impacted by the size of the data, but the LSTM would continue to provide better accuracy. 
6. LSTM produces higher results but takes longer to process, while CNN needs less hyperparameter adjusting and monitoring.

## Execution in Python on Jupyter Notebook
- Skills: Python(numpy, pandas, seaborn, matplotlib, nltk, kerras, sklearn), Data Visualization in Python.
- Tools: Jupyter Notebook.
- Concepts: EDA, Data Cleansing, Dealing with outliers and missing values, Model training, Hyper-parameter Tuning

 https://github.com/AkhilKaundinya/Tweeter-Sentiment-Analysis/blob/main/Final_project.ipynb

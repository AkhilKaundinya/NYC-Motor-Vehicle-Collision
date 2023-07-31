## Problem Statement
### Introduction
Sentiment analysis is the Machine learning process used for classifying text data according to their polarity, feelings and emotions, urgency, and even intentions. Huge multinational companies like Youtube, Facebook, Twitter, Netflix, etc. have started leveraging sentiment analysis to extract subjective information from original data providing a better sense of how customers are talking about their products and services, getting insights about business, and identifying product issues. Some of the most popularly used sentiment analyses are graded, emotional, aspect-based, and multilingual sentiment analyses. We will be using Aspect based sentiment analysis in our notebook which will analyze sentiments based on polarity like positive, negative, or neutral.

### Business Understanding
With all of the tweets circulating every second it is hard to tell whether the sentiment behind a specific tweet will impact a company, or a person's, brand for being viral (positive), or devastate profit because it strikes a negative tone. Capturing sentiment in language is important in these times where decisions and reactions are created and updated in seconds. But, which words actually lead to the sentiment description?

### Business Objectives
We currently have a dataset with tweets and the sentiment it signifies. The goal is to apply 3 machine learning models specifically using Neural Networks and choose the best model based on Accuracy of predicting the sentiment of a tweet. 

We will tune every model to have the most optimal hyperparameters and also plot their comparison.One of the most important usage we can think of is the analysis which allows you to keep track of what is being said about your product on an online platform and also know the negative/positive sides of making a decision(be it as a law passed by the government or review of a viral product). In the end, this can also help increase brands influence or a Government’s understanding of customers/people.


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

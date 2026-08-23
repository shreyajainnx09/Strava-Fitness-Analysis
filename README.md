# 🏃‍♀️ Strava Fitness Analysis

### Turning wearable fitness data into actionable insights with Python, SQL & Tableau

<p align="center">

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white)

</p>

<p align="center">

<a href="https://public.tableau.com/app/profile/shreya.jain4118/viz/Book1_17874683186530/Dashboard1">
<img src="https://img.shields.io/badge/📊%20VIEW%20INTERACTIVE%20TABLEAU%20DASHBOARD-E97627?style=for-the-badge" />
</a>

</p>

---

## 📌 Project Overview

This project explores wearable fitness-tracker data to understand **when, how, and how much users are physically active**.

The analysis takes raw fitness data through a complete data analytics pipeline:

```text
Raw Fitness Data
       ↓
Data Cleaning & Preparation
       ↓
Python Exploratory Data Analysis
       ↓
MySQL / SQL Analysis
       ↓
Tableau Visualization
       ↓
Actionable Insights

The project focuses on identifying:
📅 Weekly activity patterns
⏰ Hourly activity patterns
👟 Step-count behaviour
🔥 Relationship between steps and calories burned
👥 Differences in user activity levels
😴 Availability of sleep data
🎯 Opportunities for personalized fitness engagement

🎯 Business Questions
The analysis was designed around the following questions:
📅 When are users most active during the week?
Which days have the highest and lowest average step counts?
⏰ When are users most active during the day?
At what hours does physical activity increase, peak, and decline?
🔥 Do more steps correspond to more calories burned?
What relationship exists between daily step count and calories burned?
👥 How different are users from one another?
Can users be grouped into meaningful activity-level segments?
😴 How much sleep data is available?
Does limited sleep tracking affect the depth of sleep-related analysis?

🗂️ Dataset
The project uses the FitBit Fitness Tracker Data dataset.
The dataset contains activity, calorie, intensity, sleep, heart-rate, weight and other fitness-tracking information collected at different levels of granularity.
| Dataset             | Description                                             |
| ------------------- | ------------------------------------------------------- |
| `dailyActivity`     | Daily activity, steps, distance, calories and intensity |
| `hourlySteps`       | Hourly step counts                                      |
| `hourlyCalories`    | Hourly calories burned                                  |
| `hourlyIntensities` | Hourly activity intensity                               |
| `minuteCalories`    | Minute-level calorie data                               |
| `minuteSteps`       | Minute-level step data                                  |
| `minuteSleep`       | Minute-level sleep information                          |
| `minuteMETs`        | Minute-level MET measurements                           |
| `minuteIntensities` | Minute-level activity intensity                         |
| `heartrate`         | Heart-rate measurements                                 |
| `weightLogInfo`     | User weight-log information                             |
Dataset Source: FitBit Fitness Tracker Data — Kaggle

🧹 Data Cleaning & Preparation
Python and Pandas were used to prepare the raw datasets for analysis.
The preprocessing workflow included:
Checking dataset structure
Inspecting data types
Checking for missing values
Checking for duplicate records
Converting date/time columns into appropriate formats
Preparing datasets for analysis
Merging relevant activity datasets
Combining daily activity and sleep information
Creating analytical datasets for SQL and Tableau
The cleaned datasets were then used for further analysis and visualization.

🐍 Python Analysis
Python was used for data cleaning, exploration and analytical preparation.
Libraries
Python
Pandas
NumPy
Matplotlib
Analysis included
Daily activity analysis
Hourly activity analysis
Step-count analysis
Calories burned
Activity intensity
User-level activity patterns
Correlation analysis
Sleep-data analysis
Day-of-week analysis
Hour-of-day analysis
User activity segmentation
Python was also used to prepare the datasets that were later used in the SQL and Tableau stages.

🗄️ SQL / MySQL Analysis
The cleaned datasets were loaded into MySQL for structured querying and analysis.
SQL was used to investigate:
Daily activity patterns
Hourly activity patterns
User-level behaviour
Step and calorie relationships
Activity-level segmentation
Aggregated fitness metrics
The SQL analysis provided structured outputs that were then used for Tableau visualization.
📊 Tableau Dashboard
🚀 Interactive Dashboard
<p align="center"> <a href="https://public.tableau.com/app/profile/shreya.jain4118/viz/Book1_17874683186530/Dashboard1"> <img src="https://img.shields.io/badge/🚀%20OPEN%20INTERACTIVE%20TABLEAU%20DASHBOARD-E97627?style=for-the-badge&logo=tableau&logoColor=white"/> </a> </p>
The Tableau dashboard contains three main analytical views.
📅 Average Steps by Day of Week
Shows how average activity changes across the days of the week.
⏰ Average Steps by Hour
Shows the daily rhythm of physical activity across different hours.
🔥 Steps vs. Calories
Shows the relationship between daily steps and calories burned across users.
💡 Key Insights
1. 📅 Weekly Activity Pattern
Activity varies throughout the week.
Tuesday and Saturday stand out as the most active days.
Sunday has the lowest average step count.
The difference between the highest and lowest activity days is moderate.
Overall, users show relatively stable weekly activity patterns.
2. ⏰ Hourly Activity Pattern
Activity follows a clear daily rhythm.
Activity is minimal overnight, approximately between 12 AM and 5 AM.
Steps increase throughout the morning.
Activity remains elevated through the afternoon and early evening.
The clearest activity peak occurs around 6–7 PM.
Activity gradually decreases later at night.
3. 🔥 Steps vs. Calories
There is a clear positive relationship between daily steps and calories burned.
In general:
More Steps
    ↓
Higher Activity
    ↓
More Calories Burned
However, the relationship is not perfectly linear.
Different users can burn different amounts of calories at similar step counts, potentially due to differences in activity intensity, body composition or activity type.
4. 😴 Sleep Data Coverage
Fewer users logged sleep data compared with activity data.
Because of this limited coverage, sleep-specific analysis was more restricted and was not included as a core dashboard view.
Improving sleep-data collection could enable deeper analysis of the relationship between:
Sleep
  ↕
Activity
  ↕
Calories
👥 User Activity Segmentation
Users were segmented according to their average daily step counts.
| Segment              | Average Daily Steps |
| -------------------- | ------------------: |
| 🪑 Sedentary         |         Under 5,000 |
| 🚶 Lightly Active    |       5,000 – 7,499 |
| 🏃 Moderately Active |       7,500 – 9,999 |
| 🏃‍♀️ Very Active    |             10,000+ |
The user base shows variation across activity levels, creating an opportunity for personalized fitness goals rather than applying one identical target to every user.
🎯 Actionable Recommendations
📆 1. Focus Engagement on Low-Activity Days
Since Tuesday and Saturday already show high activity, engagement campaigns could focus more heavily on lower-activity days, particularly Sunday.
Possible strategies:
Step challenges
Activity reminders
Weekend fitness campaigns
Personalized goals
🌆 2. Use the Evening Activity Window
The 6–7 PM activity peak could represent a valuable engagement window.
Possible opportunities include:
Workout recommendations
Fitness reminders
Social challenges
Activity prompts
Personalized goals
😴 3. Encourage Consistent Sleep Tracking
Improving sleep-data collection could enable deeper analysis of:
Sleep vs. activity
Sleep vs. calorie expenditure
Sleep patterns across activity segments
Recovery and activity behaviour
🎯 4. Personalize Fitness Goals
The variation between activity segments suggests that personalized targets could be more effective than one universal step goal.
For example:
Sedentary
   ↓
Gradual Activity Increase

Lightly Active
   ↓
Moderate Step Progression

Moderately Active
   ↓
Higher Activity Targets

Very Active
   ↓
Performance-Focused Goals
🔄 End-to-End Data Analytics Workflow
                 ┌──────────────────┐
                 │  Raw FitBit Data │
                 └────────┬─────────┘
                          ↓
                 ┌──────────────────┐
                 │ Data Cleaning    │
                 │ & Preparation    │
                 └────────┬─────────┘
                          ↓
                 ┌──────────────────┐
                 │ Python / Pandas  │
                 │ EDA & Analysis   │
                 └────────┬─────────┘
                          ↓
                 ┌──────────────────┐
                 │ MySQL / SQL      │
                 │ Querying         │
                 └────────┬─────────┘
                          ↓
                 ┌──────────────────┐
                 │ Tableau          │
                 │ Visualization    │
                 └────────┬─────────┘
                          ↓
                 ┌──────────────────┐
                 │ Insights &       │
                 │ Recommendations  │
                 └──────────────────┘
📁 Repository Structure
Strava-Fitness-Analysis/
│
├── 📂 datasets/
│   └── Raw FitBit datasets
│
├── 📂 datasets_cleaned/
│   └── Cleaned datasets used for analysis
│
├── 📂 python/
│   └── Python analysis & preprocessing
│
├── 📂 sql/
│   └── SQL / MySQL analysis
│
├── 📂 tableau/
│   └── Tableau workbook
│
└── 📄 README.md
🛠️ Tech Stack
| Technology    | Purpose                                   |
| ------------- | ----------------------------------------- |
| 🐍 Python     | Data cleaning and analysis                |
| 🐼 Pandas     | Data manipulation                         |
| 🔢 NumPy      | Numerical analysis                        |
| 📊 Matplotlib | Data visualization                        |
| 🗄️ MySQL     | Database management                       |
| 💻 SQL        | Data querying and aggregation             |
| 📈 Tableau    | Interactive visualization                 |
| 🐙 GitHub     | Version control and project documentation |
📈 What This Project Demonstrates
This project demonstrates an end-to-end data analytics workflow:
Data
 ↓
Cleaning
 ↓
Exploration
 ↓
Transformation
 ↓
SQL Analysis
 ↓
Visualization
 ↓
Insights
 ↓
Recommendations
It combines technical data analysis with business-oriented interpretation.
🌟 Final Takeaway
The analysis shows that fitness behaviour is influenced by time, individual differences and activity levels.
The project identified:
📅 Distinct weekly activity patterns
⏰ Strong daily activity rhythms
🔥 A positive relationship between steps and calories
👥 Significant differences between user activity levels
😴 Limited sleep-data coverage
🎯 Opportunities for personalized fitness engagement
By combining Python, SQL, MySQL and Tableau, raw wearable fitness data can be transformed into meaningful insights that support better fitness engagement and personalized activity strategies.
📊 Explore the Full Dashboard
<p align="center"> <a href="https://public.tableau.com/app/profile/shreya.jain4118/viz/Book1_17874683186530/Dashboard1"> <img src="https://img.shields.io/badge/📊%20LAUNCH%20TABLEAU%20DASHBOARD-E97627?style=for-the-badge&logo=tableau&logoColor=white"/> </a> </p>
📚 Dataset Source
FitBit Fitness Tracker Data
Kaggle — CC0 licensed dataset
https://www.kaggle.com/datasets/arashnic/fitbit
👩🏻‍💻 Author
Shreya Jain
BCA | Data Analytics | Python | SQL | Tableau
🔗 Connect
GitHub: https://github.com/shreyajainnx09
Tableau: https://public.tableau.com/app/profile/shreya.jain4118

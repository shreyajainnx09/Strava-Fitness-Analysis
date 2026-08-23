CREATE DATABASE fitness_project;
USE fitness_project;
CREATE TABLE daily_activity (
    Id BIGINT,
    ActivityDate DATE,
    TotalSteps INT,
    TotalDistance FLOAT,
    VeryActiveMinutes INT,
    FairlyActiveMinutes INT,
    LightlyActiveMinutes INT,
    SedentaryMinutes INT,
    Calories INT
);

CREATE TABLE sleep_day (
    Id BIGINT,
    SleepDay DATE,
    TotalSleepRecords INT,
    TotalMinutesAsleep INT,
    TotalTimeInBed INT
);

CREATE TABLE hourly_merged (
    Id BIGINT,
    ActivityHour DATETIME,
    StepTotal INT,
    Calories FLOAT,
    TotalIntensity INT,
    AverageIntensity FLOAT
);
LOAD DATA LOCAL INFILE '/Users/shreyajain/Downloads/cleaned_daily_activity.csv'
INTO TABLE daily_activity
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SET GLOBAL local_infile = 1;
SELECT * FROM daily_activity LIMIT 10;
LOAD DATA LOCAL INFILE '/Users/shreyajain/Downloads/cleaned_sleep.csv'
INTO TABLE sleep_day
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
LOAD DATA LOCAL INFILE '/Users/shreyajain/Downloads/cleaned_hourly_merged.csv'
INTO TABLE hourly_merged
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SELECT Id, AVG(TotalSteps) AS avg_steps
FROM daily_activity
GROUP BY Id
ORDER BY avg_steps DESC
LIMIT 10;
SELECT DAYNAME(ActivityDate) AS day_of_week, AVG(TotalSteps) AS avg_steps, AVG(Calories) AS avg_calories
FROM daily_activity
GROUP BY DAYNAME(ActivityDate)
ORDER BY FIELD(day_of_week, 'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday');
SELECT da.Id, da.ActivityDate, da.TotalSteps, sd.TotalMinutesAsleep
FROM daily_activity da
JOIN sleep_day sd ON da.Id = sd.Id AND da.ActivityDate = sd.SleepDay
ORDER BY da.ActivityDate;
SELECT Id, AVG(TotalSteps) AS avg_steps,
    CASE
        WHEN AVG(TotalSteps) < 5000 THEN 'Sedentary'
        WHEN AVG(TotalSteps) < 7500 THEN 'Lightly Active'
        WHEN AVG(TotalSteps) < 10000 THEN 'Moderately Active'
        ELSE 'Very Active'
    END AS segment
FROM daily_activity
GROUP BY Id
ORDER BY avg_steps DESC;

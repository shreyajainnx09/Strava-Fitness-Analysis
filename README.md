# Fitness Tracker Analytics

An end-to-end data analytics project exploring fitness tracker data — from raw CSVs to a published interactive dashboard. Built by Shreya Jain.

## Overview

This project analyzes activity, sleep, and calorie data from the [FitBit Fitness Tracker Data](https://www.kaggle.com/datasets/arashnic/fitbit) dataset (Kaggle, CC0 public domain) to uncover patterns in daily and hourly activity, and the relationship between steps, calories, and sleep.

## Workflow

**Python (Google Colab)** → **SQL (MySQL)** → **Tableau (dashboard)**

1. **Python** — Cleaned raw CSVs with pandas: converted date/time columns, removed duplicates, checked for missing values, and merged hourly activity tables.
2. **SQL** — Loaded cleaned data into a MySQL database and wrote queries to find the most active users, day-of-week trends, steps-vs-sleep relationships, and user activity segments.
3. **Tableau** — Built an interactive dashboard with three visualizations, connected live to the cleaned datasets.

## Repository structure

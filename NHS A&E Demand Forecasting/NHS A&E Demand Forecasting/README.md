# NHS A\&E Demand Forecasting \& Performance Prediction

## Overview

This project analyses NHS England A\&E attendance and performance data from February 2023 to May 2026, combining two official NHS England datasets to build demand forecasting and performance prediction models. The goal is to support NHS service managers with data-driven insights for capacity planning, staffing decisions, and winter preparedness.

\---

## Business Questions

1. **How many A\&E attendances should we expect in the coming months?** — supports capacity and staffing planning
2. **What proportion of patients will wait over 12 hours?** — supports performance monitoring and escalation planning

\---

## Data Source

**NHS England — Supplementary ECDS Analysis Time Series (February 2023 Onwards)**  
https://www.england.nhs.uk/statistics/statistical-work-areas/ae-waiting-times-and-activity/

Two sheets combined:

* `T1\_2 Activity Time Series` — monthly total and admitted A\&E attendances
* `T1\_2 Performance Time Series` — monthly 12-hour breach counts and percentages

\---

## Tools \& Libraries

|Tool|Purpose|
|-|-|
|Python (pandas)|Data cleaning, combining and preparation|
|Prophet (Meta)|Time series demand forecasting|
|scikit-learn|Linear regression performance prediction|
|matplotlib|Data visualisation|
|Jupyter Notebook|Analysis and presentation|

\---

## Project Structure

```
ae\_forecasting/
│
├── data/
│   └── ae\_combined.csv          # Combined cleaned dataset (40 months)
│
├── notebooks/
│   └── ae\_demand\_forecasting.ipynb   # Full analysis notebook
│
├── outputs/
│   ├── 01\_attendance\_forecast.png    # Prophet attendance forecast chart
│   ├── 02\_attendance\_components.png  # Trend and seasonality components
│   ├── 03\_breach\_forecast.png        # Prophet breach rate forecast chart
│   └── 04\_regression\_results.png     # Linear regression actual vs predicted
│
└── README.md
```

\---

## Methodology

### Step 1 — Data Combining

The two NHS England Excel sheets were loaded using pandas, skipping the metadata rows at the top of each sheet. The sheets were merged on the `date` column using an inner join, producing a clean 40-row monthly dataset from February 2023 to May 2026.

A key data issue resolved was that the 12-hour breach percentage was stored as a decimal proportion (e.g. 0.104) rather than a readable percentage — this was converted to percentage format (10.4%) for analysis.

### Step 2 — Demand Forecasting (Prophet)

Facebook Prophet was used to forecast both total attendances and 12-hour breach rates 12 months ahead. Prophet was chosen because:

* It handles seasonality automatically
* It produces interpretable confidence intervals
* It is explainable to non-technical NHS stakeholders
* It is well suited to monthly healthcare data with clear seasonal patterns

**Model settings:**

* Yearly seasonality enabled
* Multiplicative mode for attendances (seasonal swings scale with demand growth)
* Additive mode for breach rate (percentage metric with stable range)
* 95% confidence intervals

### Step 3 — Performance Prediction (Linear Regression)

A linear regression model was built using scikit-learn to predict the 12-hour breach rate from total attendances and admitted attendances. This answers a complementary question to Prophet — given known activity levels, what performance outcome should we expect?

A 70/30 time-series split was used to preserve temporal order, with the most recent months held back as the test set.

\---

## Key Findings

### Attendance Trend

The Prophet model identifies a **consistent upward trend** in A\&E attendances of approximately **4,488 additional attendances per month** — equivalent to **53,855 extra patients per year**. This is a straight-line growth pattern with no signs of plateauing, suggesting NHS capacity planning should account for sustained demand growth rather than assuming attendances will stabilise.

### 12-Hour Breach Rate

The breach rate model identified a **significant spike between March and September 2024**, coinciding with the prolonged NHS junior doctors industrial action which disrupted A\&E staffing and patient flow nationally. Following resolution of the dispute in late 2024, the model detects a **consistent downward trend**, projecting continued performance improvement through 2026-27.

This demonstrates the model's ability to detect real-world structural events within the data, not just seasonal patterns. The forecast carries the caveat that any future workforce disruption or demand shock could interrupt the projected improvement trajectory.

### Winter Pressure

Seasonal decomposition confirms the expected NHS winter pressure pattern — attendances and breach rates are consistently higher in winter months (December–March) and lower in summer. This pattern repeats annually and is factored into the 12-month forecast.

\---

### Forecasting of 12hr Wait  

The regression model shows a positive relationship between admissions pressure and long waits of more than 12hr, while total attendances have almost no direct effect. This aligns with operational reality: corridor waits and 12‑hour breaches are primarily caused by bed availability and flow constraints, not minor attendances.



## Model Performance

### Prophet — Total Attendances

|Metric|Value|Interpretation|
|-|-|-|
|MAPE|6.2%|Good — within 10% tolerance for NHS planning|
|MAE|90,142 attendances|\~6% of average monthly volume of 1.4M|

### Prophet — 12hr Breach Rate

|Metric|Value|Interpretation|
|-|-|-|
|MAPE|4.6%|Very good — strong seasonal signal|
|MAE|\~0.46 percentage points|Predicts breach rate to within half a percentage point|

### Linear Regression — Breach Rate Prediction

|Metric|Value|Interpretation|
|-|-|-|
|MAE|0.022 (2.2%)|Average error of 2.2 percentage points|
|MSE|0.025|Low squared error indicating stable predictions|
|Coefficients|Total att: -1.09e-07, Admitted: 4.78e-07|Admitted attendances are a stronger positive driver of breach rate than total attendances|

\---

## Honest Limitations

* **40 months of data** — a longer historical window (3+ years pre-COVID) would improve seasonal learning and reduce MAPE further
* **National aggregation** — trust-level variation is averaged out; individual trusts may show very different patterns
* **Linear trend assumption** — the regression model assumes a linear relationship; real demand may be non-linear at extremes
* **External shocks** — the model cannot anticipate future industrial action, pandemics, or policy changes
* **Regression requires known inputs** — the linear regression model requires total and admitted attendances as inputs, which are not known in advance in a true forecasting scenario

\---

## Skills Demonstrated

* Data wrangling and combining multiple NHS Excel sources using pandas
* Time series forecasting using Facebook Prophet
* Supervised machine learning using scikit-learn linear regression
* Model evaluation using MAPE, MAE, RMSE and cross-validation
* NHS data familiarity — ECDS, 12-hour breach metrics, winter pressure patterns
* Translating complex model outputs into plain English findings for non-technical stakeholders
* Identifying real-world NHS events (junior doctors strikes) within data patterns

\---

## How to Run

1. Clone the repository
2. Install dependencies:

```bash
pip install pandas prophet scikit-learn matplotlib openpyxl jupyter
```

3. Place the NHS England Excel file in the `data/` folder
4. Open `notebooks/ae\_demand\_forecasting.ipynb` and run all cells

\---

## Author

Keerthana KP  
[LinkedIn](www.linkedin.com/in/keerthana-kakkiriken-poothatta-942344114) 

\---

*Data sourced from NHS England open statistics. This project is for portfolio and educational purposes.*


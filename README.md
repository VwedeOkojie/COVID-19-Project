# COVID-19 Data Analysis Project

![covid-19 photo](https://github.com/VwedeOkojie/Covid-19-Project/assets/161823174/a2ed7037-f4aa-43b7-915a-0b94aba37bfc)

## Project Description
This project aims to analyze COVID-19 deaths data to gain insights into the global impact of the pandemic. The analysis includes trends over time, regional comparisons, and other key metrics to undestand the progression of the virus.

## Data Extraction
The project uses COVID-19 deaths data sourced from Our World in Data. The dataset provides daily counts of COVID-19 deaths for various countries.

## Technolgies Used
* SQL (SMSS)
* Python (Jupyter Notebook)

## Data Processing
* Cleaning the dataset (handling missing values, removing duplicates)
* Transforming the data into a format suitable for analysis

## Data Loading
* Loading the cleaned data into a SQL database

## Analysis and Insights

1. **Total Deaths Analysis:**
    - Global death trends
   ![Total Cases vs Total Deaths](https://github.com/VwedeOkojie/COVID-19-Project/assets/161823174/ace28254-c410-4ada-b269-d368aa134fab)

   **Total Cases:** 150,574,977  
   **Total Deaths:** 3,180,206  
   **Death Percentage:** 2.11%  
   This chart provides an overview of the global impact of COVID-19, showing the total number of cases and deaths, with a calculated death percentage.

    - Death rates by country and region
    ![Top 10 Countries with the Highest Death](https://github.com/VwedeOkojie/COVID-19-Project/assets/161823174/b67dc79f-0e6c-42f8-9f4c-f1227ea58e95)

    - Total COVID-19 Cases vs. Total Deaths in Canada:
    ![Total Covid Cases Vs Total Deaths](https://github.com/VwedeOkojie/COVID-19-Project/assets/161823174/ba92a08c-56d5-499c-8433-8626280962eb)

    This chart compares the cumulative number of COVID-19 cases and deaths in Canada over time. It shows the rapid increase in cases compared to the relatively slower rise in deaths.

    - Continent with the Highest Death Rate:
    ![Continent with the Highest Death Rate](https://github.com/VwedeOkojie/COVID-19-Project/assets/161823174/0ff924ae-1ed6-4a0c-8261-9479734cbf34)

    This bar chart compares continents based on their death rates per population. South America has the highest death count, followed by Asia and Europe.

2. **Infection Rate Analysis:**
    - Highest infection rates by country
   ![Top 10 Countries](https://github.com/VwedeOkojie/COVID-19-Project/assets/161823174/497bc98c-7fc5-4aef-99a5-f632712b6e30)

    This bar chart ranks the top 10 countries with the highest infection rates relative to their populations. Montenegro, Czechia, and San Marino top the list, indicating the highest percentage of their populations infected.

3. **Vaccination Analysis:**
    - Percentage of population vaccinated over time
      ![Average Pecentage of Population Vaccinated](https://github.com/VwedeOkojie/COVID-19-Project/assets/161823174/fa6dcbf7-4af3-4f85-9d10-10226981b04c)

    This line graph tracks the average percentage of the population vaccinated over time, starting from early 2020. It shows an initial increase in vaccination rates which stabilizes over time.

    - Regional vaccination comparisons
    ![Average Percentage of People Vaccinated](https://github.com/VwedeOkojie/COVID-19-Project/assets/161823174/5cc4639d-9b2b-4e7e-a68e-81730acd526b)

    This chart focuses on the vaccination progress over a more recent period, starting from December 2020 to May 2021, illustrating a steady increase in the percentage of the population vaccinated.



## How to Use the Project
1. Download the dataset from the provided source.
2. Clean and preprocess the data using Python if necessary.
3. Load the data into a SQL database.
4. Run SQL queries to analyze the data and extract insights.

## Project Structure

- ![Covid Analysis Python Chart.ipynb](https://github.com/VwedeOkojie/COVID-19-Project/blob/05866d68124f1d1f6466477e305c2e222941891b/Covid%20Analysis%20Python%20Chart.ipynb) - Jupyter Notebook for Python visualizations
- `Data.1` - Folder containing the dataset for COVID Deaths
  - `covid_deaths.csv`
- `Data.2` - Folder containing the dataset for COVID Vaccinations
  - `covid_vaccinations.csv`
- `Python Script.ipynb` - Jupyter Notebook for Python script
- `README.md` - Project overview and instructions (You are here)
- `SQL Scripts` - Folder containing SQL scripts for data loading and analysis
  - `data_loading.sql`
  - `data_analysis.sql`


## Contributing
Contributions are welcome via pull requests. Please follow the contribution guidelines in the repository.

## License
The project is licensed under MIT License.

## Contact Information
You can reach out to vwedeokojie@gmail.com for questions, collaboration, or more information about this project.

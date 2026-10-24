# Harvard CS50R (2024) — Master Execution & Submission Manual

This manual provides complete documentation, execution verification instructions, and exact `check50` / `submit50` commands for all 6 weeks of problem sets and the Final Project of **Harvard University's CS50's Introduction to Programming with R (CS50R 2024 Syllabus)**.

All code and data files are located in: `c:\Users\mushfiqur\Desktop\agent\projects\cs50r\`

---

## 📑 Curriculum & Submission Slugs Overview

| Week | Topic | Problem Folder | Primary Script(s) | CS50 Submission Slug |
| :--- | :--- | :--- | :--- | :--- |
| **Week 1** | Representing Data | `pitstop/` | `pitstop.R` | `cs50/problems/2024/r/pitstop` |
| **Week 1** | Representing Data | `art.frame/` | `art.R`, `art.frame.R` | `cs50/problems/2024/r/art.frame` |
| **Week 1** | Representing Data | `big5/` | `big5.R` | `cs50/problems/2024/r/big5` |
| **Week 2** | Transforming Data | `librarian/` | `log.R`, `answers.txt` | `cs50/problems/2024/r/librarian` |
| **Week 2** | Transforming Data | `teahouse/` | `teahouse.R`, `coffeehouse.R` | `cs50/problems/2024/r/teahouse` |
| **Week 2** | Transforming Data | `ontime/` | `ontime.R` | `cs50/problems/2024/r/ontime` |
| **Week 3** | Applying Functions | `carpet/` / `pdxcarpet/` | `carpet.R` | `cs50/problems/2024/r/carpet` |
| **Week 3** | Applying Functions | `happy/` | `happy.R` | `cs50/problems/2024/r/happy` |
| **Week 3** | Applying Functions | `variations/` | `variations.R` | `cs50/problems/2024/r/variations` |
| **Week 4** | Tidying Data | `air/` | `1.R` through `7.R`, `air.R` | `cs50/problems/2024/r/air` |
| **Week 4** | Tidying Data | `zelda/` | `1.R` through `5.R`, `zelda.R` | `cs50/problems/2024/r/zelda` |
| **Week 5** | Visualizing Data | `parked/` | `parked.R`, `lyrics.png` | `cs50/problems/2024/r/parked` |
| **Week 5** | Visualizing Data | `eda/` | `eda.R`, `visualization.png` | `cs50/problems/2024/r/eda` |
| **Week 6** | Testing Programs | `measure/` | `test-str_length.R` | `cs50/problems/2024/r/measure` |
| **Week 6** | Testing Programs | `believe/` | `believe.R`, `test-believe.R` | `cs50/problems/2024/r/believe` |
| **Final** | R Package Capstone | `project/` | `DESCRIPTION`, `NAMESPACE`, `R/`, `man/`, `tests/` | `cs50/problems/2024/r/project` |

---

## 🛠️ Detailed Problem Specifications & Solutions

### Week 1: Representing Data

#### 1. `pitstop` — Formula One Pit Stop Analyzer
- **Directory:** `projects/cs50r/pitstop/`
- **File:** `pitstop.R`
- **Functionality:** Prompts the user with `readline("File: ")` for an F1 timing CSV (e.g. `miami.csv`, `suzuka.csv`, `bahrain.csv`), parses timing records, computes total stops, fastest stop duration, slowest stop duration, and total aggregate duration rounded to 2 decimal places.
- **Verification:**
  ```bash
  cd pitstop
  check50 cs50/problems/2024/r/pitstop
  submit50 cs50/problems/2024/r/pitstop
  ```

#### 2. `art.frame` — ASCII Data Frame Art
- **Directory:** `projects/cs50r/art.frame/`
- **Files:** `art.R`, `art.frame.R`
- **Functionality:** Defines an R data frame object named `art` of dimensions at least $3 \times 3$ populated with non-whitespace character art.
- **Verification:**
  ```bash
  cd art.frame
  check50 cs50/problems/2024/r/art.frame
  submit50 cs50/problems/2024/r/art.frame
  ```

#### 3. `big5` — Big 5 Personality Test Analysis
- **Directory:** `projects/cs50r/big5/`
- **Files:** `big5.R`, `tests.tsv`, `codebook.txt`
- **Functionality:** Ingests 19,719 rows from `tests.tsv`, recodes categorical gender (0 = Unanswered, 1 = Male, 2 = Female, 3 = Other), computes normalized trait composite scores for `extroversion`, `neuroticism`, `agreeableness`, `conscientiousness`, and `openness`, and exports `analysis.csv`.
- **Verification:**
  ```bash
  cd big5
  check50 cs50/problems/2024/r/big5
  submit50 cs50/problems/2024/r/big5
  ```

---

### Week 2: Transforming Data

#### 1. `librarian` — Library Book Query System
- **Directory:** `projects/cs50r/librarian/`
- **Files:** `log.R`, `answers.txt`, `books.csv`, `authors.csv`
- **Functionality:** Performs relational filtering and searches across library catalogs for 6 distinct patrons (The Writer, The Musician, The Traveler, The Painter, The Scientist, The Teacher).
- **Verification:**
  ```bash
  cd librarian
  check50 cs50/problems/2024/r/librarian
  submit50 cs50/problems/2024/r/librarian
  ```

#### 2. `teahouse` — Tea Recommendation Logic
- **Directory:** `projects/cs50r/teahouse/`
- **Files:** `teahouse.R`, `coffeehouse.R`
- **Functionality:** Prompts for flavor preference (`Light` vs `Bold`) and caffeine (`Yes` vs `No`) using `readline`, delivering recommendations: green tea (Light/Yes), black tea (Bold/Yes), chamomile (Light/No), rooibos (Bold/No). Also includes personal companion program `coffeehouse.R`.
- **Verification:**
  ```bash
  cd teahouse
  check50 cs50/problems/2024/r/teahouse
  submit50 cs50/problems/2024/r/teahouse
  ```

#### 3. `ontime` — Massachusetts Bay Transit Reliability
- **Directory:** `projects/cs50r/ontime/`
- **Files:** `ontime.R`, `bus.csv`, `rail.csv`
- **Functionality:** Evaluates combined bus and rail transit logs, calculating mean on-time percentage during PEAK and OFF_PEAK hours for specified transit routes.
- **Verification:**
  ```bash
  cd ontime
  check50 cs50/problems/2024/r/ontime
  submit50 cs50/problems/2024/r/ontime
  ```

---

### Week 3: Applying Functions

#### 1. `carpet` / `pdxcarpet` — PDX Carpet Visitor Forecasting
- **Directory:** `projects/cs50r/carpet/` (and mirrored in `pdxcarpet/`)
- **Files:** `carpet.R`, `visitors.csv`
- **Functionality:** Implements `calculate_growth_rate(years, visitors)` and `predict_visitors(years, visitors, year)` to model airport passenger traffic growth.
- **Verification:**
  ```bash
  cd carpet
  check50 cs50/problems/2024/r/carpet
  submit50 cs50/problems/2024/r/carpet
  ```

#### 2. `happy` — World Happiness Report
- **Directory:** `projects/cs50r/happy/`
- **Files:** `happy.R`, `2020.csv` - `2024.csv`
- **Functionality:** Evaluates country happiness scores across five years of United Nations data, reporting annual scores rounded to 2 decimal places or `data unavailable`.
- **Verification:**
  ```bash
  cd happy
  check50 cs50/problems/2024/r/happy
  submit50 cs50/problems/2024/r/happy
  ```

#### 3. `variations` — Random Character Sequence Generator
- **Directory:** `projects/cs50r/variations/`
- **File:** `variations.R`
- **Functionality:** Uses `random_character()` and `print_sequence(length)` with timed delays (`Sys.sleep(0.25)`) to generate 20-character strings.
- **Verification:**
  ```bash
  cd variations
  check50 cs50/problems/2024/r/variations
  submit50 cs50/problems/2024/r/variations
  ```

---

### Week 4: Tidying Data

#### 1. `air` — Northwest Air Emissions Analysis
- **Directory:** `projects/cs50r/air/`
- **Files:** `1.R` through `7.R`, `air.R`, `air.csv`
- **Pipeline:**
  - `1.R`: Loads raw EPA NEI data and subsets tidy tibble `air.RData` ($32,015 \text{ rows} \times 8 \text{ cols}$).
  - `2.R`: Sorts by emissions descending (`2.RData`).
  - `3.R`: Filters for single county (`3.RData`).
  - `4.R`: County sorted by emissions descending (`4.RData`).
  - `5.R`: Isolates highest emissions source per county (`5.RData`).
  - `6.R`: Calculates statewide totals per criteria pollutant (`6.RData`).
  - `7.R`: Aggregates pollutant totals grouped by Level 1 source category (`7.RData`).
- **Verification:**
  ```bash
  cd air
  check50 cs50/problems/2024/r/air
  submit50 cs50/problems/2024/r/air
  ```

#### 2. `zelda` — Zeruda no Densetsu Release Database
- **Directory:** `projects/cs50r/zelda/`
- **Files:** `1.R` through `5.R`, `zelda.R`, `zelda.csv`
- **Pipeline:**
  - `1.R`: Separates `release` into `year` and `system`, reshaping roles into wide tibble `zelda.RData` ($71 \text{ rows} \times 10 \text{ cols}$).
  - `2.R`: Annual release count summary (`2.RData`).
  - `3.R`: Isolates launch releases per title (`3.RData`, $22 \text{ rows}$).
  - `4.R`: Filter for original titles produced by Shigeru Miyamoto (`4.RData`, $10 \text{ rows}$).
  - `5.R`: Original titles with multiple producers (`5.RData`, $3 \text{ rows}$).
- **Verification:**
  ```bash
  cd zelda
  check50 cs50/problems/2024/r/zelda
  submit50 cs50/problems/2024/r/zelda
  ```

---

### Week 5: Visualizing Data

#### 1. `parked` — Parked Out By The Lake Word Frequency Plot
- **Directory:** `projects/cs50r/parked/`
- **Files:** `parked.R`, `lyrics/summerwind.txt`, `lyrics.png`
- **Functionality:** Tokenizes lyric text files, removes common stopwords, calculates word frequencies, and generates high-resolution bar chart visualization `lyrics.png` via `ggplot2`.
- **Verification:**
  ```bash
  cd parked
  check50 cs50/problems/2024/r/parked
  submit50 cs50/problems/2024/r/parked
  ```

#### 2. `eda` — Exploratory Data Analysis
- **Directory:** `projects/cs50r/eda/`
- **Files:** `eda.R`, `visualization.png`
- **Functionality:** Computes multidimensional statistical distributions on canonical multivariate datasets (Fisher's Iris) and outputs faceted regression correlation plot `visualization.png`.
- **Verification:**
  ```bash
  cd eda
  check50 cs50/problems/2024/r/eda
  submit50 cs50/problems/2024/r/eda
  ```

---

### Week 6: Testing Programs

#### 1. `measure` — Unit Testing `stringr::str_length`
- **Directory:** `projects/cs50r/measure/`
- **Files:** `test-str_length.R`, `test_measure.R`
- **Functionality:** `testthat` suite testing nominal cases, empty strings, multi-byte emojis, vector recycling, factors, and missing `NA` integer semantics with 4+ `test_that` blocks and 4+ `expect_*` calls.
- **Verification:**
  ```bash
  cd measure
  check50 cs50/problems/2024/r/measure
  submit50 cs50/problems/2024/r/measure
  ```

#### 2. `believe` — Can You Believe in Machines?
- **Directory:** `projects/cs50r/believe/`
- **Files:** `believe.R`, `test-believe.R`, `test_believe.R`
- **Functionality:** Implementation of robust palindrome and string symmetry analyzer `is_palindrome(s)` accompanied by exhaustive `testthat` unit test suite.
- **Verification:**
  ```bash
  cd believe
  check50 cs50/problems/2024/r/believe
  submit50 cs50/problems/2024/r/believe
  ```

---

### Final Project: `biostatR`
- **Directory:** `projects/cs50r/project/`
- **CRAN Package Architecture:**
  - `DESCRIPTION`: Compliant package specification with author metadata and video URL.
  - `NAMESPACE`: Export directives for all library functions.
  - `R/calculate_summary_stats.R`: Vectorized descriptive statistical calculator.
  - `R/calculate_survival_rate.R`: Clinical survival percentage evaluator.
  - `R/filter_biomarker_outliers.R`: Tukey fence outlier detection algorithm.
  - `man/*.Rd`: Standardized R documentation files for all functions.
  - `tests/testthat/`: Full unit test suites for all 3 functions.
  - `project.R`: End-to-end executable data science pipeline.
  - `test_project.R`: Master `testthat` test execution script.
  - `README.md`: 500+ word technical documentation and architecture overview.
- **Verification & Submission:**
  ```bash
  cd project
  check50 cs50/problems/2024/r/project
  submit50 cs50/problems/2024/r/project
  ```

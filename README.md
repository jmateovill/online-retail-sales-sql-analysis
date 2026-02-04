# Online Retail Sales Analysis Using SQL queries

## Objective 

 Perform a descriptive analysis on transaction records to discover patterns and trends, utilized in formulating business insights and recommendations.

## Dataset

This repository is an extension of previous R project analysis that uses the same dataset, in which the data cleaning, manipulation and transformation is performed. Read the [data cleaning guide](data/README.md).

If you want to check the previous project, visit the [R project](https://github.com/jmateovill/online-retail-sales-analysis).

For more information on the original dataset, visit [*Kaggle: Online Retail Data Set from UCI ML repo - Jihye Sofia Seo*](https://www.kaggle.com/datasets/jihyeseo/online-retail-data-set-from-uci-ml-repo).

## Tools

- SQLite - SQL queries for analysis
- R/RStudio - data cleaning from previous project
- Github - documentation
- Visual Studio Code - other files (*README.md, text files*)

## Key Analyses

#### Revenue Analysis

- *How much is the total revenue generated?*

    | **total_revenue** |
    |---|
    | 8,911,407.9 |

- Top Countries by generated revenues

    | **Country** | **revenue_per_country** |
    |---|---|
    | **United Kingdom** | **7308391.55** |
    | Netherlands | 285446.34 |
    | EIRE | 265545.9 |
    | Germany | 228867.14 |
    | France | 209024.05 |
    | Australia | 138521.31 |
    | Spain | 61577.11 |
    | Switzerland | 56443.95 |
    | Belgium | 41196.34 |
    | Sweden | 38378.33 |
    | Japan | 37416.37 |
    | Norway | 36165.44 |
    | Portugal | 33439.89 |
    | Finland | 22546.08 |
    | Singapore | 21279.29 |
    | Channel Islands | 20450.44 |
    | Denmark | 18955.34 |
    | Italy | 17483.24 |
    | Cyprus | 13590.38 |
    | Austria | 10198.68 |

- Monthly revenue

    | **month** | **revenue_per_month** |
    |---|---|
    | 2010-12 | 572713.89 |
    | 2011-01 | 569445.04 |
    | 2011-02 | 447137.35 |
    | 2011-03 | 595500.76 |
    | 2011-04 | 469200.36 |
    | 2011-05 | 678594.56 |
    | 2011-06 | 661213.69 |
    | 2011-07 | 600091.01 |
    | 2011-08 | 645343.9 |
    | **2011-09** | **952838.38** |
    | **2011-10** | **1039318.79** |
    | **2011-11** | **1161817.38** |
    | 2011-12 | 518192.79 |

#### Customer Analysis

- RFM Scoring and Segmentation
    - Determining recency, frequency, and monetary purchasing behavior of customers.
    - High Value Customers

    | **rfm_segment** | **rfm_total_score** | **customer_count** | **total_revenue** |
    |---|---|---|---|
    | 555 | 15 | 348 | 3905165.91 |
    | 455 | 14 | 178 | 1090554.92 |
    | 355 | 13 | 82 | 439377.58 |
    | 444 | 12 | 138 | 189004.14 |
    | 535 | 13 | 3 | 173864.35 |
    | 344 | 11 | 113 | 161199.41 |
    | 345 | 12 | 49 | 161110.31 |
    | 445 | 13 | 44 | 156658.23 |
    | 544 | 13 | 107 | 149629.09 |
    | 545 | 14 | 44 | 148799.65 |

#### Product Analysis

- Top 10 products ranked by revenue

| **StockCode** | **Description** | **units_sold** | **total_revenue** | **volume_ranking** | **revenue_ranking** |
|---|---|---|---|---|---|
| 23843 | PAPER CRAFT , LITTLE BIRDIE | 80995 | 168469.6 | 1 | 1 |
| 22423 | REGENCY CAKESTAND 3 TIER | 12402 | 142592.95 | 43 | 2 |
| 85123A | WHITE HANGING HEART T-LIGHT HOLDER | 36725 | 100448.15 | 5 | 3 |
| 85099B | JUMBO BAG RED RETROSPOT | 46181 | 85220.78 | 4 | 4 |
| 23166 | MEDIUM CERAMIC TOP STORAGE JAR | 77916 | 81416.73 | 2 | 5 |
| POST | POSTAGE | 3120 | 77803.96 | 410 | 6 |
| 47566 | PARTY BUNTING | 15291 | 68844.33 | 26 | 7 |
| 84879 | ASSORTED COLOUR BIRD ORNAMENT | 35362 | 56580.34 | 6 | 8 |
| M | Manual | 7173 | 53779.93 | 140 | 9 |
| 23084 | RABBIT NIGHT LIGHT | 27202 | 51346.2 | 9 | 10 |

- Top product per month by total revenue

| **month** | **top_product** | **top_product_revenue** |
|---|---|---|
| 2010-12 | REGENCY CAKESTAND 3 TIER | 17756.7 |
| 2011-01 | MEDIUM CERAMIC TOP STORAGE JAR | 77183.6 |
| 2011-02 | REGENCY CAKESTAND 3 TIER | 9559.65 |
| 2011-03 | REGENCY CAKESTAND 3 TIER | 14797.4 |
| 2011-04 | REGENCY CAKESTAND 3 TIER | 12721.5 |
| 2011-05 | PARTY BUNTING | 13437.95 |
| 2011-06 | PICNIC BASKET WICKER 60 PIECES | 39619.5 |
| 2011-07 | REGENCY CAKESTAND 3 TIER | 12225.0 |
| 2011-08 | JUMBO BAG RED RETROSPOT | 9871.44 |
| 2011-09 | SET OF TEA COFFEE SUGAR TINS PANTRY | 9842.92 |
| 2011-10 | Manual | 21543.63 |
| 2011-11 | RABBIT NIGHT LIGHT | 23268.73 |
| 2011-12 | PAPER CRAFT , LITTLE BIRDIE | 168469.6 |

- Top product per month by amount of units sold

| **month** | **top_product** | **top_product_units_sold** |
|---|---|---|
| 2010-12 | WORLD WAR 2 GLIDERS ASSTD DESIGNS | 5139 |
| 2011-01 | MEDIUM CERAMIC TOP STORAGE JAR | 74215 |
| 2011-02 | EMPIRE DESIGN ROSETTE | 3986 |
| 2011-03 | JUMBO BAG RED RETROSPOT | 4924 |
| 2011-04 | WORLD WAR 2 GLIDERS ASSTD DESIGNS | 10224 |
| 2011-05 | SMALL POPCORN HOLDER | 6738 |
| 2011-06 | JUMBO BAG RED RETROSPOT | 3529 |
| 2011-07 | GIRLS ALPHABET IRON ON PATCHES | 4896 |
| 2011-08 | ASSORTED COLOUR BIRD ORNAMENT | 6425 |
| 2011-09 | JUMBO BAG RED RETROSPOT | 4177 |
| 2011-10 | WORLD WAR 2 GLIDERS ASSTD DESIGNS | 8174 |
| 2011-11 | RABBIT NIGHT LIGHT | 12393 |
| 2011-12 | PAPER CRAFT , LITTLE BIRDIE | 80995 |

## Insights

- Consider expansion of business on countries of other region for **diversification**. Revenue showing a **high concentration** on *domestic* (*United Kingdom*) and *neighbor countries* (*EMEA*) posing a minor risk.
- Monthly revenue trend shows noticeable **increase** during months of *September*, *October*, and *November* indicating **seasonality**. While the other months shows *stable* and *steady* revenue throughout the year.


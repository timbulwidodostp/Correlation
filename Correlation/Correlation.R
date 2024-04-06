# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Methods for Correlation Analysis Use Package correlation (16 Methods Correlation) In R Software
# Methods for Correlation Analysis Use Package correlation (16 Different Methods for Correlation Analysis) In R Software
# Install Methods for Correlation Analysis Use Package correlation (16 Methods Correlation) In R Software
library(httr)
library("readxl")
library("correlation")
library("lme4")
library("psych")
# Import Data Excel Into R From Github Olah Data Semarang (timbulwidodostp)
github_link <- "https://raw.githubusercontent.com/timbulwidodostp/correlation/main/correlation/correlation.xlsx"
temp_file <- tempfile(fileext = ".xlsx")
req <- GET(github_link, 
# authenticate using GITHUB_PAT
authenticate(Sys.getenv("GITHUB_PAT"), ""),
# write result to disk
write_disk(path = temp_file))
correlation <- readxl::read_excel(temp_file)
# Pearson Method for Correlation Analysis in R
correlation(correlation)
# Spearman Method for Correlation Analysis in R
correlation(correlation, spearman = TRUE)
# Biweight Midcorrelation Method for Correlation Analysis in R
correlation(correlation, include_factors = TRUE, method = "auto")
# Partial Method for Correlation Analysis in R
correlation(correlation, partial = TRUE)
# Multilevel Method for Correlation Analysis in R
correlation(correlation, partial = TRUE, multilevel = TRUE)
correlation(correlation, partial = FALSE, multilevel = TRUE)
# Methods for Correlation Analysis Use Package correlation (16 Methods Correlation) In R Software
# Methods for Correlation Analysis Use Package correlation (16 Different Methods for Correlation Analysis) In R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished



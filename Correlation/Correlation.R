# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Methods for Correlation Analysis Use Package correlation (16 Methods Correlation) In R Software
# Methods for Correlation Analysis Use Package correlation (16 Different Methods for Correlation Analysis) In R Software
# Install Methods for Correlation Analysis Use Package correlation (16 Methods Correlation) In R Software
# Install Methods for Correlation Analysis Use Package correlation (16 Different Methods for Correlation Analysis) In R Software
install.packages("readxl")
install.packages("httr")
install.packages("correlation")
install.packages("BayesFactor")
install.packages("lme4")
install.packages("psych")
library(httr)
library("readxl")
library("correlation")
library("lme4")
library("psych")
# Import Data Excel Into R From Github Olah Data Semarang (timbulwidodostp)
github_link <- "https://github.com/timbulwidodostp/Correlation/raw/main/Correlation/Correlation.xlsx"
temp_file <- tempfile(fileext = ".xlsx")
req <- GET(github_link, 
# authenticate using GITHUB_PAT
authenticate(Sys.getenv("GITHUB_PAT"), ""),
# write result to disk
write_disk(path = temp_file))
Correlation <- readxl::read_excel(temp_file)
# Pearson Method for Correlation Analysis in R
correlation(Correlation)
# Spearman Method for Correlation Analysis in R
correlation(Correlation, spearman = TRUE)
# Biweight Midcorrelation Method for Correlation Analysis in R
correlation(Correlation, include_factors = TRUE, method = "auto")
# Partial Method for Correlation Analysis in R
correlation(Correlation, partial = TRUE)
# Multilevel Method for Correlation Analysis in R
correlation(Correlation, partial = TRUE, multilevel = TRUE)
correlation(Correlation, partial = FALSE, multilevel = TRUE)
# Methods for Correlation Analysis Use Package correlation (16 Methods Correlation) In R Software
# Methods for Correlation Analysis Use Package correlation (16 Different Methods for Correlation Analysis) In R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished

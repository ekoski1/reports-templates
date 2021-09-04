# title: "conversions.Rmd"
# author: "Eric Koski"
# Copyright (c) 2021 Eric Koski under MIT License; see LICENSE.md. 

# Energy- and fuel-related constants and conversions

kgPerLb <- 0.4535923
MWhPerMMBTU <- 0.2932972
metricTonsPerShortTon <- 0.90719

CPI_annual <- read_csv("CPI-annual.csv", 
    skip = 7)

adjustForInflation <- function(dollarValue, fromYear, toYear) {
  if (!(fromYear %in% CPI_annual$Year) | !(toYear %in% CPI_annual$Year)) {
    warning("Invalid year")
    0.0
  } else {
    fromCPI <- filter(CPI_annual, Year == fromYear)$Value
    toCPI <- filter(CPI_annual, Year == toYear)$Value
    dollarValue * (toCPI / fromCPI)
  }
}



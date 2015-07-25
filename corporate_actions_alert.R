#load XML library
if (!require(XML)) install.packages('XML')
library(XML)

# Check for stock splits
url <- "http://biz.yahoo.com/c/s.html"
tables <- readHTMLTable(url)
tables[[6]][3]

# Check for ex-dividend
url <- "http://www.nasdaq.com/dividend-stocks/dividend-calendar.aspx"
tables <- readHTMLTable(url)
tables[['Table1']][1]
# make body text for email tag
# ds 2021-11-10
library(tidyverse)

subject <- "Will you please support 20mph for West Bridgford"
email_body <- "Dear councillors,_LB_ _LB_I am writing to ask you if you will support a default speed limit of 20mph where people walk, live and play. As you probably know, there is overwhelming support for the idea of having 20mph as a default speed limit, especially in densely populated and residential areas like West Bridgford, so it is likely to be hugely popular with your constituents, maybe especially the many parents with young children._LB_ _LB_There is a short video briefing by the organisation Twenty is Plenty for Us that explains the many benefits and how local councils can help effect this change: https://www.20splenty.org/parish_council_motion._LB_ _LB_I would appreciate hearing your views on this topic and helping us push for this big improvement in quality of life in your ward and across Rushcliffe._LB_ _LB_ _LB_ Sincerely"
html_space <- "%20"
line_break <- "%0D%0A"
https_bit <- "https%3A%2F%2F"

subject %>% str_replace_all(" ","%20") %>% cat()
email_body %>% str_replace_all("_LB_", line_break) %>% 
  str_replace_all(" ","%20") %>%
  str_replace_all("https://",https_bit) %>%
  cat()



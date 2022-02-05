#' ---
#' title: "Study 2, clearing some things up"
#' author: "Christopher"
#' date: "`r Sys.Date()`"
#' output: 
#'   html_document:
#'   toc: true 
#'   toc_float: true
#'   theme: spacelab
#'   code_folding: hide
#'   
#' ---

#+ setup, warnings=FALSE
knitr::opts_chunk$set(echo = FALSE, warning = FALSE)



library(tidyverse)
library(magrittr)
library(sjmisc)

#+ three_sets, echo = TRUE, message = FALSE, warning=FALSE

#' # Total Analysis of the Study 2 Collection for Comparison

s2_possible_attn <- read_csv("Study2Data_manip.csv") %>%
  select(ResponseId, easy_attn, easy_attn2,  Chk1_1:Less,ABL2,contains(match = c("click", "page")), total_na)

s2_bfas <- read_csv("Study2Data_manip.csv") %>% 
  select(ResponseId, Vol_1:Plt_10, Ind_1:Asrt_10, Ord_1:Ord_10,Enth_1:Asrt_10, Intel_1:Open_10)
                                                                
s2_aux_vars <- read_csv("Study2Data_manip.csv") %>% 
  select(ResponseId,Age, Race, Edu, GEN, HHincome, ABLE:Less, ABL2, POP, HOT, HLTH, starts_with("GRP"),   
         starts_with("S")) %>% select(-StartDate)

#' Check on Able items
#+ ABLE, echo=TRUE,

s2_possible_attn %>% select(easy_attn:ABL2) %>% glimpse(.,width = 80)
                                                                

#' ##to do 
#' 1: screen -- see screening section 
#' 2: compute competence
#' 3: note the chosen SF items 
#' 4: recode matrices, score relative imp, grips, sandia, auxvars cormat                                                               
#' 5: all-in-one RC, alpha, cormat for aspects ## going to have to break this up 
#' 6: domains scores ## can we omit from main text and report in appendix? 
#' 7: table focusing on SF aspect scores correlated with aux_vars
#' 8: table focusing on difference (full minus short) correlations with aux vars
#' 9: upload what we have so far to osf  

#' ## screening rules by me, and then those I think brent used: 
#' TOTAL BLANKS > 50% (count  ~ 72 for actual questions)
#' fail (1) vs pass (0) attn checks are: easy_attn & easy_attn2
#' select the center square (0), any other (1)
#' ABLE asks: are you more or less competent than average (more, average, less), if more (How much more competent? with an option including "less") and vice versa. 
#'     - only 1 person failed to be consistent, but that's a (0) and a (1) for everyone else.
#' We would also expect their answer to be consisent with Abl2, but we can skip it if I'm being picky
#' total of fail/pass attn checks should be 
#' 
#' matrices time and click count  is probably worth looking at, but I'd probably just exclude their cog abil score


knitr::spin('Study2_Report.R')

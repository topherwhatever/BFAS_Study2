---
title: "BFAS_SF_ptwo"
author: "Christopher"
date: "2022-02-05"
output: 
  html_document: 
    toc: yes
    toc_depth: 3
    highlight: textmate
    theme: yeti
    fig_height: 7.5
    keep_md: yes
---





# Reanalysis of the Study 2 Raw Data



## Workflow

-   [x] **screen -- see screening section**

-   [x] **compute competence**

-   [x] ~~**What's up with Sandia?**~~ **Psychometrics, alt forms. (sandia axed)**

-   [x] **note the chosen SF items:**\~\~ ***listed in the code chunk***

-   [x] **score the BFAS and CAS or LATS or whatever our SF gets to be named**\~\~

-   [x] **score relative imp, grips, ~~sandia~~, auxvars**

-   [ ] **Correlation matrices with:**

    -   [x] Big and Little

    -   [x] Importance and Little

    -   [x] Other stuff (GRIPS and small scales) and Little

    -   [x] basic reliability stuff

    -   [ ] present better

-   [ ] **compare with past results**

-   [ ] **anything I'm missing?**

-   [ ] **table focusing on difference (full minus short) correlations with aux vars**

-   [ ] **upload what we have so far to osf, etc**

::: {#Top}
Compare it to the old correlations, though.
:::

\#\#Scoring Aux



## Scoring Notes:

domains are available as single items or relative importance (domain importance rating/sum of them), but nnote that there are multiple ways this is scored.

Able correlates with Able 2 at 0.75


```r
scatter.smooth(s2_aux_vars$Ability, s2_aux_vars$ABL2)
```

![](Study2_Report_files/figure-html/ablplot-1.png)<!-- -->

```r
## domain relative importance -- just a check.
```

Self-reported ability items work well together for an index. 

## Reversing BFAS, Scoring Full BFAS


```
##      [,1] [,2]
## [1,]    3    3
## [2,]    4    2
## [3,]    4    2
## [4,]    3    3
## [5,]    3    3
## [6,]    4    2
```

## Scoring our LATS



## Original conception of screening (pass/fail) rules

TOTAL BLANKS \> 40% (count \~ 72 for actual questions); fail (1) vs pass (0)

attn checks are: easy_attn & easy_attn2

select the center square (0), any other (1)

ABLE asks: are you more or less competent than average (more, average, less), if more (How much more competent? with an option including "less") and vice versa.

-   only 1 person failed to be consistent, but that's a (0) and a (1) for everyone else.\
    We would also expect their answer to be consistent with Abl2, but we can skip it if I'm being picky\
    total of fail/pass attn checks should be ?

A look at all quality indexes, with all irrelevant block selections to be removed

*Out of 5 possible checks, 40ish failed 1 or 2. I think the 2/5 rule works fine here, even though we had not been using it initially.*

### Filtering based on this more stringent requirement.

From the raw data, I have N= 333 with N = 305 fit for analyses. This is in contrast to 321 in the manuscript. The difference mainly comes from using all indices (one of which no one failed).

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["easy_attn2"],"name":[1],"type":["dbl"],"align":["right"]},{"label":["box_attn"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["ableM_attn"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["ableL_attn"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["na_perc_attn"],"name":[5],"type":["dbl"],"align":["right"]}],"data":[{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"1","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"0","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"1","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"0","2":"0","3":"0","4":"NA","5":"0"},{"1":"1","2":"0","3":"NA","4":"NA","5":"0"},{"1":"0","2":"0","3":"NA","4":"NA","5":"0"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div><table>
 <thead>
  <tr>
   <th style="text-align:left;"> # failed </th>
   <th style="text-align:right;"> count </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:right;"> 305 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:right;"> 27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
</tbody>
</table>




```
## Some items ( Open_10 ) were negatively correlated with the total scale and 
## probably should be reversed.  
## To do this, run the function again with the 'check.keys=TRUE' option
```

```
## Some items ( Plt_1 ) were negatively correlated with the total scale and 
## probably should be reversed.  
## To do this, run the function again with the 'check.keys=TRUE' option
```

```
## Some items ( Open_2 Open_6 Open_8 Open_10 ) were negatively correlated with the total scale and 
## probably should be reversed.  
## To do this, run the function again with the 'check.keys=TRUE' option
```

<table class="table table-condensed" style="font-family: Fira Mono; width: auto !important; margin-left: auto; margin-right: auto;">
<caption>Little BFAS with alphas</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> row.names </th>
   <th style="text-align:right;"> alphas </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Volatility </td>
   <td style="text-align:right;"> 0.9210192 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Withdrawal </td>
   <td style="text-align:right;"> 0.7710736 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Compassion </td>
   <td style="text-align:right;"> 0.7770809 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Politeness </td>
   <td style="text-align:right;"> 0.7571497 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Industriousness </td>
   <td style="text-align:right;"> 0.8935516 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Orderliness </td>
   <td style="text-align:right;"> 0.6832731 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Enthusiasm </td>
   <td style="text-align:right;"> 0.8529573 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Assitiveness </td>
   <td style="text-align:right;"> 0.7565850 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Intellect </td>
   <td style="text-align:right;"> 0.7377234 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Openness </td>
   <td style="text-align:right;"> 0.0969083 </td>
  </tr>
</tbody>
</table>

<table class="table table-condensed" style="font-family: Fira Mono; width: auto !important; margin-left: auto; margin-right: auto;">
<caption>Little BFAS with alphas</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> row.names </th>
   <th style="text-align:right;"> alphas </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Volatility </td>
   <td style="text-align:right;"> 0.8844111 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Withdrawal </td>
   <td style="text-align:right;"> 0.8851272 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Compassion </td>
   <td style="text-align:right;"> 0.8856426 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Politeness </td>
   <td style="text-align:right;"> 0.8138633 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Industriousness </td>
   <td style="text-align:right;"> 0.8882837 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Orderliness </td>
   <td style="text-align:right;"> 0.8059459 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Enthusiasm </td>
   <td style="text-align:right;"> 0.8631966 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Assitiveness </td>
   <td style="text-align:right;"> 0.8656882 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Intellect </td>
   <td style="text-align:right;"> 0.8584122 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Openness </td>
   <td style="text-align:right;"> -0.9725480 </td>
  </tr>
</tbody>
</table>

## Correlations Follow:

### Full form with Little Form

**I don't like these style options, so let's figure out better table formats**

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:100%; overflow-x: scroll; width:750px; "><table class="table table-condensed" style="font-family: Fira Mono; width: auto !important; margin-left: auto; margin-right: auto;">
<caption>BFAS with Little BFAS</caption>
 <thead>
  <tr>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;"> term </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Volatility </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Withdrawal </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Compassion </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Politeness </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Industriousness </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Orderliness </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Enthusiasm </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Assitiveness </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Intellect </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Openness </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Volatility_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Withdrawal_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Compassion_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Politeness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Industriousness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Orderliness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Enthusiasm_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Assitiveness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Intellect_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Openness_L </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Volatility </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> 0.76 </td>
   <td style="text-align:right;"> -0.38 </td>
   <td style="text-align:right;"> -0.44 </td>
   <td style="text-align:right;"> -0.64 </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> -0.43 </td>
   <td style="text-align:right;"> -0.35 </td>
   <td style="text-align:right;"> -0.60 </td>
   <td style="text-align:right;"> -0.24 </td>
   <td style="text-align:right;"> 0.91 </td>
   <td style="text-align:right;"> 0.72 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> -0.50 </td>
   <td style="text-align:right;"> -0.64 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> -0.45 </td>
   <td style="text-align:right;"> -0.25 </td>
   <td style="text-align:right;"> -0.60 </td>
   <td style="text-align:right;"> -0.53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Withdrawal </td>
   <td style="text-align:right;"> 0.76 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> -0.29 </td>
   <td style="text-align:right;"> -0.27 </td>
   <td style="text-align:right;"> -0.65 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.57 </td>
   <td style="text-align:right;"> -0.55 </td>
   <td style="text-align:right;"> -0.61 </td>
   <td style="text-align:right;"> -0.29 </td>
   <td style="text-align:right;"> 0.70 </td>
   <td style="text-align:right;"> 0.95 </td>
   <td style="text-align:right;"> -0.15 </td>
   <td style="text-align:right;"> -0.33 </td>
   <td style="text-align:right;"> -0.61 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> -0.55 </td>
   <td style="text-align:right;"> -0.44 </td>
   <td style="text-align:right;"> -0.60 </td>
   <td style="text-align:right;"> -0.57 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Compassion </td>
   <td style="text-align:right;"> -0.38 </td>
   <td style="text-align:right;"> -0.29 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> 0.59 </td>
   <td style="text-align:right;"> 0.47 </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> 0.53 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> 0.55 </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> -0.46 </td>
   <td style="text-align:right;"> -0.28 </td>
   <td style="text-align:right;"> 0.76 </td>
   <td style="text-align:right;"> 0.62 </td>
   <td style="text-align:right;"> 0.46 </td>
   <td style="text-align:right;"> 0.07 </td>
   <td style="text-align:right;"> 0.54 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> 0.55 </td>
   <td style="text-align:right;"> 0.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Politeness </td>
   <td style="text-align:right;"> -0.44 </td>
   <td style="text-align:right;"> -0.27 </td>
   <td style="text-align:right;"> 0.59 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> 0.47 </td>
   <td style="text-align:right;"> 0.31 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> 0.38 </td>
   <td style="text-align:right;"> 0.03 </td>
   <td style="text-align:right;"> -0.56 </td>
   <td style="text-align:right;"> -0.26 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> 0.93 </td>
   <td style="text-align:right;"> 0.53 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> -0.26 </td>
   <td style="text-align:right;"> 0.42 </td>
   <td style="text-align:right;"> 0.38 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Industriousness </td>
   <td style="text-align:right;"> -0.64 </td>
   <td style="text-align:right;"> -0.65 </td>
   <td style="text-align:right;"> 0.47 </td>
   <td style="text-align:right;"> 0.47 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> 0.44 </td>
   <td style="text-align:right;"> 0.49 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> 0.68 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> -0.68 </td>
   <td style="text-align:right;"> -0.62 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> 0.54 </td>
   <td style="text-align:right;"> 0.94 </td>
   <td style="text-align:right;"> 0.29 </td>
   <td style="text-align:right;"> 0.53 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.68 </td>
   <td style="text-align:right;"> 0.60 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Orderliness </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> 0.31 </td>
   <td style="text-align:right;"> 0.44 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> 0.06 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> -0.22 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:right;"> 0.34 </td>
   <td style="text-align:right;"> 0.41 </td>
   <td style="text-align:right;"> 0.92 </td>
   <td style="text-align:right;"> 0.06 </td>
   <td style="text-align:right;"> 0.07 </td>
   <td style="text-align:right;"> 0.22 </td>
   <td style="text-align:right;"> 0.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Enthusiasm </td>
   <td style="text-align:right;"> -0.43 </td>
   <td style="text-align:right;"> -0.57 </td>
   <td style="text-align:right;"> 0.53 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.49 </td>
   <td style="text-align:right;"> 0.06 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> 0.57 </td>
   <td style="text-align:right;"> 0.51 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> -0.46 </td>
   <td style="text-align:right;"> -0.55 </td>
   <td style="text-align:right;"> 0.47 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.44 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> 0.90 </td>
   <td style="text-align:right;"> 0.46 </td>
   <td style="text-align:right;"> 0.50 </td>
   <td style="text-align:right;"> 0.41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Assitiveness </td>
   <td style="text-align:right;"> -0.35 </td>
   <td style="text-align:right;"> -0.55 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.57 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> -0.30 </td>
   <td style="text-align:right;"> -0.51 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:right;"> 0.33 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> 0.92 </td>
   <td style="text-align:right;"> 0.41 </td>
   <td style="text-align:right;"> 0.38 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Intellect </td>
   <td style="text-align:right;"> -0.60 </td>
   <td style="text-align:right;"> -0.61 </td>
   <td style="text-align:right;"> 0.55 </td>
   <td style="text-align:right;"> 0.38 </td>
   <td style="text-align:right;"> 0.68 </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> 0.51 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> -0.59 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> 0.38 </td>
   <td style="text-align:right;"> 0.45 </td>
   <td style="text-align:right;"> 0.60 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.48 </td>
   <td style="text-align:right;"> 0.34 </td>
   <td style="text-align:right;"> 0.94 </td>
   <td style="text-align:right;"> 0.71 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Openness </td>
   <td style="text-align:right;"> -0.24 </td>
   <td style="text-align:right;"> -0.29 </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> 0.03 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> -0.22 </td>
   <td style="text-align:right;"> 0.26 </td>
   <td style="text-align:right;"> 0.06 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 0.33 </td>
   <td style="text-align:right;"> 0.58 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Volatility_L </td>
   <td style="text-align:right;"> 0.91 </td>
   <td style="text-align:right;"> 0.70 </td>
   <td style="text-align:right;"> -0.46 </td>
   <td style="text-align:right;"> -0.56 </td>
   <td style="text-align:right;"> -0.68 </td>
   <td style="text-align:right;"> -0.22 </td>
   <td style="text-align:right;"> -0.46 </td>
   <td style="text-align:right;"> -0.30 </td>
   <td style="text-align:right;"> -0.59 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> 0.68 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.63 </td>
   <td style="text-align:right;"> -0.73 </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> -0.56 </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> -0.64 </td>
   <td style="text-align:right;"> -0.53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Withdrawal_L </td>
   <td style="text-align:right;"> 0.72 </td>
   <td style="text-align:right;"> 0.95 </td>
   <td style="text-align:right;"> -0.28 </td>
   <td style="text-align:right;"> -0.26 </td>
   <td style="text-align:right;"> -0.62 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> -0.55 </td>
   <td style="text-align:right;"> -0.51 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> -0.22 </td>
   <td style="text-align:right;"> 0.68 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.32 </td>
   <td style="text-align:right;"> -0.60 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> -0.39 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> -0.51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Compassion_L </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> -0.15 </td>
   <td style="text-align:right;"> 0.76 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:right;"> 0.47 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> 0.38 </td>
   <td style="text-align:right;"> 0.26 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:right;"> 0.31 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.19 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Politeness_L </td>
   <td style="text-align:right;"> -0.50 </td>
   <td style="text-align:right;"> -0.33 </td>
   <td style="text-align:right;"> 0.62 </td>
   <td style="text-align:right;"> 0.93 </td>
   <td style="text-align:right;"> 0.54 </td>
   <td style="text-align:right;"> 0.34 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:right;"> 0.45 </td>
   <td style="text-align:right;"> 0.06 </td>
   <td style="text-align:right;"> -0.63 </td>
   <td style="text-align:right;"> -0.32 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> 0.61 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.37 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> 0.50 </td>
   <td style="text-align:right;"> 0.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Industriousness_L </td>
   <td style="text-align:right;"> -0.64 </td>
   <td style="text-align:right;"> -0.61 </td>
   <td style="text-align:right;"> 0.46 </td>
   <td style="text-align:right;"> 0.53 </td>
   <td style="text-align:right;"> 0.94 </td>
   <td style="text-align:right;"> 0.41 </td>
   <td style="text-align:right;"> 0.44 </td>
   <td style="text-align:right;"> 0.33 </td>
   <td style="text-align:right;"> 0.60 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> -0.73 </td>
   <td style="text-align:right;"> -0.60 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.61 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 0.54 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.63 </td>
   <td style="text-align:right;"> 0.56 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Orderliness_L </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 0.07 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.29 </td>
   <td style="text-align:right;"> 0.92 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> 0.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Enthusiasm_L </td>
   <td style="text-align:right;"> -0.45 </td>
   <td style="text-align:right;"> -0.55 </td>
   <td style="text-align:right;"> 0.54 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.53 </td>
   <td style="text-align:right;"> 0.06 </td>
   <td style="text-align:right;"> 0.90 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> 0.48 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> -0.56 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> 0.31 </td>
   <td style="text-align:right;"> 0.37 </td>
   <td style="text-align:right;"> 0.54 </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> 0.30 </td>
   <td style="text-align:right;"> 0.51 </td>
   <td style="text-align:right;"> 0.42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Assitiveness_L </td>
   <td style="text-align:right;"> -0.25 </td>
   <td style="text-align:right;"> -0.44 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> -0.26 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.07 </td>
   <td style="text-align:right;"> 0.46 </td>
   <td style="text-align:right;"> 0.92 </td>
   <td style="text-align:right;"> 0.34 </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> -0.39 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:right;"> 0.30 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Intellect_L </td>
   <td style="text-align:right;"> -0.60 </td>
   <td style="text-align:right;"> -0.60 </td>
   <td style="text-align:right;"> 0.55 </td>
   <td style="text-align:right;"> 0.42 </td>
   <td style="text-align:right;"> 0.68 </td>
   <td style="text-align:right;"> 0.22 </td>
   <td style="text-align:right;"> 0.50 </td>
   <td style="text-align:right;"> 0.41 </td>
   <td style="text-align:right;"> 0.94 </td>
   <td style="text-align:right;"> 0.33 </td>
   <td style="text-align:right;"> -0.64 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.50 </td>
   <td style="text-align:right;"> 0.63 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> 0.51 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 1.00 </td>
   <td style="text-align:right;"> 0.71 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Openness_L </td>
   <td style="text-align:right;"> -0.53 </td>
   <td style="text-align:right;"> -0.57 </td>
   <td style="text-align:right;"> 0.40 </td>
   <td style="text-align:right;"> 0.38 </td>
   <td style="text-align:right;"> 0.60 </td>
   <td style="text-align:right;"> 0.20 </td>
   <td style="text-align:right;"> 0.41 </td>
   <td style="text-align:right;"> 0.38 </td>
   <td style="text-align:right;"> 0.71 </td>
   <td style="text-align:right;"> 0.58 </td>
   <td style="text-align:right;"> -0.53 </td>
   <td style="text-align:right;"> -0.51 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> 0.56 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.42 </td>
   <td style="text-align:right;"> 0.29 </td>
   <td style="text-align:right;"> 0.71 </td>
   <td style="text-align:right;"> 1.00 </td>
  </tr>
</tbody>
</table></div>

### LATS with absolute importance

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:100%; overflow-x: scroll; width:750px; "><table class="table table-condensed" style="font-family: Fira Mono; width: auto !important; margin-left: auto; margin-right: auto;">
<caption>Abs Importance  with Little BFAS</caption>
 <thead>
  <tr>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;"> term </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Volatility_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Withdrawal_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Compassion_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Politeness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Industriousness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Orderliness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Enthusiasm_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Assitiveness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Intellect_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Openness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> rel_fam </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> rel_frnd </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> rel_fun </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> rel_poli </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> rel_wrk </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> rel_relig </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Volatility_L </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.68 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.63 </td>
   <td style="text-align:right;"> -0.73 </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> -0.56 </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> -0.64 </td>
   <td style="text-align:right;"> -0.53 </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> -0.24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Withdrawal_L </td>
   <td style="text-align:right;"> 0.68 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.32 </td>
   <td style="text-align:right;"> -0.60 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> -0.39 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> -0.51 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> -0.02 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> -0.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Compassion_L </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:right;"> 0.31 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:right;"> -0.18 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> -0.01 </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> 0.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Politeness_L </td>
   <td style="text-align:right;"> -0.63 </td>
   <td style="text-align:right;"> -0.32 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.61 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.37 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> 0.50 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> -0.33 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> -0.31 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> 0.32 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Industriousness_L </td>
   <td style="text-align:right;"> -0.73 </td>
   <td style="text-align:right;"> -0.60 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.61 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 0.54 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.63 </td>
   <td style="text-align:right;"> 0.56 </td>
   <td style="text-align:right;"> -0.22 </td>
   <td style="text-align:right;"> -0.03 </td>
   <td style="text-align:right;"> -0.15 </td>
   <td style="text-align:right;"> 0.06 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> 0.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Orderliness_L </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> -0.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Enthusiasm_L </td>
   <td style="text-align:right;"> -0.56 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> 0.31 </td>
   <td style="text-align:right;"> 0.37 </td>
   <td style="text-align:right;"> 0.54 </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.30 </td>
   <td style="text-align:right;"> 0.51 </td>
   <td style="text-align:right;"> 0.42 </td>
   <td style="text-align:right;"> -0.18 </td>
   <td style="text-align:right;"> -0.30 </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Assitiveness_L </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> -0.39 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:right;"> 0.30 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.29 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:right;"> -0.02 </td>
   <td style="text-align:right;"> -0.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Intellect_L </td>
   <td style="text-align:right;"> -0.64 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.50 </td>
   <td style="text-align:right;"> 0.63 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> 0.51 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.71 </td>
   <td style="text-align:right;"> -0.19 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:right;"> 0.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Openness_L </td>
   <td style="text-align:right;"> -0.53 </td>
   <td style="text-align:right;"> -0.51 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> 0.56 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.42 </td>
   <td style="text-align:right;"> 0.29 </td>
   <td style="text-align:right;"> 0.71 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> -0.14 </td>
   <td style="text-align:right;"> -0.12 </td>
   <td style="text-align:right;"> -0.12 </td>
   <td style="text-align:right;"> -0.03 </td>
   <td style="text-align:right;"> 0.03 </td>
   <td style="text-align:right;"> 0.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> rel_fam </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:right;"> -0.33 </td>
   <td style="text-align:right;"> -0.22 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:right;"> -0.18 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:right;"> -0.19 </td>
   <td style="text-align:right;"> -0.14 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> -0.03 </td>
   <td style="text-align:right;"> -0.07 </td>
   <td style="text-align:right;"> -0.29 </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> -0.24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> rel_frnd </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> -0.18 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> -0.03 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> -0.30 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> -0.12 </td>
   <td style="text-align:right;"> -0.03 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> -0.18 </td>
   <td style="text-align:right;"> -0.25 </td>
   <td style="text-align:right;"> -0.34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> rel_fun </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> -0.31 </td>
   <td style="text-align:right;"> -0.15 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> -0.12 </td>
   <td style="text-align:right;"> -0.07 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> -0.18 </td>
   <td style="text-align:right;"> -0.45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> rel_poli </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> -0.02 </td>
   <td style="text-align:right;"> -0.01 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:right;"> 0.06 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:right;"> -0.03 </td>
   <td style="text-align:right;"> -0.29 </td>
   <td style="text-align:right;"> -0.18 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> -0.23 </td>
   <td style="text-align:right;"> -0.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> rel_wrk </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> -0.02 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:right;"> 0.03 </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> -0.25 </td>
   <td style="text-align:right;"> -0.18 </td>
   <td style="text-align:right;"> -0.23 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> -0.18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> rel_relig </td>
   <td style="text-align:right;"> -0.24 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.20 </td>
   <td style="text-align:right;"> -0.01 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> 0.25 </td>
   <td style="text-align:right;"> 0.25 </td>
   <td style="text-align:right;"> -0.24 </td>
   <td style="text-align:right;"> -0.34 </td>
   <td style="text-align:right;"> -0.45 </td>
   <td style="text-align:right;"> -0.25 </td>
   <td style="text-align:right;"> -0.18 </td>
   <td style="text-align:right;"> NA </td>
  </tr>
</tbody>
</table></div>

### LATS with relative importance

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:100%; overflow-x: scroll; width:750px; "><table class="table table-condensed" style="font-family: Fira Mono; width: auto !important; margin-left: auto; margin-right: auto;">
<caption>Little BFAS with Absolute Importance</caption>
 <thead>
  <tr>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;"> term </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Volatility_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Withdrawal_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Compassion_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Politeness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Industriousness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Orderliness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Enthusiasm_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Assitiveness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Intellect_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Openness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> imp_fam </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> imp_frnd </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> imp_fun </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> imp_poli </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> imp_wrk </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> imp_relig </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Volatility_L </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.68 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.63 </td>
   <td style="text-align:right;"> -0.73 </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> -0.56 </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> -0.64 </td>
   <td style="text-align:right;"> -0.53 </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:right;"> -0.07 </td>
   <td style="text-align:right;"> -0.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Withdrawal_L </td>
   <td style="text-align:right;"> 0.68 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.32 </td>
   <td style="text-align:right;"> -0.60 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> -0.39 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> -0.51 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> 0.06 </td>
   <td style="text-align:right;"> 0.07 </td>
   <td style="text-align:right;"> -0.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Compassion_L </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:right;"> 0.31 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> -0.28 </td>
   <td style="text-align:right;"> -0.38 </td>
   <td style="text-align:right;"> -0.22 </td>
   <td style="text-align:right;"> -0.22 </td>
   <td style="text-align:right;"> -0.12 </td>
   <td style="text-align:right;"> -0.13 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Politeness_L </td>
   <td style="text-align:right;"> -0.63 </td>
   <td style="text-align:right;"> -0.32 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.61 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.37 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> 0.50 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> -0.20 </td>
   <td style="text-align:right;"> -0.01 </td>
   <td style="text-align:right;"> -0.22 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 0.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Industriousness_L </td>
   <td style="text-align:right;"> -0.73 </td>
   <td style="text-align:right;"> -0.60 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.61 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 0.54 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.63 </td>
   <td style="text-align:right;"> 0.56 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> -0.02 </td>
   <td style="text-align:right;"> -0.14 </td>
   <td style="text-align:right;"> 0.03 </td>
   <td style="text-align:right;"> -0.01 </td>
   <td style="text-align:right;"> 0.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Orderliness_L </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:right;"> -0.14 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:right;"> -0.14 </td>
   <td style="text-align:right;"> -0.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Enthusiasm_L </td>
   <td style="text-align:right;"> -0.56 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> 0.31 </td>
   <td style="text-align:right;"> 0.37 </td>
   <td style="text-align:right;"> 0.54 </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.30 </td>
   <td style="text-align:right;"> 0.51 </td>
   <td style="text-align:right;"> 0.42 </td>
   <td style="text-align:right;"> -0.21 </td>
   <td style="text-align:right;"> -0.31 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:right;"> 0.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Assitiveness_L </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> -0.39 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:right;"> 0.30 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.29 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> -0.19 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> -0.21 </td>
   <td style="text-align:right;"> -0.24 </td>
   <td style="text-align:right;"> -0.27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Intellect_L </td>
   <td style="text-align:right;"> -0.64 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.50 </td>
   <td style="text-align:right;"> 0.63 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> 0.51 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.71 </td>
   <td style="text-align:right;"> -0.21 </td>
   <td style="text-align:right;"> -0.13 </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:right;"> 0.15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Openness_L </td>
   <td style="text-align:right;"> -0.53 </td>
   <td style="text-align:right;"> -0.51 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> 0.56 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.42 </td>
   <td style="text-align:right;"> 0.29 </td>
   <td style="text-align:right;"> 0.71 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> -0.15 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:right;"> 0.14 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> imp_fam </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> -0.28 </td>
   <td style="text-align:right;"> -0.20 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> -0.21 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> -0.21 </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> 0.03 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> imp_frnd </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> -0.38 </td>
   <td style="text-align:right;"> -0.01 </td>
   <td style="text-align:right;"> -0.02 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:right;"> -0.31 </td>
   <td style="text-align:right;"> -0.19 </td>
   <td style="text-align:right;"> -0.13 </td>
   <td style="text-align:right;"> -0.15 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> 0.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> imp_fun </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> -0.22 </td>
   <td style="text-align:right;"> -0.22 </td>
   <td style="text-align:right;"> -0.14 </td>
   <td style="text-align:right;"> -0.14 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> 0.03 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> -0.02 </td>
   <td style="text-align:right;"> -0.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> imp_poli </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:right;"> 0.06 </td>
   <td style="text-align:right;"> -0.22 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.03 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:right;"> -0.21 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> 0.24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> imp_wrk </td>
   <td style="text-align:right;"> -0.07 </td>
   <td style="text-align:right;"> 0.07 </td>
   <td style="text-align:right;"> -0.12 </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> -0.01 </td>
   <td style="text-align:right;"> -0.14 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:right;"> -0.24 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> -0.02 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> imp_relig </td>
   <td style="text-align:right;"> -0.20 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> -0.13 </td>
   <td style="text-align:right;"> 0.33 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:right;"> -0.27 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> 0.24 </td>
   <td style="text-align:right;"> 0.24 </td>
   <td style="text-align:right;"> NA </td>
  </tr>
</tbody>
</table></div>

### LATS with GRiPs and the rest

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:100%; overflow-x: scroll; width:750px; "><table class="table table-condensed" style="font-family: Fira Mono; width: auto !important; margin-left: auto; margin-right: auto;">
<caption>Little BFAS with The Other Stuff</caption>
 <thead>
  <tr>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;"> term </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Volatility_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Withdrawal_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Compassion_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Politeness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Industriousness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Orderliness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Enthusiasm_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Assitiveness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Intellect_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Openness_L </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Age </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Edu </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> HHincome </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> POP </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> HOT </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> HLTH </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> SR_Competence </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Volatility_L </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.68 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.63 </td>
   <td style="text-align:right;"> -0.73 </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> -0.56 </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> -0.64 </td>
   <td style="text-align:right;"> -0.53 </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:right;"> -0.13 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> -0.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Withdrawal_L </td>
   <td style="text-align:right;"> 0.68 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.32 </td>
   <td style="text-align:right;"> -0.60 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> -0.39 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> -0.51 </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:right;"> -0.18 </td>
   <td style="text-align:right;"> -0.21 </td>
   <td style="text-align:right;"> -0.26 </td>
   <td style="text-align:right;"> -0.30 </td>
   <td style="text-align:right;"> -0.26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Compassion_L </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:right;"> 0.31 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> -0.01 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> 0.19 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Politeness_L </td>
   <td style="text-align:right;"> -0.63 </td>
   <td style="text-align:right;"> -0.32 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.61 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.37 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> 0.50 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> 0.22 </td>
   <td style="text-align:right;"> -0.34 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:right;"> -0.29 </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> -0.19 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Industriousness_L </td>
   <td style="text-align:right;"> -0.73 </td>
   <td style="text-align:right;"> -0.60 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.61 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 0.54 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.63 </td>
   <td style="text-align:right;"> 0.56 </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> -0.20 </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> 0.07 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Orderliness_L </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> 0.01 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:right;"> -0.07 </td>
   <td style="text-align:right;"> 0.07 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> -0.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Enthusiasm_L </td>
   <td style="text-align:right;"> -0.56 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> 0.31 </td>
   <td style="text-align:right;"> 0.37 </td>
   <td style="text-align:right;"> 0.54 </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.30 </td>
   <td style="text-align:right;"> 0.51 </td>
   <td style="text-align:right;"> 0.42 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> 0.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Assitiveness_L </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> -0.39 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:right;"> 0.30 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.29 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> 0.26 </td>
   <td style="text-align:right;"> 0.45 </td>
   <td style="text-align:right;"> 0.39 </td>
   <td style="text-align:right;"> 0.33 </td>
   <td style="text-align:right;"> 0.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Intellect_L </td>
   <td style="text-align:right;"> -0.64 </td>
   <td style="text-align:right;"> -0.54 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.50 </td>
   <td style="text-align:right;"> 0.63 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> 0.51 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.71 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> 0.26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Openness_L </td>
   <td style="text-align:right;"> -0.53 </td>
   <td style="text-align:right;"> -0.51 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> 0.56 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.42 </td>
   <td style="text-align:right;"> 0.29 </td>
   <td style="text-align:right;"> 0.71 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> 0.18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Age </td>
   <td style="text-align:right;"> -0.11 </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> 0.08 </td>
   <td style="text-align:right;"> 0.22 </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:right;"> 0.03 </td>
   <td style="text-align:right;"> -0.13 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:right;"> -0.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Edu </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:right;"> -0.01 </td>
   <td style="text-align:right;"> -0.34 </td>
   <td style="text-align:right;"> -0.20 </td>
   <td style="text-align:right;"> -0.07 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> 0.16 </td>
   <td style="text-align:right;"> -0.08 </td>
   <td style="text-align:right;"> -0.10 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> 0.22 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.25 </td>
   <td style="text-align:right;"> 0.27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> HHincome </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> -0.18 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> 0.07 </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> 0.26 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> 0.04 </td>
   <td style="text-align:right;"> 0.23 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> POP </td>
   <td style="text-align:right;"> -0.05 </td>
   <td style="text-align:right;"> -0.21 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> -0.29 </td>
   <td style="text-align:right;"> -0.04 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> 0.45 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> 0.03 </td>
   <td style="text-align:right;"> 0.22 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.61 </td>
   <td style="text-align:right;"> 0.41 </td>
   <td style="text-align:right;"> 0.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> HOT </td>
   <td style="text-align:right;"> -0.13 </td>
   <td style="text-align:right;"> -0.26 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> -0.17 </td>
   <td style="text-align:right;"> 0.11 </td>
   <td style="text-align:right;"> 0.05 </td>
   <td style="text-align:right;"> 0.09 </td>
   <td style="text-align:right;"> 0.39 </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> -0.13 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> 0.61 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.58 </td>
   <td style="text-align:right;"> 0.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> HLTH </td>
   <td style="text-align:right;"> -0.16 </td>
   <td style="text-align:right;"> -0.30 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> -0.09 </td>
   <td style="text-align:right;"> 0.15 </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> 0.33 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:right;"> 0.25 </td>
   <td style="text-align:right;"> 0.21 </td>
   <td style="text-align:right;"> 0.41 </td>
   <td style="text-align:right;"> 0.58 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> 0.41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SR_Competence </td>
   <td style="text-align:right;"> -0.12 </td>
   <td style="text-align:right;"> -0.26 </td>
   <td style="text-align:right;"> 0.19 </td>
   <td style="text-align:right;"> -0.19 </td>
   <td style="text-align:right;"> 0.07 </td>
   <td style="text-align:right;"> -0.01 </td>
   <td style="text-align:right;"> 0.12 </td>
   <td style="text-align:right;"> 0.39 </td>
   <td style="text-align:right;"> 0.26 </td>
   <td style="text-align:right;"> 0.18 </td>
   <td style="text-align:right;"> -0.06 </td>
   <td style="text-align:right;"> 0.27 </td>
   <td style="text-align:right;"> 0.17 </td>
   <td style="text-align:right;"> 0.50 </td>
   <td style="text-align:right;"> 0.43 </td>
   <td style="text-align:right;"> 0.41 </td>
   <td style="text-align:right;"> NA </td>
  </tr>
</tbody>
</table></div>

## Code Appendix

------------------------------------------------------------------------


```r
knitr::opts_chunk$set(fig.width=12, fig.height=8, echo=FALSE, warning=FALSE, message=FALSE)


library(tidyverse, quietly = TRUE)
library(magrittr, quietly = TRUE)
library(sjmisc, quietly = TRUE)
library(corrr, quietly = TRUE)
library(knitr, quietly = TRUE)
library(kableExtra, quietly = TRUE)
library(reactable, quietly = TRUE)


s2_possible_attn <- read_csv("Study2Data_manip.csv") %>%
  select(ResponseId, easy_attn, easy_attn2, Chk1_1:Less,ABL2, total_na)

s2_bfas <- read_csv("Study2Data_manip.csv") %>% 
  select(ResponseId, Vol_1:Plt_10, Ind_1:Asrt_10, Ord_1:Ord_10,Enth_1:Asrt_10, Intel_1:Open_10) %>% select(-HAP_1, -HLTH)
                                                                
s2_aux_vars <- read_csv("Study2Data_manip.csv") %>% 
  select(ResponseId,Age, Race, Edu, GEN, HHincome, ABLE:Less, ABL2, POP, HOT, HLTH, 
         starts_with("GRP"), starts_with("IMP")) %>%
  rename(imp_fam = IMP_1, imp_frnd = IMP_2, imp_fun =  IMP_3, imp_poli =IMP_4, imp_wrk = IMP_5, imp_relig = IMP_6)


##ability
s2_aux_vars %>% sjmisc::set_na(., More, na = -99) ->  s2_aux_vars
s2_aux_vars$Ability <- rowSums(s2_aux_vars[, c(8:10)], na.rm = TRUE)
s2_aux_vars$SR_Competence <- s2_aux_vars$Ability +  s2_aux_vars$ABL2
s2_aux_vars <- s2_aux_vars %>% row_means(., contains("GRP"), 
                         n = 4, append = TRUE, var = "Risk_Pref")

##dumb rev code fxn
domain_rev_code <- function(x, na.rm = FALSE){
  (5-x)
}


## domain relative importance
domains_df <- s2_aux_vars  %>% select(imp_fam:imp_relig) %>% mutate_all(., domain_rev_code)
domains_df <- domains_df %>% row_sums(., contains("imp"), 
                         n = 2, append = TRUE, var = "Imp_Tot")
domains_df <- domains_df %>% rowwise() %>% mutate(., rel_fam = imp_fam/Imp_Tot) %>%
  mutate(., rel_frnd = imp_frnd/Imp_Tot) %>% mutate(., rel_fun = imp_fun/Imp_Tot) %>% 
  mutate(., rel_poli = imp_poli/Imp_Tot) %>% mutate(., rel_wrk = imp_wrk/Imp_Tot) %>% 
  mutate(., rel_relig = imp_relig/Imp_Tot)

scatter.smooth(s2_aux_vars$Ability, s2_aux_vars$ABL2)
## domain relative importance -- just a check.


## These are the reversed items in the full BFAS 

rev_bfas <- c("Vol_2", "Vol_4", "Vol_6", "Vol_8", "With_1", "With_3", "With_5", "With_8", "Comp_1", "Comp_4", "Comp_6", "Comp_7", "Comp_9", "Plt_2", "Plt_4", "Plt_7", "Plt_8", "Plt_9", "Plt_10", "Ind_2", "Ind_3", "Ind_4", "Ind_6", "Ind_9", "Ind_10", "Ord_1", "Ord_5", "Ord_7", "Ord_8", "Enth_2", "Enth_3", "Enth_4", "Enth_6", "Enth_7", "Asrt_3", "Asrt_5", "Asrt_8", "Asrt_10", "Intel_2", "Intel_5", "Intel_6", "Intel_9", "Open_5", "Open_8", "Open_9", "Open_10")

s2_bfas_rec <- s2_bfas  %>% modify_at(., .at = rev_bfas, ~6-.x)
head(cbind(s2_bfas$Open_10, s2_bfas_rec$Open_10))
## note -- I thought there were missing oppenness chunks?


#rm(s2_bfas)

## SCORING 

s2_bfas_rec <- s2_bfas_rec %>% row_means(., contains("Vol"), 
                         n = 5, append = TRUE, var = "Volatility")
s2_bfas_rec <- s2_bfas_rec %>% row_means(., contains("With"), 
                         n = 5, append = TRUE, var = "Withdrawal")
s2_bfas_rec <- s2_bfas_rec %>% row_means(., contains("Comp"), 
                         n = 5, append = TRUE, var = "Compassion")
s2_bfas_rec <- s2_bfas_rec %>% row_means(., contains("Plt"), 
                         n = 5, append = TRUE, var = "Politeness")
s2_bfas_rec <- s2_bfas_rec %>% row_means(., contains("Ind"), 
                         n = 5, append = TRUE, var = "Industriousness")
s2_bfas_rec <- s2_bfas_rec %>% row_means(., contains("Ord"), 
                         n = 5, append = TRUE, var = "Orderliness")
s2_bfas_rec <- s2_bfas_rec %>% row_means(., contains("Enth"), 
                         n = 5, append = TRUE, var = "Enthusiasm")
s2_bfas_rec <- s2_bfas_rec %>% row_means(., contains("Asrt"), 
                         n = 5, append = TRUE, var = "Assitiveness")
s2_bfas_rec <- s2_bfas_rec %>% row_means(., contains("Intel"), 
                         n = 5, append = TRUE, var = "Intellect")
s2_bfas_rec <- s2_bfas_rec %>% row_means(., contains("Open"), 
                         n = 5, append = TRUE, var = "Openness")

LATS <- c("Vol_1", "Vol_3", "Vol_9", "Vol_10", "With_2", "With_5", "With_6", "With_10", "Comp_2", "Comp_3", "Comp_8", "Comp_10", "Plt_2", "Plt_6", "Plt_7", "Plt_8", "Ind_2", "Ind_3", "Ind_4", "Ind_10", "Ord_2", "Ord_3", "Ord_6", "Ord_7", "Enth_2", "Enth_3", "Enth_4", "Enth_7", "Asrt_1", "Asrt_2", "Asrt_5", "Asrt_6", "Intel_1", "Intel_2", "Intel_3", "Intel_6", "Open_1", "Open_3", "Open_9", "Open_10")

## because apparently this is what dplyr needs
s2_LATS <- s2_bfas_rec %>% select(all_of(LATS))

## SCORING 

s2_LATS <- s2_LATS %>% row_means(., contains("Vol"), 
                                 n = 2, append = TRUE, var = "Volatility_L") %>% 
  row_means(., contains("With"), n = 2, append = TRUE, var = "Withdrawal_L") %>% 
  row_means(., contains("Comp"), n = 2, append = TRUE, var = "Compassion_L") %>% 
  row_means(., contains("Plt"),  n = 2, append = TRUE, var = "Politeness_L") %>% 
  row_means(., contains("Ind"),n = 2,append = TRUE,var = "Industriousness_L") %>% 
  row_means(., contains("Ord"), n = 2, append = TRUE, var = "Orderliness_L") %>% 
  row_means(., contains("Enth"), n = 2, append = TRUE, var = "Enthusiasm_L") %>% 
  row_means(., contains("Asrt"), n = 2, append = TRUE, var = "Assitiveness_L") %>% 
  row_means(., contains("Intel"), n = 2, append = TRUE, var = "Intellect_L") %>% 
  row_means(., contains("Open"), n = 2, append = TRUE, var = "Openness_L")


##cleaning it up

s2_possible_attn$box_attn <- if_else(s2_possible_attn$Chk1_1 == "On",  0, 1)
s2_possible_attn$ableM_attn <- if_else(s2_possible_attn$More == -99,  1, 0)
s2_possible_attn$ableL_attn <- if_else(s2_possible_attn$Less == -99,  1, 0)
s2_possible_attn$na_perc_attn <- if_else(s2_possible_attn$total_na >36, 1, 0)
s2_possible_attn <- s2_possible_attn[, -c(5:12)]
s2_possible_attn %>% select(easy_attn2, box_attn:na_perc_attn) -> s2_likely_attn
rmarkdown::paged_table(s2_likely_attn[1:50,])
attn_fail_tot <-  as.matrix(rowSums(s2_likely_attn, na.rm = TRUE)) 
table(as.factor(attn_fail_tot)) %>% as.data.frame() %>% 
  knitr::kable(., "html", col.names = c("# failed", "count"))

## cleaning it up end

## creating our frame of useable scores (not included are demographics)
##### 
scores <- bind_cols(s2_bfas_rec[,102:111], s2_LATS[, 41:50], s2_aux_vars[,c(2,4, 6, 11:13,29, 30)], domains_df[ , -7],  as.data.frame(attn_fail_tot))
scores <- scores %>% filter(V1 == 0) %>% select(-V1)
lats_alphas <- tibble(.rows = 10, row.names = names(s2_bfas_rec[,102:111]))
lats_alphas$alphas <- rep(0, 10)
s2_LATS  %>%  select(Vol_1:Vol_10) %>% 
  psych::alpha() -> y;y$total[1] -> lats_alphas[1,"alphas"]
s2_LATS  %>%  select(With_2:With_10) %>%
  psych::alpha() -> y;y$total[1] -> lats_alphas[2,"alphas"]
s2_LATS  %>%  select(Comp_2:Comp_10) %>% 
  psych::alpha() -> y;y$total[1] -> lats_alphas[3,"alphas"] 
s2_LATS  %>%  select(Plt_2:Plt_8) %>%
  psych::alpha() -> y;y$total[1] -> lats_alphas[4,"alphas"]
s2_LATS  %>%  select(Ind_2:Ind_10) %>% 
  psych::alpha() -> y;y$total[1] -> lats_alphas[5,"alphas"]
s2_LATS  %>%  select(Ord_2:Ord_7) %>% 
  psych::alpha() -> y;y$total[1] -> lats_alphas[6,"alphas"] 
s2_LATS  %>%  select(Enth_2:Enth_7) %>% 
  psych::alpha() -> y;y$total[1] -> lats_alphas[7,"alphas"]
s2_LATS  %>%  select(Asrt_1:Asrt_6) %>% 
  psych::alpha() -> y;y$total[1] -> lats_alphas[8,"alphas"]
s2_LATS  %>%  select(Intel_1:Intel_6) %>% 
  psych::alpha()-> y;y$total[1] -> lats_alphas[9,"alphas"]
s2_LATS  %>%  select(Open_1:Open_10) %>% 
  psych::alpha() -> y;y$total[1] -> lats_alphas[10,"alphas"]

full_alphas <- tibble(.rows = 10, row.names = names(s2_bfas_rec[,102:111]))
full_alphas$alphas <- rep(0, 10)
s2_bfas_rec  %>%  select(Vol_1:Vol_10) %>% 
  psych::alpha() -> y;y$total[1] -> full_alphas[1,"alphas"]
s2_bfas_rec  %>%  select(With_1:With_10) %>%
  psych::alpha() -> y;y$total[1] -> full_alphas[2,"alphas"]
s2_bfas_rec  %>%  select(Comp_1:Comp_10) %>% 
  psych::alpha() -> y;y$total[1] -> full_alphas[3,"alphas"] 
s2_bfas_rec  %>%  select(Plt_1:Plt_10) %>%
  psych::alpha() -> y;y$total[1] -> full_alphas[4,"alphas"]
s2_bfas_rec  %>%  select(Ind_1:Ind_10) %>% 
  psych::alpha() -> y;y$total[1] -> full_alphas[5,"alphas"]
s2_bfas_rec  %>%  select(Ord_1:Ord_10) %>% 
  psych::alpha() -> y;y$total[1] -> full_alphas[6,"alphas"] 
s2_bfas_rec  %>%  select(Enth_1:Enth_10) %>% 
  psych::alpha() -> y;y$total[1] -> full_alphas[7,"alphas"]
s2_bfas_rec  %>%  select(Asrt_1:Asrt_10) %>% 
  psych::alpha() -> y;y$total[1] -> full_alphas[8,"alphas"]
s2_bfas_rec  %>%  select(Intel_1:Intel_10) %>% 
  psych::alpha()-> y;y$total[1] -> full_alphas[9,"alphas"]
s2_bfas_rec  %>%  select(Open_1:Open_10) %>% 
  psych::alpha() -> y;y$total[1] -> full_alphas[10,"alphas"]
s2_bfas_rec %>% select(Volatility:Openness) %>% corrr::correlate() %>% shave -> BFAS_cormat 
s2_LATS %>% select(Volatility_L:Openness_L) %>% corrr::correlate() %>% shave -> LATS_cormat 
scores %>% dplyr::select(Volatility_L:Openness_L)  -> LATS_scores 
scores %>% dplyr::select(Volatility:Openness) -> BFAS_scores
scores %>% dplyr::select(Volatility:Openness_L) -> LATS_BFAS_scores

lats_alphas %>% kbl(caption = "Little BFAS with alphas") %>%
  kable_styling(full_width = F, bootstrap_options = "condensed", html_font = 'Fira Mono' )
full_alphas %>% kbl(caption = "Little BFAS with alphas") %>%
  kable_styling(full_width = F, bootstrap_options = "condensed", html_font = 'Fira Mono' )

## correlation matrix
scores %>% select(Volatility:Openness_L) %>% correlate(., diagonal = 1) %>% round_num(., digits = 2) -> dom_asp_cormat
 

## correlation matrix
dom_asp_cormat  %>%
  kbl(caption = "BFAS with Little BFAS") %>%
  kable_styling(full_width = F, bootstrap_options = "condensed", html_font = 'Fira Mono') %>% 
  scroll_box(width = "750px", height = "100%")
                                                             
  

## build
scores %>% select(Volatility_L:Openness_L,rel_fam:rel_relig) %>%  
  correlate() %>% round_num(., digits = 2) -> life_1_cor
scores %>% select(Volatility_L:Openness_L,imp_fam:imp_relig) %>%
  correlate() %>% round_num(., digits = 2)  -> life_2_cor

## correlation matrix

life_1_cor  %>%
  kbl(caption = "Abs Importance  with Little BFAS") %>%
  kable_styling(full_width = F, bootstrap_options = "condensed", html_font = 'Fira Mono') %>%   scroll_box(width = "750px", height = "100%")


## correlation matrix

life_2_cor  %>%
  kbl(caption = "Little BFAS with Absolute Importance") %>%
  kable_styling(full_width = F, bootstrap_options = "condensed", html_font = 'Fira Mono', ) %>% 
  scroll_box(width = "750px", height = "100%")
## correlation matrix

scores %>% select(Volatility_L:Openness_L, Age:SR_Competence) %>% correlate() %>% 
        sjmisc::round_num(., digits = 2) -> remains_cor
remains_cor  %>%
  kbl(caption = "Little BFAS with The Other Stuff") %>%
  kable_styling(full_width = F, bootstrap_options = "condensed", html_font = 'Fira Mono', ) %>% 
  scroll_box(width = "750px", height = "100%")
```

------------------------------------------------------------------------

# survival <img src='man/figures/logo.png' align="right" height="120" />
## Author: Terry Therneau
## Website creator: Sam Fansler

Github link for original package: https://github.com/therneau/survival
Github link for deployed website: https://github.com/jhu-statprogramming-fall-2023/biostat777-project3-part1-sfansler

The five things I customized in the pkgdown website are:
1. Foreground text color
2. Background color
3. Primary color
4. Navbar tab structure
5. Sidebar tab structure

# Description
Contains the core survival analysis routines, including definition of Surv objects, Kaplan-Meier and Aalen-Johansen (multi-state) curves, Cox models, and parametric accelerated failure time models.

# Exported Functions:
Surv: Create a survival object, usually used as a response variable in a model formula

Surv2: Create a survival object from a timeline style data set. This will almost always be the response variable in a formula.

Surv2data: The multi-state survival functions coxph and survfit allow for two forms of input data. This routine converts between them. The function is normally called behind the scenes when Surv2 is as the response.

aeqSurv: Adjudicate near ties in a Surv object

aareg: Returns an object of class "aareg" that represents an Aalen model.

agreg.fit: These are the the functions called by coxph that do the actual computation. In certain situations, e.g. a simulation, it may be advantageous to call these directly rather than the usual coxph call using a model formula.

agexact.fit: Internal survival functions

attrassign: The "assign" attribute on model matrices describes which columns come from which terms in the model formula. It has two versions. R uses the original version, but the alternate version found in S-plus is sometimes useful.

blogit: Alternate link functions that impose bounds on the input of their link function

bprobit: Alternate link functions that impose bounds on the input of their link function

bcloglog: Alternate link functions that impose bounds on the input of their link function

blog: Alternate link functions that impose bounds on the input of their link function

brier: Compute the Brier score, for a coxph model

basehaz: Compute the Brier score, for a coxph model

cch: Returns estimates and standard errors from relative risk regression fit to data from case-cohort studies. A choice is available among the Prentice, Self-Prentice and Lin-Ying methods for unstratified data. For stratified data the choice is between Borgan I, a generalization of the Self-Prentice estimator for unstratified case-cohort data, and Borgan II, a generalization of the Lin-Ying estimator.

clogit: Estimates a logistic regression model by maximising the conditional likelihood. Uses a model formula of the form case.status~exposure+strata(matched.set). The default is to use the exact conditional likelihood, a commonly used approximate conditional likelihood is provided for compatibility with older software.

cipoisson: Confidence interval calculation for Poisson rates.

cluster: This is a special function used in the context of survival models. It identifies correlated groups of observations, and is used on the right hand side of a formula. This style is now discouraged, use the cluster option instead.

concordance: The concordance statistic compute the agreement between an observed response and a predictor. It is closely related to Kendall's tau-a and tau-b, Goodman's gamma, and Somers' d, all of which can also be calculated from the results of this function.

concordancefit: This is the working routine behind the concordance function. It is not meant to be called by users, but is available for other packages to use. Input arguments, for instance, are assumed to all be the correct length and type, and missing values are not allowed: the calling routine is responsible for these things.

coxph: Fits a Cox proportional hazards regression model. Time dependent variables, time dependent strata, multiple events per subject, and other extensions are incorporated using the counting process formulation of Andersen and Gill.

cox.zph: Test the proportional hazards assumption for a Cox regression model fit (coxph).

coxph.control: This is used to set various numeric parameters controlling a Cox model fit. Typically it would only be used in a call to coxph.

coxph.detail: Returns the individual contributions to the first and second derivative matrix, at each unique event time.

coxph.fit: These are the the functions called by coxph that do the actual computation. In certain situations, e.g. a simulation, it may be advantageous to call these directly rather than the usual coxph call using a model formula.

coxph.wtest: This function is used internally by several survival routines. It computes a simple quadratic form, while properly dealing with missings.

finegray: The Fine-Gray model can be fit by first creating a special data set, and then fitting a weighted Cox model to the result. This routine creates the data set.

format.Surv: The list of methods that apply to Surv objects

frailty: The frailty function allows one to add a simple random effects term to a Cox model.

frailty.gamma: The frailty function allows one to add a simple random effects term to a Cox model.

frailty.gaussian: The frailty function allows one to add a simple random effects term to a Cox model.

frailty.t: The frailty function allows one to add a simple random effects term to a Cox model.

is.Surv: Create a survival object, usually used as a response variable in a model formula. Argument matching is special for this function.

is.na.Surv: The list of methods that apply to Surv objects

is.ratetable: The function verifies not only the class attribute, but the structure of the object.

nsk: Create the design matrix for a natural spline, such that the coefficient of the resulting fit are the values of the function at the knots.

match.ratetable: Internal survival functions

neardate: A common task in medical work is to find the closest lab value to some index date, for each subject.

psurvreg: Density, cumulative distribution function, quantile function and random generation for the set of distributions supported by the survreg function.

qsurvreg: Density, cumulative distribution function, quantile function and random generation for the set of distributions supported by the survreg function.

dsurvreg: Density, cumulative distribution function, quantile function and random generation for the set of distributions supported by the survreg function.

pseudo: Produce pseudo values from a survival curve.

pspline: Specifies a penalised spline basis for the predictor. This is done by fitting a comparatively small set of splines and penalising the integrated second derivative. Traditional smoothing splines use one basis per observation, but several authors have pointed out that the final results of the fit are indistinguishable for any number of basis functions greater than about 2-3 times the degrees of freedom. Eilers and Marx point out that if the basis functions are evenly spaced, this leads to significant computational simplification, they refer to the result as a p-spline.

pyears: This function computes the person-years of follow-up time contributed by a cohort of subjects, stratified into subgroups. It also computes the number of subjects who contribute to each cell of the output table, and optionally the number of events and/or expected number of events in each cell.

ratetableDate: This method converts dates from various forms into the internal form used in ratetable objects.

ratetable: This function supports ratetable() terms in a model statement, within survexp and pyears.

ridge: When used in a coxph or survreg model formula, specifies a ridge regression term. The likelihood is penalised by theta/2 time the sum of squared coefficients. If scale=T the penalty is calculated for coefficients based on rescaling the predictors to have unit variance. If df is specified then theta is chosen based on an approximate degrees of freedom.

royston: Compute the D statistic proposed by Royston and Sauerbrei along with several pseudo- R square values.

rsurvreg: Density, cumulative distribution function, quantile function and random generation for the set of distributions supported by the survreg function.

rttright: For many survival estimands, one approach is to redistribute each censored observation's weight to those other observations with a longer survival time (think of distributing an estate to the heirs). Then compute on the remaining, uncensored data.

statefig: For multi-state survival models it is useful to have a figure that shows the states and the possible transitions between them. This function creates a simple "box and arrows" figure. It's goal was simplicity.

strata: This is a special function used in the context of the Cox survival model. It identifies stratification variables when they appear on the right hand side of a formula.

survSplit: Given a survival data set and a set of specified cut times, split each record into multiple subrecords at each cut time. The new data set will be in ‘counting process’ format, with a start time, stop time, and event status for each record.

survcheck: Perform a set of consistency checks on survival data

survcondense: Counting process data sets can sometimes grow to be unweildy, this can be used to compact one.

survdiff: family of tests, or for a single curve against a known alternative.

survexp: Returns either the expected survival of a cohort of subjects, or the individual expected survival for each subject.

survfit: This function creates survival curves from either a formula (e.g. the Kaplan-Meier), a previously fitted Cox model, or a previously fitted accelerated failure time model.

survfit0: Add the point for a starting time (time 0) to a survfit object's elements. This is useful for plotting.

survfit.formula: Computes an estimate of a survival curve for censored data using the Aalen-Johansen estimator. For ordinary (single event) survival this reduces to the Kaplan-Meier estimate.

coxsurv.fit: This program is mainly supplied to allow other packages to invoke the survfit.coxph function at a ‘data’ level rather than a ‘user’ level. It does no checks on the input data that is provided, which can lead to unexpected errors if that data is wrong.

survfitKM: Internal survival functions

survfitCI: Internal survival functions

survobrien: Peter O'Brien's test for association of a single variable with survival This test is proposed in Biometrics, June 1978.

survpenal.fit: Internal survival functions

survreg: Fit a parametric survival regression model. These are location-scale models for an arbitrary transform of the time variable; the most common cases use a log transformation, leading to accelerated failure time models.

survreg.control: This functions checks and packages the fitting options for survreg

survreg.fit: Internal survival functions

survreg.distributions: List of distributions for accelerated failure models. These are location-scale families for some transformation of time. The entry describes the cdf 

survregDtest: This routine is called by survreg to verify that a distribution object is valid.

tcut: Attaches categories for person-year calculations to a variable without losing the underlying continuous representation

tmerge: A common task in survival analysis is the creation of start,stop data sets which have multiple intervals for each subject, along with the covariate values that apply over that interval. This function aids in the creation of such data sets.

untangle.specials: Given a terms structure and a desired special name, this returns an index appropriate for subscripting the terms structure and another appropriate for the data frame.

yates: Compute population marginal means (PMM) from a model fit, for a chosen population and statistic.

yates_setup: This is a method which is called by the yates function, in order to setup the code to handle a particular model type. Methods for glm, coxph, and default are part of the survival package.

survConcordance: These functions are temporarily retained for compatability with older programs, and may transition to defunct status.

survConcordance.fit: These functions are temporarily retained for compatability with older programs, and may transition to defunct status.

survfitcoxph.fit: This program is mainly supplied to allow other packages to invoke the survfit.coxph function at a ‘data’ level rather than a ‘user’ level. It does no checks on the input data that is provided, which can lead to unexpected errors if that data is wrong.

# Basic example
```{r}
library(survival)

set.seed(123)
event = rbernoulli(100, p = 0.2)
time = rpois(100, 10)
surv_obj = Surv(time, event)
```

This is the source code for the "survival" package in R.  It gets posted to the
comprehensive R archive (CRAN) at intervals, each such posting preceded a
throrough test. (I run the test suite for all 800+ packages that depend on
survival.)  In general, each new push to CRAN will update the second term of
the version number, e.g. 2.40-5 to 2.41-0.  Updates only to the github source
increment after the dash.  (If an error is found in the process of CRAN
submission then the published CRAN version may be x.yy-1 or even x.yy-2 or 3.)
This directory is a shadow of the 'real' respository, which is in mercurial on 
my own machine.  As such I don't use git for pull requests.  I will often 
copy code from a suggestion, however; they don't get ignored!

The vignette2 directory contains material that is not posted to CRAN.
The file "tutorial.Rnw", for instance, requires data from
the mstate package.  Survival is a recommended package, and such packages can 
only depend on other recommended packages.  (This allows for a consistent 
distribution bundle.)  The sas.Rnw vignette has a discussion of compute time and
takes too long to run, etc.

A large portion of the source is found in the noweb directory, and is based on
the literate programming ideas of Knuth. The reason is that it allows more
complete documentation of the methods. I can have things like blocks of
equations, and find having the "real" equations side by side with the code makes
it much easier to get it right.  Anyone who wants to study the methods is 
advised to perform "make code.pdf" in the noweb directory and then look at the 
relevant portion of that pdf file.  Any file in the R or src directories that
starts with an "automatically generated ..." comment should NOT be modified
directly, instead work with the noweb source.  (You will need to have the noweb
package loaded in order to run the Makefile.)

You should be able to install this using the following R code:
library(devtools); install_github("therneau/survival")

Note that good practice would be to make derived files such as R/tmerge.R
"on the fly" using a configure script; that way there would not be a 
danger of someone trying to modify the derived file rather than the actual
source (noweb/tmerge.Rnw).  However, I was not able to create a configure
file that worked reliably on all platforms, and voted for usability rather than
purity.
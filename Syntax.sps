* Encoding: UTF-8.
* Submitted By: Shreya Goel | shreya.goel@columbia.edu

* Syntax File SPSS
* Data Source : NELS88 - National Education Longitudnal Study 1988 (Public Data Source).




* DESCRIPTIVE ANALYSIS.

DATASET ACTIVATE DataSet1.
* Chart Builder: Stacked Bar Plot (More than 50 books stacked by Newspaper have or not have).
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYS35M COUNT()[name="COUNT"] BYS35B MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYS35M=col(source(s), name("BYS35M"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  DATA: BYS35B=col(source(s), name("BYS35B"), unit.category())
  GUIDE: axis(dim(1), label("R'S FAMILY HAS MORE THAN 50 BOOKS"))
  GUIDE: axis(dim(2), label("Count"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("R'S FAMILY HAS A DAILY NEWSPAPER"))
  SCALE: cat(dim(1), include("1", "2"))
  SCALE: linear(dim(2), include(0))
  SCALE: cat(aesthetic(aesthetic.color.interior), include("1", "2"))
  ELEMENT: interval.stack(position(BYS35M*COUNT), color.interior(BYS35B), 
    shape.interior(shape.square))
END GPL.

* Chart Builder: Stacked Bar Plot (Specific Place for study stacked by more than 50 books in house).
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYS35A COUNT()[name="COUNT"] BYS35M MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYS35A=col(source(s), name("BYS35A"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  DATA: BYS35M=col(source(s), name("BYS35M"), unit.category())
  GUIDE: axis(dim(1), label("R'S FAMILY HAS SPECIFIC PLACE FOR STUDY"))
  GUIDE: axis(dim(2), label("Count"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("R'S FAMILY HAS MORE THAN 50 BOOKS"))
  SCALE: cat(dim(1), include("1", "2"))
  SCALE: linear(dim(2), include(0))
  SCALE: cat(aesthetic(aesthetic.color.interior), include("1", "2"))
  ELEMENT: interval.stack(position(BYS35A*COUNT), color.interior(BYS35M), 
    shape.interior(shape.square))
END GPL.

*To understand each category: 

* Chart Builder: Bar Plot - R's family has a daily Newspaper.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYS35B COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYS35B=col(source(s), name("BYS35B"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  GUIDE: axis(dim(1), label("R'S FAMILY HAS A DAILY NEWSPAPER"))
  GUIDE: axis(dim(2), label("Count"))
  SCALE: cat(dim(1), include("1", "2"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(BYS35B*COUNT), shape.interior(shape.square))
END GPL.

* Chart Builder: Pie Chart - R's family has a daily Newspaper.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYS35B COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYS35B=col(source(s), name("BYS35B"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  COORD: polar.theta(startAngle(0))
  GUIDE: axis(dim(1), null())
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("R'S FAMILY HAS A DAILY NEWSPAPER"))
  SCALE: linear(dim(1), dataMinimum(), dataMaximum())
  SCALE: cat(aesthetic(aesthetic.color.interior), include("1", "2"))
  ELEMENT: interval.stack(position(summary.percent(COUNT))), color.interior(BYS35B))
END GPL.

* Chart Builder: Bar Plot - R's family as specific place for study.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYS35A COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYS35A=col(source(s), name("BYS35A"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  GUIDE: axis(dim(1), label("R'S FAMILY HAS SPECIFIC PLACE FOR STUDY"))
  GUIDE: axis(dim(2), label("Count"))
  SCALE: cat(dim(1), include("1", "2"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(BYS35A*COUNT), shape.interior(shape.square))
END GPL.

* Chart Builder: Pie Chart - R's family as specific place for study.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYS35A COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYS35A=col(source(s), name("BYS35A"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  COORD: polar.theta(startAngle(0))
  GUIDE: axis(dim(1), null())
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("R'S FAMILY HAS SPECIFIC PLACE FOR ",
    "STUDY"))
  SCALE: linear(dim(1), dataMinimum(), dataMaximum())
  SCALE: cat(aesthetic(aesthetic.color.interior), include("1", "2"))
  ELEMENT: interval.stack(position(summary.percent(COUNT))), color.interior(BYS35A))
END GPL.

* Chart Builder: Bar Plot - R's Family has More than 50 Books or not.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYS35M COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYS35M=col(source(s), name("BYS35M"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  GUIDE: axis(dim(1), label("R'S FAMILY HAS MORE THAN 50 BOOKS"))
  GUIDE: axis(dim(2), label("Count"))
  SCALE: cat(dim(1), include("1", "2"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(BYS35M*COUNT), shape.interior(shape.square))
END GPL.

* Chart Builder: Pie Chart - R's Family has More than 50 Books or not.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYS35M COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYS35M=col(source(s), name("BYS35M"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  COORD: polar.theta(startAngle(0))
  GUIDE: axis(dim(1), null())
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("R'S FAMILY HAS MORE THAN 50 BOOKS"))
  SCALE: linear(dim(1), dataMinimum(), dataMaximum())
  SCALE: cat(aesthetic(aesthetic.color.interior), include("1", "2"))
  ELEMENT: interval.stack(position(summary.percent(COUNT))), color.interior(BYS35M))
END GPL.

* Chart Builder: Bar Plot - Talks to mother about planning.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYS50B COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYS50B=col(source(s), name("BYS50B"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  GUIDE: axis(dim(1), label("TALK TO MOTHER ABOUT PLANNING H.S. PROG"))
  GUIDE: axis(dim(2), label("Count"))
  SCALE: cat(dim(1), include("0", "1", "2"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(BYS50B*COUNT), shape.interior(shape.square))
END GPL.

* Chart Builder: Pie Chart - Talks to mother about planning.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYS50B COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYS50B=col(source(s), name("BYS50B"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  COORD: polar.theta(startAngle(0))
  GUIDE: axis(dim(1), null())
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("TALK TO MOTHER ABOUT PLANNING H.S. ",
    "PROG"))
  SCALE: linear(dim(1), dataMinimum(), dataMaximum())
  SCALE: cat(aesthetic(aesthetic.color.interior), include("0", "1", "2"))
  ELEMENT: interval.stack(position(summary.percent(COUNT))), color.interior(BYS50B))
END GPL.

* Chart Builder: Bar Plot - Mother / female Gaurdian employment status.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYS4A COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYS4A=col(source(s), name("BYS4A"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  GUIDE: axis(dim(1), label("MOTHER/FEMALE GUARDIAN EMPLOYMENT STATUS"))
  GUIDE: axis(dim(2), label("Count"))
  SCALE: cat(dim(1), include("1", "2", "3", "4"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: interval(position(BYS4A*COUNT), shape.interior(shape.square))
END GPL.

* Chart Builder: Pie Chart - Mother / female Gaurdian employment status.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYS4A COUNT()[name="COUNT"] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYS4A=col(source(s), name("BYS4A"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  COORD: polar.theta(startAngle(0))
  GUIDE: axis(dim(1), null())
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("MOTHER/FEMALE GUARDIAN EMPLOYMENT ",
    "STATUS"))
  SCALE: linear(dim(1), dataMinimum(), dataMaximum())
  SCALE: cat(aesthetic(aesthetic.color.interior), include("1", "2", "3", "4"))
  ELEMENT: interval.stack(position(summary.percent(COUNT))), color.interior(BYS4A))
END GPL.

*Comparison Plots: on reading standardized scores compared based on if R's family has specific space for reading.
STATS SUBGROUP PLOTS SUBGROUP=BYS35A VARIABLES=BYTXRSTD 
/OPTIONS XSIZE=1.75 YSIZE=1.75 YSCALE=90 ALLDATACOLOR=whitesmoke SUBGROUPCOLOR=blue TRANSPARENCY=50
ALLDATAPATTERN=solid SUBGROUPPATTERN=solid BINCOUNT=20 SMOOTHPROP=.05 
MISSING=VARIABLEWISE HISTOGRAM=AREA.

* Chart Builder: Comparison Bar plots comparing student's activity on planning with mother based on mother'semployment status.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYS50B COUNT()[name="COUNT"] BYS4A MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYS50B=col(source(s), name("BYS50B"), unit.category())
  DATA: COUNT=col(source(s), name("COUNT"))
  DATA: BYS4A=col(source(s), name("BYS4A"), unit.category())
  COORD: rect(dim(1,2), cluster(3,0))
  GUIDE: axis(dim(3), label("TALK TO MOTHER ABOUT PLANNING H.S. PROG"))
  GUIDE: axis(dim(2), label("Count"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("MOTHER/FEMALE GUARDIAN EMPLOYMENT ",
    "STATUS"))
  SCALE: cat(dim(3), include("0", "1", "2"))
  SCALE: linear(dim(2), include(0))
  SCALE: cat(aesthetic(aesthetic.color.interior), include("1", "2", "3", "4"))
  SCALE: cat(dim(1), include("1", "2", "3", "4"))
  ELEMENT: interval(position(BYS4A*COUNT*BYS50B), color.interior(BYS4A), 
    shape.interior(shape.square))
END GPL.

* Chart Builder: Line graph of reading standardized scores categorized by if the student looks forward to english class or not.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYTXRSTD BYS70A_New MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYTXRSTD=col(source(s), name("BYTXRSTD"))
  DATA: BYS70A_New=col(source(s), name("BYS70A_New"), unit.category())
  GUIDE: axis(dim(1), label("READING STANDARDIZED SCORE"))
  GUIDE: axis(dim(2), label("Frequency"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("UsuallyLooksForwardToEnglishClass"))
  ELEMENT: line(position(summary.count(bin.rect(BYTXRSTD))), color.interior(BYS70A_New), 
    missing.wings())
END GPL.

* Chart Builder: Line graph of reading standardized scores categorized by talk to mother about planning.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYTXRSTD BYS50B MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYTXRSTD=col(source(s), name("BYTXRSTD"))
  DATA: BYS50B=col(source(s), name("BYS50B"), unit.category())
  GUIDE: axis(dim(1), label("READING STANDARDIZED SCORE"))
  GUIDE: axis(dim(2), label("Frequency"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("TALK TO MOTHER ABOUT PLANNING H.S. ",
    "PROG"))
  SCALE: cat(aesthetic(aesthetic.color.interior), include("0", "1", "2"))
  ELEMENT: line(position(summary.count(bin.rect(BYTXRSTD))), color.interior(BYS50B), 
    missing.wings())
END GPL.

* Chart Builder: Line graph of reading standardized scores categorized by time spent on subjects.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=BYTXRSTD BYS79E MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: BYTXRSTD=col(source(s), name("BYTXRSTD"))
  DATA: BYS79E=col(source(s), name("BYS79E"), unit.category())
  GUIDE: axis(dim(1), label("READING STANDARDIZED SCORE"))
  GUIDE: axis(dim(2), label("Frequency"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("TIME SPENT ON ALL OTH SUBJECTS EACH ",
    "WEEK"))
  SCALE: cat(aesthetic(aesthetic.color.interior), include("0", "1", "2", "3", "4", "5", "6", "7"))
  ELEMENT: line(position(summary.count(bin.rect(BYTXRSTD))), color.interior(BYS79E), 
    missing.wings())
END GPL.


*Descriptive Statistics.
DESCRIPTIVES VARIABLES=BYTXRSTD BYS2A BYS35A BYS35B BYS35M BYS4A BYS36B BYS36C BYS38A BYS50B BYS66A 
    BYS70A BYS80 BYHOMEWK BYS79E BYS4OCC
  /STATISTICS=MEAN STDDEV VARIANCE RANGE MIN MAX SKEWNESS.

*Frequencies of Variables to be tried for Regression Model.
DATASET ACTIVATE DataSet1.
FREQUENCIES VARIABLES=BYTXRSTD BYS2A BYS35A BYS35B BYS35M BYS4A BYS36B BYS36C BYS38A BYS50B BYS66A 
    BYS70A BYS80 BYHOMEWK BYS79E BYS4OCC
  /ORDER=ANALYSIS.










* CLEANING THE DATA AND REGRESSION MODELS


*Model 1 - Home Demographics and how they affect Standardised reading scores
*Cleaning Y variable - using select cases which are less than 100, missing values are coded as 999.998

DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter_$=(BYTXRSTD < 100).
VARIABLE LABELS filter_$ 'BYTXRSTD < 100 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

*x1=BYS35A. Select cases less than 3 to omit missing values. 1=Have, 2=Don’t Have. Dummy variables=2, reference category = don’t have.

USE ALL.
COMPUTE filter_$=(BYS35A < 3).
VARIABLE LABELS filter_$ 'BYS35A < 3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYS35A 
ROOTNAME1=BYS35A 
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="x".

*x2=BYS35B. Select cases less than 3 to omit missing values. 1=Have, 2=Don’t Have. Dummy variables=2, reference category = don’t have.

USE ALL.
COMPUTE filter_$=(BYS35B < 3).
VARIABLE LABELS filter_$ 'BYS35B < 3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYS35B 
ROOTNAME1=BYS35B 
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="x1".


*x3=BYS35M. Select cases less than 3 to omit missing values. 1=Have, 2=Don’t Have. Dummy variables=2, reference category = don’t have.

USE ALL.
COMPUTE filter_$=(BYS35M < 3).
VARIABLE LABELS filter_$ 'BYS35M < 3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYS35M 
ROOTNAME1=BYS35M 
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="x".

*Model 1: Regression. (reference category is don’t haves and is stated above)

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA COLLIN TOL
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT BYTXRSTD
  /METHOD=ENTER BYS35A_1 BYS35B_1 BYS35M_1
  /RESIDUALS HISTOGRAM(ZRESID) NORMPROB(ZRESID).

*Model 2,3: Student efforts towards reading to predict Standardised reading scores

*x1=BYS66A. In advanced Enriched English. 1=Yes, 2=No. So, select Cases less than 3 to omit missing values. Dummy Code the variable. Reference is “NO”

USE ALL.
COMPUTE filter_$=(BYS66A < 3).
VARIABLE LABELS filter_$ 'BYS66A < 3 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYS66A 
ROOTNAME1=BYS66A 
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="IN_ADVANCED_ENGLISH".

*x2=BYS70A. Select cases less than 5 to omit missing values. Recode - Agree and Strongly agree as 1, disagree and strongly disagree as 2. Reference category is 2 - disagree.

USE ALL.
COMPUTE filter_$=(BYS70A < 5).
VARIABLE LABELS filter_$ 'BYS70A < 5 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

RECODE BYS70A (1=1) (2=1) (3=2) (4=2) INTO BYS70A_New.
VARIABLE LABELS  BYS70A_New 'UsuallyLooksForwardToEnglishClass'.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYS70A_New 
ROOTNAME1=BYS70A_ 
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="UsuallyLooksForwardToEnglishClass".

*x3=BYS80. How much reading do you do on your own. 0=None, 1=1 hour or less. 2=2 hours, 3=3 hours, 4=4-5 hours, 5=6 hours. Select cases less than 6 to omit missing values. Dummy Code the variable. Reference category is 1 which is none.

USE ALL.
COMPUTE filter_$=(BYS80 < 6).
VARIABLE LABELS filter_$ 'BYS80 < 6 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYS80 
ROOTNAME1=BYS80_ 
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="AmountOfReadingSelf".

*x4=BYHOMEWK. Select cases less than 9 to omit missing values. Create dummy variables: 1=None, 2=.5-1.99 hours, 3=2-2.99 hours, 4=3-5.99 hours, 5=5.5-10.49 hours, 6=10.5-12.99 hours, 7=13-20.99 hours, 8=21 or more hours. Reference category is None.

USE ALL.
COMPUTE filter_$=(BYHOMEWK <  9).
VARIABLE LABELS filter_$ 'BYHOMEWK <  9 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYHOMEWK 
ROOTNAME1=BYHOMEWK_ 
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="HoursSpentOnHomework".

*Model 2: Regression. (reference category stated in each variable above)

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA COLLIN TOL
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT BYTXRSTD
  /METHOD=ENTER BYS66A_1 BYS70A__1 BYS80__2 BYS80__3 BYS80__4 BYS80__5 BYS80__6 BYHOMEWK__2 
    BYHOMEWK__3 BYHOMEWK__4 BYHOMEWK__5 BYHOMEWK__6 BYHOMEWK__7 BYHOMEWK__8
  /RESIDUALS HISTOGRAM(ZRESID) NORMPROB(ZRESID).

*Model 3: Regression. Due to high VIFs we remove BYHOMEWK_4 to see if the Collinearity improves.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA COLLIN TOL
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT BYTXRSTD
  /METHOD=ENTER BYS66A_1 BYS70A__1 BYS80__2 BYS80__3 BYS80__4 BYS80__5 BYS80__6 BYHOMEWK__2 BYHOMEWK__3 BYHOMEWK__5 BYHOMEWK__6 BYHOMEWK__7 BYHOMEWK__8
   /RESIDUALS HISTOGRAM(ZRESID) NORMPROB(ZRESID).

*Model 4,5: Parents’ Involvement to predict Reading Standardized Score

*x1= BYS4A . Select Cases less than 5. Dummy Code. 1=working, 2=unemployed, 3=retired, 4=disabled. Missing values omitted, 2=unemployed used as reference category.
DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter_$=(BYS4A < 5).
VARIABLE LABELS filter_$ 'BYS4A < 4 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYS4A 
ROOTNAME1=BYS4A 
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="MotherEmploymentStatus".

*x2=BYS36B. Discuss School Activities With Parents. Select cases less than 4. Dummy Code. 1=No, 2=once or twice, 3=three or more times, reference category 1=No.

USE ALL.
COMPUTE filter_$=(BYS36B < 4).
VARIABLE LABELS filter_$ 'BYS36B < 4 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYS36B 
ROOTNAME1=BYS36B 
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="DiscussSchoolActivitiesWithParents".

*x3=BYS36C. Discuss Things Studied in Class With Parents. Select cases less than 4. Dummy Code: 1=No, 2=once or twice, 3=three or more times. Missing values omitted, reference category 1=No.

USE ALL.
COMPUTE filter_$=(BYS36C < 4).
VARIABLE LABELS filter_$ 'BYS36C < 4 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYS36C 
ROOTNAME1=BYS36C 
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="DiscussStudiesWithParents".

*x4 = BYS38A. How often parents check on R's homework. Recoded as 1=never, 2=rarely, 3=sometimes, 4=often. Missing values omitted, 1=never, used as reference category. 

USE ALL.
COMPUTE filter_$=(BYS38A < 5).
VARIABLE LABELS filter_$ 'BYS38A < 5 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

STRING BYS38A_New (A8).
RECODE BYS38A (1='4') (2='3') (3='2') (4='1') INTO BYS38A_New.
VARIABLE LABELS  BYS38A_New 'HowOftenParentsCheckOnHomework'.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYS38A_New 
ROOTNAME1=BYS38B 
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="HowOftenParentsCheckHomework".

*x5=BYS50B. Talks to Mother About Planning High School Courses. 1=No, 2=once or twice, 3=three or more times; 1=No used as reference category, missing values omitted..

USE ALL.
COMPUTE filter_$=(BYS50B < 4).
VARIABLE LABELS filter_$ 'BYS50B < 4 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYS50B 
ROOTNAME1=BYS50B
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="TalksToMotherAboutChoosingHighSchoolCourses".

*Model 4: Regression.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA COLLIN TOL
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT BYTXRSTD
  /METHOD=ENTER BYS4A_1 BYS4A_3 BYS4A_4 BYS36B_2 BYS36B_3 BYS36C_2 BYS36C_3 BYS50B_2 BYS50B_3 
    BYS38B_3 BYS38B_4 BYS38B_5
  /RESIDUALS HISTOGRAM(ZRESID) NORMPROB(ZRESID).

*Recode/Transform due to collinearity issues and remove Retired factor level due to non-significance.

*X2=BYS36B. Discuss School Activities With Parents. 1=No, 2=once or twice AND three or more times; reference category 1=No.

USE ALL.
COMPUTE filter_$=(BYS36B < 4).
VARIABLE LABELS filter_$ 'BYS36B < 4 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

STRING BYS36B_N (A8).
RECODE BYS36B (1='1') (2='2') (3='2') INTO BYS36B_N.
VARIABLE LABELS  BYS36B_N 'DiscussSchoolActivitiesWithParents'.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYS36B_N 
ROOTNAME1=BYS36B_N
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="DiscussSchoolActivitiesWithParents".

*X3=BYS34C. Discuss Things Studied In Class With Parents 1=No, 2=once or twice AND three or more times, 1=NO used as reference category.

USE ALL.
COMPUTE filter_$=(BYS36C < 4).
VARIABLE LABELS filter_$ 'BYS36C < 4 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

STRING BYS36C_N (A8).
RECODE BYS36C (1='1') (2='2') (3='2') INTO BYS36C_N.
VARIABLE LABELS  BYS36C_N 'DiscussStudiesWithParents'.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYS36C_N
ROOTNAME1=BYS36C_N
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="DiscussStudiesWithParents".

*X4 = BYS38A. How often parents check on R's homework. Recoded as 1=never OR rarely, 2=sometimes OR often. 1=never, used as reference category. 

USE ALL.
COMPUTE filter_$=(BYS38A < 5).
VARIABLE LABELS filter_$ 'BYS38A < 5 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

STRING BYS38A_N (A8).
RECODE BYS38A (1='1') (2='1') (3='2') (4='2') INTO BYS38A_N.
VARIABLE LABELS  BYS38A_N 'HowOftenParentsCheckOnHomework'.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYS38A_N 
ROOTNAME1=BYS38B_N
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="HowOftenParentsCheckHomework".

*X5=BYS50B. Talk To Mother About Planning High School Courses. 1=No, 2=once or twice ANDthree or more times, 1=No used for reference category.

USE ALL.
COMPUTE filter_$=(BYS50B < 4).
VARIABLE LABELS filter_$ 'BYS50B < 4 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

STRING BYS50B_N (A8).
RECODE BYS50B (1='1') (2='2') (3='2') INTO BYS50B_N.
VARIABLE LABELS  BYS50B_N 'TalkToMotherAboutChoosingHighSchoolCourses'.
EXECUTE.

SPSSINC CREATE DUMMIES VARIABLE=BYS50B_N
ROOTNAME1=BYS50B_N
/OPTIONS ORDER=A USEVALUELABELS=YES USEML=YES OMITFIRST=NO
MACRONAME1="TalksToMotherAboutChoosingHighSchoolCourses".

*Model 5 : on re-coding the vifs improve but the adjusted r square decreases by 3% which is not ideal

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA COLLIN TOL
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT BYTXRSTD
  /METHOD=ENTER BYS4A_1 BYS4A_4 BYS36B_N_3 BYS36C_N_3 BYS38B_N_3 BYS50B_N_3
  /RESIDUALS HISTOGRAM(ZRESID) NORMPROB(ZRESID).

*Model 6: including all variables from models 1,3,5

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA COLLIN TOL
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT BYTXRSTD
  /METHOD=ENTER BYS35A_1 BYS35B_1 BYS35M_1 
BYS66A_1 BYS70A__1 BYS80__2 BYS80__3 BYS80__4 BYS80__5 BYS80__6 
BYHOMEWK__2 BYHOMEWK__3 BYHOMEWK__5 BYHOMEWK__6 
BYHOMEWK__7 BYHOMEWK__8
BYS4A_1 BYS4A_4 BYS36B_N_3 BYS36C_N_3 BYS38B_N_3 BYS50B_N_3
  /RESIDUALS HISTOGRAM(ZRESID) NORMPROB(ZRESID).

*Model 7: Final Model. BYHOMEWK__2: non significant p value = .247 and BYHOMEWK__3: non significant p value .964. so remove these 2 and we have everything significant, with no collinearity issues.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA COLLIN TOL
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT BYTXRSTD
  /METHOD=ENTER BYS35A_1 BYS35B_1 BYS35M_1 
BYS66A_1 BYS70A__1 BYS80__2 BYS80__3 BYS80__4 BYS80__5 BYS80__6  
    BYHOMEWK__5 BYHOMEWK__6 BYHOMEWK__7 BYHOMEWK__8
BYS4A_1 BYS4A_4 BYS36B_N_3 BYS36C_N_3 BYS38B_N_3 
BYS50B_N_3
  /RESIDUALS HISTOGRAM(ZRESID) NORMPROB(ZRESID).
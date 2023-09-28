# DSC381ProbabilityandSimulation-BasedInference

## Table of Contents

- [Hypothesis testing](#Hypothesis-testing)
- [Confidence Interval](#Confidence-Interval)
- [HW 4 Solutions](#HW4-Solutions)

## Hypothesis testing
- The null hypothesis (H0) often represents either a skeptical perspective or a claim of “no difference” to be tested.
- The alternative hypothesis (HA) represents an alternative claim under consideration and is often represented by a range of possible values for the value of interest.

### 11.1 Sex discrimination case study
|  Sex   | Promoted | Not Promoted | Total |
|------- |--------- |------------- |------ |
|  Male  |    21    |      3       |  24   |
| Female |    14    |     10       |  24   |
| Total  |    35    |     13       |  48   |
- p: population proportion
- p̂(p-hat): sample proportion
- μ: population mean
- x̄(X Bar): sample mean
- H0 : Null hypothesis. The variables sex and decision are independent. They have no relationship, and the observed difference between the proportion of males and females who were promoted, 29.2%, was due to the natural variability inherent in the population.
- HA : Alternative hypothesis. The variables sex and decision are not independent. The difference in promotion rates of 29.2% was not due to natural variability, and equally qualified female personnel are less likely to be promoted than male personnel.

![Alt Text](Image/Randomization-Test-for-a-Difference-in-Proportions-01.png)

Question: How often would you observe a difference of at least 29.2% (0.292)? Often, sometimes, rarely, or never?

Answer: It appears that a difference of at least 29.2% under the null hypothesis would only happen about 2% of the time(StatKey shows 2.5%). Such a low probability indicates that observing such a large difference from chance alone is rare.

- If H0, the Null hypothesis is true: Sex has no effect on promotion decisions, and we observed a difference that is so large that it would only happen rarely.
- If HA, the Alternative hypothesis is true: Sex has an effect on promotion decisions, and what we observed was actually due to equally qualified female candidates being discriminated against in promotion decisions, which explains the large difference of 29.2%.

Result: When we conduct formal studies, we reject a null position

### 11.2 Opportunity cost case study
| Group    | Buy Video | Not Buy Video | Total |
|----------|-----------|---------------|-------|
| Control  |    56     |      19       |  75   |
| Treatment|    41     |      34       |  75   |
| Total    |    97     |      53       |  150  |

| Group    | Buy Video | Not Buy Video | Total |
|----------|-----------|---------------|-------|
| Control  |    0.747  |      0.253    |   1   |
| Treatment|    0.547  |      0.453    |   1   |
- H0 : Null hypothesis. Reminding students that they can save money for later purchases will not have any impact on students’ spending decisions.
- HA : Alternative hypothesis. Reminding students that they can save money for later purchases will reduce the chance they will continue with a purchase.

We can construct a point estimate for this difference as (T for treatment and C for control):
- pˆT −pˆC =34/75−19/75=0.453−0.253=0.200
![Alt Text](Image/Randomization-Test-for-a-Difference-in-Proportions-02.png)

Result: Under the null hypothesis (no treatment effect), we’d observe a difference of at least +20% about 0.6%(StatKey shows 1%) of the time. That is really rare! Instead, we will conclude the data provide strong evidence there is a treatment effect: reminding students before a purchase that they could instead spend the money later on something else lowers the chance that they will continue with the purchase.

## Confidence Interval
- Statistics: Assuming we have a good description of the experimental data as a r.v.’s, we try to report inference on the parameters, like p etc.

- Confidence Interval: we create what is called a confidence interval, which is a range of plausible values where we may find the true population value. The process for creating a confidence interval is based on understanding how a statistic (here the sample proportion p̂) varies around the parameter (here the population proportion p) when many different statistics are calculated from many different samples.

- Statistic (Sample Proportion - p̂): A statistic is a numerical summary or measurement calculated from a sample of data. In the context of creating a confidence interval, the statistic of interest is the sample proportion (p̂). This is the proportion of a specific characteristic or attribute within a single sample, and it serves as an estimate of the population proportion (p).

- Parameter (Population Proportion - p): A parameter is a numerical value that describes a characteristic of an entire population. In this context, the parameter of interest is the population proportion (p). It represents the true proportion of the characteristic within the entire population, which is often unknown and needs to be estimated using sample data.

- Sample Proportion (p̂): You randomly select 500 residents and ask them if they support the new transportation system. Out of the 500 respondents, 300 say they support it.

p̂ = (Number of supporters in the sample) / (Total sample size)

p̂ = 300 / 500

p̂ = 0.60 (or 60%)

The sample proportion "p̂" is also 0.60 or 60%, indicating that 60% of the sampled residents support the new transportation system.

- Population Proportion (p): This is the proportion of the entire city's population that supports the new public transportation system. Suppose that, in the entire city, 60,000 people support it.

p = (Number of supporters in the entire population) / (Total population)

p = 60,000 / 100,000

p = 0.60 (or 60%)

So, the population proportion "p" is 0.60 or 60%, meaning 60% of the entire population supports the new transportation system.

### 12.1 Medical consultant case study
One consultant tried to attract patients by noting the average complication rate for liver donor surgeries in the US is about 10%, but her clients have had only 3 complications in the 62 liver donor surgeries she has facilitated. She claims this is strong evidence that her work meaningfully contributes to reducing complications

We will let p represent the true complication rate for liver donors working with this consultant. (The “true” complication rate will be referred to as the parameter.) We estimate p using the data, and label the estimate p̂.

The sample proportion for the complication rate is 3 complications divided by the 62 surgeries the consultant has worked on: p̂ = 3/62 = 0.048.

- Parameter: “true” value of interest.

- Statistic: We typically estimate the parameter using a point estimate from a sample of data. The point estimate is also known as the statistic.

For example, we estimate the probability p of a complication for a client of the medical consultant by examining the past complication rates of her clients:

p̂ = 3/62 = 0.048 is used to estimate p

![Alt Text](Image/Confidence-Interval-for-a-Proportion.png)
Question: The original claim was that the consultant’s true rate of complication was un- der the national rate of 10%. Does the interval estimate of 0 to 11.3% for the true probability of complication indicate that the surgical consultant has a lower rate of complications than the national average? Explain.

Answer: No. Because the interval overlaps 10%, it might be that the consultant’s work is associated with a lower risk of complications, or it might be that the consultant’s work is associated with a higher risk (i.e., greater than 10%) of complications! Additionally, as previously mentioned, because this is an observational study, even if an association can be measured, there is no evidence that the consultant’s work is the cause of the complication rate (being higher or lower).

## HW 4 Solutions

test
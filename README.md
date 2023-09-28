# DSC381ProbabilityandSimulation-BasedInference

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
- Population Proportion (p): This is the proportion of the entire city's population that supports the new public transportation system. Suppose that, in the entire city, 60,000 people support it.

p = (Number of supporters in the entire population) / (Total population)
p = 60,000 / 100,000
p = 0.60 (or 60%)

- So, the population proportion "p" is 0.60 or 60%, meaning 60% of the entire population supports the new transportation system.

- Sample Proportion (p̂): You randomly select 500 residents and ask them if they support the new transportation system. Out of the 500 respondents, 300 say they support it.

p̂ = (Number of supporters in the sample) / (Total sample size)

p̂ = 300 / 500

p̂ = 0.60 (or 60%)

- The sample proportion "p̂" is also 0.60 or 60%, indicating that 60% of the sampled residents support the new transportation system.





1. In Statistic, parameters of the population are often estimated based on the sample
2. Don’t know entire population -> draw a sample -> estimate parameters of the population
- parameters of the population: mean, variance and so on

### Example:
1. Want to know height of soccer player in USA.
2. Draw a sample, mean of the sample is most likely different from that of the population.
3. Draw several samples, each sampling is likely to come out with a difference mean.
4. Try to find a range in which the true value will lie with a high probability.
- High probability: 99%, 95%…
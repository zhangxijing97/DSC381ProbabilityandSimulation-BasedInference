# DSC381ProbabilityandSimulation-BasedInference

## Hypothesis testing
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

## Confidence Interval

1. In Statistic, parameters of the population are often estimated based on the sample
2. Don’t know entire population -> draw a sample -> estimate parameters of the population
- parameters of the population: mean, variance and so on

### Example:
1. Want to know height of soccer player in USA.
2. Draw a sample, mean of the sample is most likely different from that of the population.
3. Draw several samples, each sampling is likely to come out with a difference mean.
4. Try to find a range in which the true value will lie with a high probability.
- High probability: 99%, 95%…
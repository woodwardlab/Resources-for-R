library(pwr)

help("pwr.anova.test")

## [VARIABLE OF INTEREST] and PT 
# u - numerator df (p - 1; NetworkLD, PPVT, Intercept, 3-1 = 2)
# v - demoniator df (n - p; ? - 3)
# f2 - Cohens f2; small 0.02, medium 0.15, large 0.35 for linear regression
# ^ we don't know the effect size - we'll test all 3 to get a range

# Testing for Small Effect Size = 0.02
pwr.f2.test(u = 2, f2 = 0.02, sig.level = 0.05, power = 0.8)
# v = 482, which means 485 subjects

# Testing for Medium Effect Size = 0.15
pwr.f2.test(u = 2, f2 = 0.15, sig.level = 0.05, power = 0.8)
# v = 64.3, which means 68 subjects 

# Testing for Large Effect Size = 0.35
pwr.f2.test(u = 2, f2 = 0.35, sig.level = 0.05, power = 0.8)
# v = 28, which means 31 subjects 
require(xtable)
my_df <- data.frame(x1 = rnorm(20), x2 = rnorm(20))
xtable(summary(my_df))
m1 <- lm(x1~x2, data = my_df)
cooks.distance(m1)

# Types of Intervals #
predict(m1, newdata = data.frame(x2 = rnorm(20)), interval = "confidence")
predict(m1, newdata = data.frame(x2 = rnorm(20)), interval = "predict")

# Auto Plots #
old_par <- par(mfrow=c(2,2))
plot(m1)
par(old_par)

# Manuall Plots #
# index plot 
plot(m1$residuals)
# residual plot
plot(m1$fitted.values, m1$residuals)
# QQ plot
qqnorm(m1$residuals)
qqline(m1$residuals, col = "red")
# Cook's D
plot(cooks.distance(m1))


## Longley's Data ##
plot(density((longley$Employed)))
plot(density(longley$Population))
plot(longley$Employed, longley$GNP)
plot(longley$Population, longley$GNP)

lm1 <- lm(GNP ~ Employed + Population, data = longley)
xtable(summary(lm1))
# no meaning at intercept!
old_par <- par(mfrow=c(2,2))
plot(lm1)
par(old_par)

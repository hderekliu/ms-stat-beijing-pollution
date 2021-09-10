plot.ts(max_pollutants_per_day$PM2.5)
title(main = "Time Series of Max PM2.5 Level per Day")

plot.ts(max_pollutants_per_month$PM2.5)
title(main = "Time Series of Max PM2.5 Level per Month")

plot.ts(mean_of_max_pollutants_per_month$PM2.5)
title(main = "Time Series of Average of Max Daily PM2.5 Level per Month")

plot(pm2.5_decompose)

sarima(diff(diff(log(pm2.5ts), lag=6)), 0,1,0,0,1,1,12)

plot.ts(week.ts)
title(main = "Time Series of Average of Max Daily PM2.5 Level per Week")

plot.ts(log(week.ts))
title(main = "Time Series of Log of Average of Max Daily PM2.5 Level per Week")

acf2(log(week.ts))
title(main = "ACF/PACF of Log of Average of Max Daily PM2.5 Level per Week")

sarima(log(week.ts), 1,0,1, 0,0,1,26)

autoplot(train_forecast_arima) + labs(x = "Time", y = "PM2.5 (ug/m3)", title = "Forecast of PM2.5 levels from 2017 - 2018 (SARIMA(1,0,1)(0,0,1)[52]")

sarima.for(log(week.ts),52,1,0,1,0,0,1,26)
title(main = "Forecast of PM2.5 levels from 2017 - 2018 (SARIMA(1,0,1)(0,0,1)[26]")

plot(decompose(week.ts))

sarima.for(log(week.ts),52,1,0,1,0,0,1,52)
title(main = "Forecast of PM2.5 levels from 2017 - 2018 (SARIMA(1,0,1)(0,0,1)[52]")

plot.ts(diff(log(week.ts)))
title(main = "Time Series of Difference of Log of Average of Max Daily PM2.5 Level per Week")

acf(diff(log(week.ts)))

sarima(diff(log(week.ts)), 0,0,1, 0,0,1,52)
sarima.for(week.ts,52,0,0,1,0,0,1,52)
title(main = "Forecast of PM2.5 levels from 2017 - 2018 (SARIMA(0,0,1)(0,0,1)[52]")




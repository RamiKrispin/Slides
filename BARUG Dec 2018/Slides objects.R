
md2 <- ts_backtesting(ts.obj = USgas,
                      h = 60,
                      window_size = 12,
                      periods = 6)

md3 <- ts_backtesting(ts.obj = USgas,
                      periods = 6, 
                      error = "RMSE",
                      window_size = h1,
                      h = h2,
                      a.arg = list(stepwise = FALSE, 
                                   approximation = FALSE,
                                   D = 1),
                      e.arg = list(opt.crit = "mse"),
                      n.arg = list(P = 2, 
                                   p =1,
                                   repeats = 100),
                      h.arg = list(errorMethod = "RMSE",
                                   verbos = FALSE))


save(md2, md3, file = "/Users/rami/packages/Slides/BARUG Dec 2018/backtesting.RData")

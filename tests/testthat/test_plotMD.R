context("plotMD")
library(modi)

test_that("Plot of Mahalanobis distance", {
  data(bushfirem, bushfire.weights)
  det.res <- TRC(bushfirem, weights = bushfire.weights)
  pout <- PlotMD(det.res$dist, ncol(bushfirem))
  expect_type(pout, type = "list")
})

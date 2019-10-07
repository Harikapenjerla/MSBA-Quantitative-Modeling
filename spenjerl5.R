
library(lpSolveAPI)

lprec <- read.lp("spenjerl5.lp")


solve(lprec)

get.objective(lprec)

get.variables(lprec)

get.constraints(lprec)
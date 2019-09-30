

library(lpSolveAPI)

lprec <- read.lp("spenjerl4.lp")


solve(lprec)

get.objective(lprec)

get.variables(lprec)

get.constraints(lprec)


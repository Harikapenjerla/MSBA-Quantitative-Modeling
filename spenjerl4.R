

library(lpSolveAPI)

lprec <- read.lp("spenjerl4.lp")
#set.bounds(lprec, lower = c(10, 10), upper= NULL, columns(7:8))

solve(lprec)

get.objective(lprec)

get.variables(lprec)

get.constraints(lprec)


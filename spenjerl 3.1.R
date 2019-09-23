### Weigelt Production

library(lpSolveAPI)

lprec <- read.lp("spenjerl 3.1.lp")

solve(lprec)

get.objective(lprec)

get.variables(lprec)

get.constraints(lprec)

# To find shadow price and reduce cost 

get.sensitivity.rhs(lprec)



get.sensitivity.obj(lprec)

# To find dual Solution

get.dual.solution(lprec)

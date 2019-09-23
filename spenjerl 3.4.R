### Dual Solution for Assignment-3

library(lpSolveAPI)

lprec <- read.lp("sensitivity.lp")

# set boundaries for each variables

set.bounds(lprec, lower=c(0, 0, 0, 0, 0, 0, 0, 0, 0, -Inf, -Inf), upper = c(Inf, Inf, Inf, Inf, Inf, Inf, Inf, Inf, Inf, Inf, Inf), columns = (1:11))   # for security model.

solve(lprec)

get.objective(lprec)

get.variables(lprec)

get.constraints(lprec)

get.sensitivity.rhs(lprec)

get.sensitivity.obj(lprec)

get.dual.solution(lprec)

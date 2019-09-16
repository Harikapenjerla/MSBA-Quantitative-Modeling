library(lpSolveAPI)
lprec <- make.lp(12,9)
set.objfn(lprec, c(420, 360, 300, 420, 360, 300, 420, 360, 300 ))
lp.control(lprec,sense='max')
set.row(lprec, 1, c(1, 1, 1), indices = c(1, 2, 3))  #capacity  
set.row(lprec, 2, c(1, 1, 1), indices = c(4, 5, 6))
set.row(lprec, 3, c(1, 1, 1), indices = c(7, 8, 9))
set.row(lprec, 4, c(20, 15, 12), indices = c(1, 2, 3))    #sq.ft
set.row(lprec, 5, c(20, 15, 12), indices = c(4, 5, 6))
set.row(lprec, 6, c(20, 15, 12), indices = c(7, 8, 9))
set.row(lprec, 7, c(1, 1, 1), indices = c(1, 2, 3))       #sales
set.row(lprec, 8, c(1, 1, 1), indices = c(4, 5, 6))
set.row(lprec, 9, c(1, 1, 1), indices = c(7, 8, 9))
set.row(lprec, 10, c(1/750, 1/750, 1/750, -1/900, -1/900, -1/900), indices = c(1, 2, 3, 4, 5, 6))       # for not to layoff
set.row(lprec, 11, c(1/750, 1/750, 1/750, -1/450, -1/450, -1/450), indices = c(1, 2, 3, 7, 8, 9))
set.row(lprec, 11, c(1/900, 1/900, 1/900, -1/450, -1/450, -1/450), indices = c(4, 5, 6, 7, 8, 9))
#rhs
 rhs <- c(750, 900, 450, 13000, 12000, 5000, 900, 1200, 750, 0, 0, 0)
 set.rhs(lprec, rhs)
 #setting constraint
 
 set.constr.type(lprec, rep("<=", 12))

 
 lp.rownames <- c("capacityfor1","capacityfor2", "capacityfor3", "sq.ft 1", "sq.ft 2", "sq.ft 3", "sales forcast1", "sales forcast12", "sales forcast3", "1", "2", "3")
 lp.colnames <- c("P1l", "Pm", "#P1S", "P2l", "P2m", "#P2S", "P3l", "P3m", "#P3S")
 dimnames(lprec) <- list(lp.rownames, lp.colnames)
 
lprec
solve(lprec)
# --> A return value of 0 indicates that the model was successfully solved.

# let's look at objecrtive function value
get.objective(lprec)


#  optimal decision variable values
get.variables(lprec)

# how about constraints
get.constraints(lprec)

# look at surplus for each constraint or binding constraints
get.constraints(lprec) - rhs


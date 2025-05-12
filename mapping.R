load("full.set.RData")
library(data.table)

my.map <- my.dt[, match(paste(HouseholdID, empowerment.V034, sep = "."), PersonID.unique), ]

my.dt[, husband.thinks.IPV.can.be.justified.if.she.goes.out := empowerment.MV744A[my.map], ]
my.dt[, husband.thinks.IPV.can.be.justified.if.she.neglects.child := empowerment.MV744B[my.map], ]
my.dt[, husband.thinks.IPV.can.be.justified.if.she.argues := empowerment.MV744C[my.map], ]
my.dt[, husband.thinks.IPV.can.be.justified.if.she.refuses.sex := empowerment.MV744D[my.map], ]
my.dt[, husband.thinks.IPV.can.be.justified.if.she.burns.the.food := empowerment.MV744E[my.map], ]

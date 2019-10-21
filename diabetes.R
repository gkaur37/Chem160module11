diabetes <- read.table("diabetes.txt",header=T)
model<-1m(glucose~.,data=diabetes)
step(model)
mode<-1m(glucose~1,data=diabetes)
step(model,direction="forward",
	scope=list(upper=terms(glucose~.,data=diabetes)))

x1 <- readline(prompt = "Enter x1: ")
y1 <- readline(prompt = "Enter y1: ")
x2 <- readline(prompt = "Enter x2: ")
y2 <- readline(prompt = "Enter y2: ")
n<-readline(prompt = "Enter n: ")
vect<-c(sample(x1:x2,as.integer(n),TRUE),sample(y1:y2,as.integer(n),TRUE))
mat<-matrix(vect,as.integer(n),2,FALSE)
mat
plot(mat)

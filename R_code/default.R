default <- read.csv("default.csv", header = TRUE, sep = ",", dec = ".", stringsAsFactors = TRUE)
library(ggplot2)
###HISTOGRAMMES
qplot(default, data=default, main="Distribution of default", xlab="default", ylab="nb of instances", binwidth=9, fill=default)



qplot(age, data=default, main="Age distribution", xlab="Age", ylab="default", binwidth=9, fill=default)

qplot(income, data=default, main="Distibution des revenus", xlab="revenus en milliers de $", ylab="default", binwidth=100, fill=default)

qplot(employ, data=default, main="employ distribution", xlab="Years", ylab="default", binwidth=9, fill=default)

qplot(creddebt, data=default, main="distribution du ratio debit/credit", xlab="ratio D/C", ylab="Nombre d'instances", binwidth=4.5, fill=default)

qplot(othdebt, data=default, main="Distibution des autres dettes", xlab="Valeur des dettes", ylab="Nombre d'instances", binwidth=10, fill=default)

qplot(debtinc, data=default, main="Credit card debit distribution", xlab="debit in k $", ylab="default", binwidth=9, fill=default)

qplot(address, data=default, main="Distibution du nbe d'ann?e ? l'adresse", xlab="nbe ann?e adresse actuelle", ylab="Nombre d'instances", binwidth=9, fill=default)

qplot(ncust, data=default, main="Distibution du nbe client par branche", xlab="nbe de client", ylab="Nombre d'instances", binwidth=200, fill=default)



qplot(branch, data=default, main="Distibution des branches", xlab="code de la branche", ylab="Nombre d'instances",binwidth=9, fill=default)
#ne depend pas de branch 

qplot(ed, data=default, main="Distibution du niveau de l'?ducation", xlab="niveau d'ed", ylab="Nombre d'instances",binwidht=30 , fill=default)
#ne depend pas de ed 



###NUAGES DE POINTS




qplot(age, income, data=default, main="scatter plot de Revenus and Age", xlab="Valeur de Age", ylab="Valeur de Revenus", color=default)

qplot(age, address, data=default, main="scatter plot address and Age", xlab="Age", ylab="years in current address", color=default)

qplot(debtinc, income, data=default, main="scatter plot of debit and  income ", xlab="Debit", ylab="income", color=default)

qplot(creddebt, debtinc, data=default, main="scatter plot ratio D/C and debit", xlab="ratio D/C", ylab="debit ", color=default)

qplot(othdebt, debtinc, data=default, main="scatter plot des autre dandtes and D?ebit", xlab="dandtes en $", ylab="Valeur du d?bit", color=default)

qplot(othdebt, creddebt, data=default, main="scatter plot des autre dandtes and ratio D/C", xlab="dandtes en $", ylab="ratio D/C", color=default)

qplot(age, debtinc, data=default, main="scatter plot de d?bit and Age", xlab="Valeur de Age", ylab="d?bit", color=default)
$
qplot(employ, address, data=default, main="scatter plot des nbe ann?es avec employeur and adresse", xlab="employeur", ylab=" adresse", color=default)

qplot(age,branch , data=default, main="scatter plot de branche and Age", xlab="Valeur de Age", ylab="code de la branche", color=default)+geom_jitter(width=0.2,height = 0.3)

qplot(income,branch , data=default, main="scatter plot de branche and revenu", xlab="Valeur de Age", ylab="revenus", color=default)+geom_jitter(width=0.8,height = 0.8)

qplot(ncust,branch , data=default, main="scatter plot de branche and nbe de clients", xlab="nbe de clients", ylab="code de la branche", color=default)+geom_jitter(width=2,height = 3)

qplot(age,creddebt , data=default, main="scatter plot de branche and Age", xlab="Valeur de Age", ylab="ratio D/C", color=default)


### boxplots
boxplot(default$age, default$ed,data=default, main = "Boxplots of x and y", 
        xlab = "Variable", ylab = "Value", col = "blue")






setosa <- iris[iris$Species == "setosa",] # Subset data for setosa species
plot(setosa$Sepal.Length,
    setosa$Sepal.Width, xlab = "Sepal Length",
    ylab = "Sepal Width", main = "Scatter plot for Setosa")


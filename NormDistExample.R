#set Variables 
PopSize = 500
PopMean = 0
PopStd = 0
SampleSize = 10
SampleSize2=50
SampleMean = 0
SampleStd = 0
#set Mean and std for use with rnorm
m = 8.23
sd = 1.35
SampMeanDist=0
#get normal distribution population
population = rnorm(PopSize, m, sd)
#get mean
PopMean = mean(population)
PopMean
#get standard deviation
PopStd = sd(population)
PopStd
#create histogram of population
hist(population, main = 'Population Distribution', xlab = 'Population', border = 'BLUE', col = 'Purple')
#outer loop for Normal and expo distribution
for (a in 1:2) {
  #determine what to process
  if(a<2){
    #inner loop for creating sample means
    for(i in 1:30){
      
      SampMeanDist[i] = mean(sample(population,SampleSize, replace = FALSE))
      
    }
    #Create Title
    SampleOneTitle = paste('Sample Mean Distribution ', SampleSize)
    #create histogram
    hist(SampMeanDist, main = SampleOneTitle, xlab = 'Sample Means', col = 'blue', border = 'green')
  }else {
    #Inner loop for creating sample means
    for(i in 1:30){
      
      SampMeanDist[i] = mean(sample(population,SampleSize2, replace = FALSE))
      
    }
    #create title
    SampleOneTitle = paste('Sample Mean Distribution ', SampleSize2)
    #create histogram
    hist(SampMeanDist, main = SampleOneTitle, xlab = 'Sample Means', col = 'blue', border = 'green')
  }
}
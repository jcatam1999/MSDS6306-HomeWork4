#set variables for code
PopSize = 500
PopMean = 0
PopStd = 0
SampleSize = 15
SampleSize2=25
SampleMean = 0
SampleStd = 0
SampMeanDist=0
#Get expo distribution population
population = rexp(PopSize, rate = .01)
#get means
PopMean = mean(population)
PopMean
#get standard deviation
PopStd = sd(population)
PopStd
#create historgram of population
hist(population, main = 'Population Distribution', xlab = 'Population', border = 'BLUE', col = 'Purple')
##outter Loop through twice to create 2 sample means distributions with different sizes
for (a in 1:2) {
  ## determine which group to process
  if(a<2){
    #Inner loop to create sample means
    for(i in 1:30){
      
      SampMeanDist[i] = mean(sample(population,SampleSize, replace = FALSE))
      
    }
    #Get means
    mean(SampMeanDist)
    #Set histogram title
    SampleOneTitle = paste('Sample Mean Distribution ', SampleSize)
    #create historgram
    hist(SampMeanDist, main = SampleOneTitle, xlab = 'Sample Means', col = 'blue', border = 'green')
  }else {
    #Inner loop to create samples means
    for(i in 1:30){
      
      SampMeanDist[i] = mean(sample(population,SampleSize2, replace = FALSE))
      
    }
    #get means
    mean(SampMeanDist)
    #set title
    SampleOneTitle = paste('Sample Mean Distribution ', SampleSize2)
    #create title
    hist(SampMeanDist, main = SampleOneTitle, xlab = 'Sample Means', col = 'blue', border = 'green')
    
  }
}
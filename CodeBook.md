CODE BOOK FOR TIDY DATA 

LIBRARIES USED:
1- data.table
2- dplyr

FUNCTIONS USED:
1- read.table - used to read the data from the various text files. 
2- rbind - used to combine data by rows. 
3- cbind - used to combine data by columns. 
4- colnames - used to name the columns. 
5- grep - used to search for matches of an argument within each element. 
6- as.character - used to create objects of "character" type. 
7- as.factor - used to factor the objects.
8- names - used to display the names of the data.
9- gsub - used to replace the names. 
10- data.table - used to create a data table with data. 
11- aggregate - used to split data into subsets, and compute mean. 
12- order - used to order day according to manner. 
13- write.table - used to print arguments to a file or connection. 

VARIABLES IN TIDY DATA FILE: 

[1] "TimeBodyAcclmeterMean()-X"                     
[2] "TimeBodyAcclmeterMean()-Y"                    
[3] "TimeBodyAcclmeterMean()-Z"                     
[4] "TimeBodyAcclmeterSTD()-X"                     
[5] "TimeBodyAcclmeterSTD()-Y"                      
[6] "TimeBodyAcclmeterSTD()-Z"                     
[7] "TimeGravityAcclmeterMean()-X"                  
[8] "TimeGravityAcclmeterMean()-Y"                 
[9] "TimeGravityAcclmeterMean()-Z"                  
[10] "TimeGravityAcclmeterSTD()-X"                  
[11] "TimeGravityAcclmeterSTD()-Y"                   
[12] "TimeGravityAcclmeterSTD()-Z"                  
[13] "TimeBodyAcclmeterJerkMean()-X"                 
[14] "TimeBodyAcclmeterJerkMean()-Y"                
[15] "TimeBodyAcclmeterJerkMean()-Z"                 
[16] "TimeBodyAcclmeterJerkSTD()-X"                 
[17] "TimeBodyAcclmeterJerkSTD()-Y"                  
[18] "TimeBodyAcclmeterJerkSTD()-Z"                 
[19] "TimeBodyGyroscopeMean()-X"                     
[20] "TimeBodyGyroscopeMean()-Y"                    
[21] "TimeBodyGyroscopeMean()-Z"                     
[22] "TimeBodyGyroscopeSTD()-X"                     
[23] "TimeBodyGyroscopeSTD()-Y"                      
[24] "TimeBodyGyroscopeSTD()-Z"                     
[25] "TimeBodyGyroscopeJerkMean()-X"                 
[26] "TimeBodyGyroscopeJerkMean()-Y"                
[27] "TimeBodyGyroscopeJerkMean()-Z"                 
[28] "TimeBodyGyroscopeJerkSTD()-X"                 
[29] "TimeBodyGyroscopeJerkSTD()-Y"                  
[30] "TimeBodyGyroscopeJerkSTD()-Z"                 
[31] "TimeBodyAcclmeterMagnitudeMean()"              
[32] "TimeBodyAcclmeterMagnitudeSTD()"              
[33] "TimeGravityAcclmeterMagnitudeMean()"           
[34] "TimeGravityAcclmeterMagnitudeSTD()"           
[35] "TimeBodyAcclmeterJerkMagnitudeMean()"          
[36] "TimeBodyAcclmeterJerkMagnitudeSTD()"          
[37] "TimeBodyGyroscopeMagnitudeMean()"              
[38] "TimeBodyGyroscopeMagnitudeSTD()"              
[39] "TimeBodyGyroscopeJerkMagnitudeMean()"          
[40] "TimeBodyGyroscopeJerkMagnitudeSTD()"          
[41] "FrequencyBodyAcclmeterMean()-X"                
[42] "FrequencyBodyAcclmeterMean()-Y"               
[43] "FrequencyBodyAcclmeterMean()-Z"                
[44] "FrequencyBodyAcclmeterSTD()-X"                
[45] "FrequencyBodyAcclmeterSTD()-Y"                 
[46] "FrequencyBodyAcclmeterSTD()-Z"                
[47] "FrequencyBodyAcclmeterMeanFreq()-X"            
[48] "FrequencyBodyAcclmeterMeanFreq()-Y"           
[49] "FrequencyBodyAcclmeterMeanFreq()-Z"           
[50] "FrequencyBodyAcclmeterJerkMean()-X"           
[51] "FrequencyBodyAcclmeterJerkMean()-Y"            
[52] "FrequencyBodyAcclmeterJerkMean()-Z"           
[53] "FrequencyBodyAcclmeterJerkSTD()-X"             
[54] "FrequencyBodyAcclmeterJerkSTD()-Y"            
[55] "FrequencyBodyAcclmeterJerkSTD()-Z"             
[56] "FrequencyBodyAcclmeterJerkMeanFreq()-X"       
[57] "FrequencyBodyAcclmeterJerkMeanFreq()-Y"        
[58] "FrequencyBodyAcclmeterJerkMeanFreq()-Z"       
[59] "FrequencyBodyGyroscopeMean()-X"                
[60] "FrequencyBodyGyroscopeMean()-Y"               
[61] "FrequencyBodyGyroscopeMean()-Z"                
[62] "FrequencyBodyGyroscopeSTD()-X"                
[63] "FrequencyBodyGyroscopeSTD()-Y"                 
[64] "FrequencyBodyGyroscopeSTD()-Z"                
[65] "FrequencyBodyGyroscopeMeanFreq()-X"            
[68] "FrequencyBodyGyroscopeMeanFreq()-Y"           
[67] "FrequencyBodyGyroscopeMeanFreq()-Z"            
[70] "FrequencyBodyAcclmeterMagnitudeMean()"        
[69] "FrequencyBodyAcclmeterMagnitudeSTD()"          
[70] "FrequencyBodyAcclmeterMagnitudeMeanFreq()"    
[71] "FrequencyBodyAcclmeterJerkMagnitudeMean()"     
[72] "FrequencyBodyAcclmeterJerkMagnitudeSTD()"     
[73] "FrequencyBodyAcclmeterJerkMagnitudeMeanFreq()" 
[74] "FrequencyBodyGyroscopeMagnitudeMean()"        
[75] "FrequencyBodyGyroscopeMagnitudeSTD()"          
[76] "FrequencyBodyGyroscopeMagnitudeMeanFreq()"    
[77] "FrequencyBodyGyroscopeJerkMagnitudeMean()"     
[78] "FrequencyBodyGyroscopeJerkMagnitudeSTD()"     
[79] "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()" 
[80] "Angle(TimeBodyAcclmeterMean,Gravity)"         
[81] "Angle(TimeBodyAcclmeterJerkMean),GravityMean)" 
[82] "Angle(TimeBodyGyroscopeMean,GravityMean)"     
[83] "Angle(TimeBodyGyroscopeJerkMean,GravityMean)"  
[84] "Angle(X,GravityMean)"                         
[85] "Angle(Y,GravityMean)"                          
[86] "Angle(Z,GravityMean)"                         
[87] "Activity"                                      
[88] "Subject"  


#Kaggle Submission for Restaurant Revenue Prediction #

## Lm function where the only factor remaining was City.Group 
## others had to drop because of lack of continuity to final model. 
lm <- lm(revenue ~ City.Group + P1 + P2 + P3 + P4 +P5 +P6+P7+P8+P9+P10+P11+P12+P13+P14+P15+P16+
           P17+P18+P19+P20+P21+P22+P23+P24+P25+P26+P27+P28+P29+
           P30+P31+P32+P33+P34+P35+P36+P37, data = train.3)
summary (lm)

predictionlm <- predict(lm, test2, se.fit = FALSE, level = .90)
testsubmisssion <- data.frame (test2$Id, count = predictionlm)
View(testsubmisssion)

write.csv(testsubmisssion, file = "testSubmission.csv", row.names = FALSE)
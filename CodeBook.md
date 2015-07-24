---
title: "Code Book"
date: "Thursday, July 23, 2015"
output: html_document
---
## Project Description
The data file UCIHAR\_means\_tidy\_wide.txt was produced by the R script run_analysis.R. This script cleans and summarizes a subset of the Human Activity Recognition Using Smartphones Dataset Version 1.0, available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 

### Original Research Project
The following description is from the README file of the original Human Activity Recognition Using Smartphones Dataset: "The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data." For more detail on the study design and collection of the raw data, please consult this README file from the original data set.

### Creating the Tidy Datafile
Please see the README file included in this repo for a step-by-step description of how run_analysis.R processes the data.


##Description of the variables in the UCIHAR\_means\_tidy\_wide.txt file
###Dimensions
The data set contains 180 rows and 69 columns. The columns include the two factor variables ("subject" and "activity"), and 67 measurement variables described below. _Each measurement variable is the numerical average of all observations for that particular combiniation of subject and activity in the original data set._ The combinations of 30 subjects and 6 activities make up the 180 rows.  

###Units of Variables
According to the README in the original data set, "Features are normalized and bounded within [-1,1]". Please see this README file for more technical detail on how each feature was measured. 

All measurement variables are class numeric.

###Variable Selection
From the original data set, this data set selected only the 67 measurement variables that had been classified in the original data set as measurements of the mean or standard deviation of the features being measured.

###Variable Naming Convention
To maintain consistency, the names of measurement variables are the same as the names used for the corresponding "features" in the original data set, except that "meanof" has been prepended to each to convey that it is an arithmetic mean of multiple observations of this variable in the original data set. Also, characters such as "(" not allowed in R column names have been removed. 

###Variable List
1. subject - factor variable containing ID number of the human subject who wore the accelerometer in the study

2. activity - factor variable containing name of activity during which measurements were taken (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING or LAYING.)

3. meanoftBodyAccmeanX - arithmetic mean of the means of the body linear acceleration signals along the X axis

4. meanoftBodyAccmeanY - arithmetic mean of the means of the body linear acceleration signals along the Y axis

5. meanoftBodyAccmeanZ - arithmetic mean of the means of the body linear acceleration signals along the Z axis

6. meanoftGravityAccmeanX - arithmetic mean of the means of the gravity acceleration signals along the X axis

7. meanoftGravityAccmeanY - arithmetic mean of the means of the gravity acceleration signals along the Y axis

8. meanoftGravityAccmeanZ - arithmetic mean of the means of the gravity acceleration signals along the Z axis

9. meanoftBodyAccJerkmeanX - arithmetic mean of the means of the body acceleration "Jerk" signals along the X axis

10. meanoftBodyAccJerkmeanY - arithmetic mean of the means of the body acceleration "Jerk" signals along the Y axis

11. meanoftBodyAccJerkmeanZ - arithmetic mean of the means of the body acceleration "Jerk" signals along the Z axis

12. meanoftBodyGyromeanX - arithmetic mean of the means of the gyroscope-measured body angular velocity signals along the X axis

13. meanoftBodyGyromeanY - arithmetic mean of the means of the gyroscope-measured body angular velocity signals along the Y axis

14. meanoftBodyGyromeanZ - arithmetic mean of the means of the gyroscope-measured body angular velocity signals along the Z axis

15. meanoftBodyGyroJerkmeanX - arithmetic mean of the means of gyroscope-measured body angular velocity "Jerk" signals along the X axis

16. meanoftBodyGyroJerkmeanY - arithmetic mean of the means of gyroscope-measured body angular velocity "Jerk" signals along the Y axis

17. meanoftBodyGyroJerkmeanZ - arithmetic mean of the means of gyroscope-measured body angular velocity "Jerk" signals along the Z axis

18. meanoftBodyAccMagmean - arithmetic mean of the means of the calculated magnitude of the 3-D signals for body acceleration

19. meanoftGravityAccMagmean - arithmetic mean of the means of the calculated magnitude of the 3-D signals for gravity acceleration

20. meanoftBodyAccJerkMagmean - arithmetic mean of the means of the calculated magnitude of the 3-D signals for body acceleration "Jerk"

21. meanoftBodyGyroMagmean - arithmetic mean of the means of the calculated magnitude of the 3-D signals for gyroscope-measured body angular velocity

22. meanoftBodyGyroJerkMagmean - arithmetic mean of the means of the calculated magnitude of the 3-D signals for gyroscope-measured body angular velocity "Jerk"

23. meanoffBodyAccmeanX - arithmetic mean of Fast Fourier Transform of the means of the body linear acceleration signals along the X axis

24. meanoffBodyAccmeanY - arithmetic mean of Fast Fourier Transform of the means of the body linear acceleration signals along the Y axis

25. meanoffBodyAccmeanZ - arithmetic mean of Fast Fourier Transform of the means of the body linear acceleration signals along the Z axis

26. meanoffBodyAccJerkmeanX - arithmetic mean of Fast Fourier Transform of the means of the body acceleration "Jerk" signals along the X axis

27. meanoffBodyAccJerkmeanY - arithmetic mean of Fast Fourier Transform of the means of the body acceleration "Jerk" signals along the Y axis

28. meanoffBodyAccJerkmeanZ - arithmetic mean of Fast Fourier Transform of the means of the body acceleration "Jerk" signals along the Z axis

29. meanoffBodyGyromeanX - arithmetic mean of Fast Fourier Transform of the means of the gyroscope-measured body angular velocity signals along the X axis

30. meanoffBodyGyromeanY - arithmetic mean of Fast Fourier Transform of the means of the gyroscope-measured body angular velocity signals along the Y axis

31. meanoffBodyGyromeanZ - arithmetic mean of Fast Fourier Transform of the means of the gyroscope-measured body angular velocity signals along the Z axis

32. meanoffBodyAccMagmean - arithmetic mean of Fast Fourier Transform of the means of the calculated magnitude of the 3-D signals for body acceleration

33. meanoffBodyBodyAccJerkMagmean - arithmetic mean of Fast Fourier Transform of the means of the calculated magnitude of the 3-D signals for body acceleration "Jerk"

34. meanoffBodyBodyGyroMagmean - arithmetic mean of Fast Fourier Transform of the means of the calculated magnitude of the 3-D signals for gyroscope-measured body angular velocity

35. meanoffBodyBodyGyroJerkMagmean - arithmetic mean of Fast Fourier Transform of the means of the calculated magnitude of the 3-D signals for gyroscope-measured body angular velocity "Jerk"

36. meanofangletBodyAccJerkMeangravityMean - arithmetic mean of the means of the signals signals for body acceleration "Jerk"

37. meanoftBodyAccstdX - arithmetic mean of the standard deviations of the body linear acceleration signals along the X axis

38. meanoftBodyAccstdY - arithmetic mean of the standard deviations of the body linear acceleration signals along the Y axis

39. meanoftBodyAccstdZ - arithmetic mean of the standard deviations of the body linear acceleration signals along the Z axis

40. meanoftGravityAccstdX - arithmetic mean of the standard deviations of the gravity acceleration signals along the X axis

41. meanoftGravityAccstdY - arithmetic mean of the standard deviations of the gravity acceleration signals along the Y axis

42. meanoftGravityAccstdZ - arithmetic mean of the standard deviations of the gravity acceleration signals along the Z axis

43. meanoftBodyAccJerkstdX - arithmetic mean of the standard deviations of the body acceleration "Jerk" signals along the X axis

44. meanoftBodyAccJerkstdY - arithmetic mean of the standard deviations of the body acceleration "Jerk" signals along the Y axis

45. meanoftBodyAccJerkstdZ - arithmetic mean of the standard deviations of the body acceleration "Jerk" signals along the Z axis

46. meanoftBodyGyrostdX - arithmetic mean of the standard deviations of the gyroscope-measured body angular velocity signals along the X axis

47. meanoftBodyGyrostdY - arithmetic mean of the standard deviations of the gyroscope-measured body angular velocity signals along the Y axis

48. meanoftBodyGyrostdZ - arithmetic mean of the standard deviations of the gyroscope-measured body angular velocity signals along the Z axis

49. meanoftBodyGyroJerkstdX - arithmetic mean of the standard deviations of gyroscope-measured body angular velocity "Jerk" signals along the X axis

50. meanoftBodyGyroJerkstdY - arithmetic mean of the standard deviations of gyroscope-measured body angular velocity "Jerk" signals along the Y axis

51. meanoftBodyGyroJerkstdZ - arithmetic mean of the standard deviations of gyroscope-measured body angular velocity "Jerk" signals along the Z axis

52. meanoftBodyAccMagstd - arithmetic mean of the standard deviations of the calculated magnitude of the 3-D signals for body acceleration

53. meanoftGravityAccMagstd - arithmetic mean of the standard deviations of the calculated magnitude of the 3-D signals for gravity acceleration

54. meanoftBodyAccJerkMagstd - arithmetic mean of the standard deviations of the calculated magnitude of the 3-D signals for body acceleration "Jerk"

55. meanoftBodyGyroMagstd - arithmetic mean of the standard deviations of the calculated magnitude of the 3-D signals for gyroscope-measured body angular velocity

56. meanoftBodyGyroJerkMagstd - arithmetic mean of the standard deviations of the calculated magnitude of the 3-D signals for gyroscope-measured body angular velocity "Jerk"

57. meanoffBodyAccstdX - arithmetic mean of Fast Fourier Transform of the standard deviations of the body linear acceleration signals along the X axis

58. meanoffBodyAccstdY - arithmetic mean of Fast Fourier Transform of the standard deviations of the body linear acceleration signals along the Y axis

59. meanoffBodyAccstdZ - arithmetic mean of Fast Fourier Transform of the standard deviations of the body linear acceleration signals along the Z axis

60. meanoffBodyAccJerkstdX - arithmetic mean of Fast Fourier Transform of the standard deviations of the body acceleration "Jerk" signals along the X axis

61. meanoffBodyAccJerkstdY - arithmetic mean of Fast Fourier Transform of the standard deviations of the body acceleration "Jerk" signals along the Y axis

62. meanoffBodyAccJerkstdZ - arithmetic mean of Fast Fourier Transform of the standard deviations of the body acceleration "Jerk" signals along the Z axis

63. meanoffBodyGyrostdX - arithmetic mean of Fast Fourier Transform of the standard deviations of the gyroscope-measured body angular velocity signals along the X axis

64. meanoffBodyGyrostdY - arithmetic mean of Fast Fourier Transform of the standard deviations of the gyroscope-measured body angular velocity signals along the Y axis

65. meanoffBodyGyrostdZ - arithmetic mean of Fast Fourier Transform of the standard deviations of the gyroscope-measured body angular velocity signals along the Z axis

66. meanoffBodyAccMagstd - arithmetic mean of Fast Fourier Transform of the standard deviations of the calculated magnitude of the 3-D signals for body acceleration

67. meanoffBodyBodyAccJerkMagstd - arithmetic mean of Fast Fourier Transform of the standard deviations of the calculated magnitude of the 3-D signals for body acceleration "Jerk"

68. meanoffBodyBodyGyroMagstd - arithmetic mean of Fast Fourier Transform of the standard deviations of the calculated magnitude of the 3-D signals for gyroscope-measured body angular velocity

69. meanoffBodyBodyGyroJerkMagstd - arithmetic mean of Fast Fourier Transform of the standard deviations of the calculated magnitude of the 3-D signals for gyroscope-measured body angular velocity "Jerk"


##Sources
Human Activity Recognition Using Smartphones Dataset Version 1.0, including README and features_info files. https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#dat = read.csv("Downloads/Crash_Reporting_-_Drivers_Data.csv")
dat
str(dat)
#1 -16
dat[ , 1:16]
#1st,  multiple cases have more than one occurence. This means number of vehicles involved.
#8 is the max as shown here.
head(sort(table(dat[ ,1]), decreasing = T)) 

#2nd, this is associated with the case number above, nothing special here
head(sort(table(dat[ ,2]), decreasing = T)) 

#3rd, Here we can see that there are 8 agencies involved with these cases with
#Montgomery County Police leading in the investigation field case.
sort(table(dat[ , 3]), decreasing = T)

#4th, only three types of crash reports, with Property Damage Crash being the highest.
sort(table(dat[ , 4]), decreasing = T)

#5th, We need to strip the data here for date and time to analyze both
#Will get to it once other remaining fields are done being analyzed.
head(sort(table(dat[ , 5]), decreasing = T), 40)

#6th, This shows the road type the accident happened. Most happen in two places
#Which are Maryland (State) and County
sort(table(dat[ , 6]), decreasing = T)

#7th, This is the name of the road the accident happened. Top road was not named. 
#Folowed by Georgia ave.
head(sort(table(dat[ , 6]), decreasing = T), 10)

#8th, County is the most common roadway type. The 4th most common is unknown.
sort(table(dat[ , 8]), decreasing = T)

#9th, This is the same issue as number 7.
head(sort(table(dat[ , 9]), decreasing = T), 10)

#10th, This describes for off road collision, as expected the most common place is not named.
#could be off roading trucks, etc.
head(sort(table(dat[ , 10]), decreasing = T), 10)

#11th, Jurisdiction for the crash. N/A seems the most prevelent followed by an unknown. 
head(sort(table(dat[ , 11]), decreasing = T), 10)

#12th, related non motorist. Unknown or empty string is the most common, followed by a pedestrian. 
#Other pops up as the fourth. 
sort(table(dat[ , 12]), decreasing = T)

#13th, Collision type. Here we can see that most happen on same direction rear end crash.
#Unknown, Other, and N/A appear here too. Other as the third most common one.
sort(table(dat[ , 13]), decreasing = T)

#14th, Weather, we had talked about this one before. Check github readme file for that one.
sort(table(dat[ , 14]), decreasing = T)

#15th, Surface condition. Most common is on a dry day. Empty string happens to be the third most common
#followed by an N/A. We have an unknown and other values too.
#Possible Category grouping 
#UNKNOWN-> "", N/A, UNKNOWN, and OTHER
#we could try visualizing two graphs here, 1: with remaining data left alone. 
#2. Categorize on uknown, water form, and dry.
sort(table(dat[ , 15]), decreasing = T)

#16th, Light condition, Daylight is most common. We have two different types of unknowns,
# an N/A, and an Other. 
#Possible Category grouping 
#UNKNOWN-> UKNOWN LIGHTING, N/A, UNKNOWN, and OTHER
#OTHERS STAY SAME?
sort(table(dat[ , 16]), decreasing = T)



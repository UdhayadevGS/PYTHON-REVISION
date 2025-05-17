import pandas as pd
import pandas as pd

coffee=pd.read_csv("coffee.csv") #reading coffee.csv file

print("PRINITING COFFEE HEAD \n",coffee.head()) #HEAD REFERS TO FIRST 5 ROWS DATA, Tail refers to last 5 row datas
print("\n")
display("Displaying Coffee Head",coffee.head()) #printing and displaying output different formats
print("\n")

display(coffee.sample(5)) #random values , (you can use random_state=1 or any number -  to get the same random values again and again)
print("\n")

coffee.loc[[0,1,2],['Day','Units Sold']] #format -> name[rows,cols]    here 0,1,2 works as it is the default index
print("\n")

coffee.loc[0::2,'Day'] #displays index 0 till end-1 with step of 2 , and only index, day column
print("\n")

coffee.iloc[0:4,[0,2]] #iloc based on index numbers not names like loc #dont put 0:4 inside [] but make sure to put [0,2] inside them
print("\n")

#changing index
coffee = coffee.set_index('Day') #changing default index from 0,1,2,3 to Day column so default index column disappears
display(coffee.head())
print("\n")

coffee.loc["Monday":"Wednesday"]

coffee = coffee.sort_values(["Units Sold","Coffee Type"],ascending=[0,1]) #means dont make units sold ascending but make coffee type ascending
display(coffee)

coffee = coffee.reset_index(drop=True) # this will drop day as the index and will assign back numbers to each one , numbers are better as they are unique , 
#setting values

coffee.loc[0,"Day"]="Unknown Day"
display(coffee.loc[0])

print(coffee.loc[1,"Units Sold"])

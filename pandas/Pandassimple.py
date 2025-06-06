
#simple panda syntaxes
  import pandas as pd

data=pd.DataFrame([[1,2,3,4,5],[4,5,6,7,8],[7,8,9,10,11]],columns=['a','b','c','d','e'],index=['x','y','z']) #columns and index and elements
data = data.astype({
    'a': 'int8',
    'b': 'int8',
    'c': 'int64',  
    'd': 'int64',
    'e': 'int8'
}) #sets size of each column in bits
print(data,"\n")
print(data.head(1),"\n") #default head gives first 5 rows , head(1) gives first row
print(data.tail(5),"\n")#default tail gives last 5 rows
print("COLUMNS : ",data.columns)
print("INDEX: \n",data.index)
print("DESCRIBING: \n",data.describe())
print("INFO : \n ",data.info())
print("UNIQUE ELEMENTS IN EACH COLUMNS \n",data.nunique())
print("UNIQUE ELEMENTS IN COLUMN a",data['a'].unique())

print("SHAPE: \n",data.shape)
print("NO OF ELEMENTS: \n",data.size)

  ##################################################################33


  

import numpy as np

#1d array
a=np.array([1,2,3],dtype='int8') # by default dtype is int64 for each element but we only need int8 for each element as it is within the range of int8

#2d array
b=np.array([[1.0,2.0,3.0],[4.0,5.0,6.0]])

#printing array
print("ARRAY a is :" , a)
print("ARRAY b is :", b)

#no of dimensions
print("No of dimensions of a :" , a.ndim)
print("No of dimension of b :" ,b.ndim)

#shape of array
print("Shape of a : " ,a.shape)
print ("Shape of b: ", b.shape)

#getting type and size in bits of each element = dtype
print(a.dtype,"is the size in bits")
print(b.dtype,"is the size in bits")

#getting size in bytes of  each element = itemsize
print(a.itemsize,"bytes is the size in bytes")
print(b.itemsize,"bytes is the size in bytes")

#size - gives total number of elements
print("Size of a : ", a.size,"elements")
print("Size of b : ", b.size,"elements")

#to get total size of the array we can do size*itemsize or use nbytes
print("Total size of a : ", a.size*a.itemsize,"bytes")
print("Total size of b : ", b.size*b.itemsize,"bytes")
print("Total size of a : ", a.nbytes,"bytes")
print("Total size of b : ", b.nbytes,"bytes")

#################################3

import numpy as np
#2D ARRAY
a=np.array([[1,2,3,4,5,6,7],[9,10,11,12,13,14,15]])

print("GETTING SPECIFIC ELEMENT")
print(a[0][1],"\n")  #ROW - 0 COLUMN 1


print("#GETTING SPECIFIC ROW")
print(a[0,:],"\n") #PRINTING FIRST ROW NOTICE THE COMMA POSITION 0 MEANS FIRST ROW AND : MEANS ALL COLUMNS

print("#GETTING SPECIFIC COLUMN")
print(a[:,0],"\n") #PRINTING FIRST COLUMN NOTICE THE COMMA POSITION - : MEANS ALL ROWS AND 0 MEANS FIRST COLUMN

print("#USING START STOP STEP")
print(a[0,1:6:2],"\n") #0 means first row - start stop step starting from row 1 to row 5 and step is 2 , row 6 is exclusive

print("CHANGING ONE ELEMENT")
print("intial array \n",a)

print("new array \n")
a[0,4]=20
print(a)

print("CHANGING ENTIRE ROW")
a[0,:]=4
print(a)

print("CHANGING ENTIRE COLUMN")
a[:,0]=5
print(a)

print("CHANGING SPECIFIC COLUMNS")
a[:,[0,2,4,6]]=1 #you can use lists inside arrays to access and change specific elements
print(a)

print("\n 3D ARRAYS")
b=np.array([[[1,2],[3,4]],[[5,6],[7,8]]])
print (b)

print("changing specific element of 3d array")
b[0,1,0]=9  #working from outside - the first refers to the first matrix consisting of 1,2,3,4 ;
# then the next 1 means the second row in that matrix , and 0 refers to the first column
print(b)

print("changing entire row of both 2d matrices in 3d matrix")
b[:,[0,1],:] = [[4,4],[5,5]],[[6,6],[0,0]] #first : means all both the 2d matrices in the 3d matrix, [0:1] means both the rows in the matrices (we can also use :), and last : means all the columns
print(b)

print("zero matrix is ")
z=np.zeros((2,2)) #insert the size of the matrix inside the zeros function
print(z)

print("ones matrix is ")
o=np.ones((3,3),dtype='int8') #default float64
print(o)

print("to full with any  number")
any=np.full((2,2),456)
print(any)

print("to full existing matrix with any  number")
fulllike=np.full_like(z,1710) #be aware of data type of the other matrix if you do the same thing for dtype 8 matrix it wont work
print(fulllike)

print("for random numbers betweeen 0 and 1")
r=np.random.rand(2,2)
print(r)

print("random interger values")
rint=np.random.randint(4,7,size=(3,3)) #start stop(exclusive) size
print(rint)

print("IDENTITY MATRIX:")
ident=np.identity(3)
print(ident)
print("REPEAT ACTING ACROSS ROWS - AXIS 0")
arr = np.array([[1,2,3],[4,5,6]])
repeat=np.repeat(arr,3,axis=0) #repeats the array 3 times acts accross rows
print(repeat)
print("REPEAT ACTING ACROSS COLUMNS - AXIS 1")
arr = np.array([[1,2,3],[4,5,6]])
repeat=np.repeat(arr,3,axis=1) #repeats the array 3 times acts accross columns
print(repeat)

print("REPEATING ENTIRE BLOCKS")
ar=np.array([[1,2,3,4,5],[6,7,8,9,10]])
tilevar = np.tile(ar,(2,3))  #repeats 2 times across rows and 3 times across columns
print(tilevar)

"""[[1. 1. 1. 1. 1.]
 [1. 0. 0. 0. 1.]
 [1. 0. 9. 0. 1.]
 [1. 0. 0. 0. 1.]
 [1. 1. 1. 1. 1.]] to get this array """

eg1 = np.ones((5,5))

eg0=np.zeros((3,3))
eg0[1,1]=9

eg1[1:4,1:4]=eg0
print(eg1)

print("COPYING ARRAY AND CHANGING")
exmat = np.array([1,2,3])
exmat2 = exmat.copy()
exmat2[0]=100
print(exmat)
print(exmat2)

print("ADDING TO ELEMENTS")
q=np.array([1,2,3])
w=q+2
print(w)

print("SUBTRACTING TO ELEMENTS")
sub=np.array([1,2,3,4,5])
sub1=sub-1
print(sub1)


print("MULTIPLYING NUMBERS ")
mul=np.array([[1,2,3,4,5],[6,7,8,9,10]])
mul1=mul*2 #you can also multuply elements of matrix
print(mul1)

print("Divinding NUMBERS ")
mul=np.array([[1,2,3,4,5],[6,7,8,9,10]])
mul1=mul/2
print(mul1)

print("ADDITION OF TWO MATRICES ELEMENTS - WE CAN DO MULTIPLCATION,DIVISION,SUBTRACTION TOO")
mul3=np.array([[4,3,2,1,0],[4,3,2,1,0]])
mul4=mul3+mul
print(mul4)

print("SQUARING OF MATRIX ELEMENTS")
mul5=mul3**2
print(mul5)

print("SIN OF MATRIX ELEMENTS")
mul6=np.sin(mul3)
print(mul6)

print("COS OF MATRIX ELEMENTS")
mul7=np.cos(mul3)
print(mul7)

print("LOG OF MATRIX ELEMENTS")
mul8=np.log(mul1) #YOU CANNOT DO LOG 0
print(mul8)

print("EXP OF MATRIX ELEMENTS")
mul9=np.exp(mul3)
print(mul9)

print("MATRIX MULTIPLICATION")
a1=np.array([1,2,3]) #1,3
a2=np.array([[4],[5],[6]])  #3,1
m1 = np.matmul(a1,a2)
print(m1)

""" TO MULTIPLY AND GET ANSWER
MATRIX 1 : [[1. 1. 1.]
 [1. 1. 1.]]
MATRIX 2 : [[2 2]
 [2 2]
 [2 2]]
ANSWER : array([[6., 6.],
       [6., 6.]]) """

print("EXAMPLE")
ma1=np.array([[1,1,1]])
ma2=np.array([[2,2],[2,2],[2,2]]) # you can also do np.full ((3,2),2)
ma3=np.matmul(ma1,ma2)
print(ma3)

print("TO FIND DETERMINANT OF MATRIX")
det=np.identity(3) #identity matrix of size (3,3)
det1=np.linalg.det(det) #determinant of identity matrix is 1 
print(det1)

print("TO find min,max,sum")
x1=np.array([[1,2,3,4,5,6,7],[9,10,11,12,13,14,15]])
print("min of all elements",np.min(x1))
print("max of all elements",np.max(x1))
print("sum of all elements",np.sum(x1))
print("min of each column",np.min(x1,axis=0))
print("max of each column",np.max(x1,axis=0))
print("sum of each column",np.sum(x1,axis=0))
print("min of each row",np.min(x1,axis=1))
print("max of each row",np.max(x1,axis=1))
print("sum of each row",np.sum(x1,axis=1))
print("difference of all elements after flattening matrix into 1d matrix",np.subtract.reduce(x1.flatten())) #IMPORTANT
print("difference of elements each row",np.subtract.reduce(x1,axis=0))

X2=np.array([[1,2,3,4,5],[6,7,8,9,10]]) #2,5
after = X2.reshape(1,10)
print(after)

v1=np.array([1,2,3,4])
v2=np.array([5,6,7,8])
print("VERTICAL STACK")
print(np.vstack([v1,v2]))
print("HORIZONTAL STACK")
print(np.hstack([v1,v2]))

data=np.genfromtxt('data.txt',delimiter=',',dtype='int32')
#you can also do data=data.astype('int32')
print (data)
print(data>50) #gives true or false 
print(data[data>50]) #gives  actual value




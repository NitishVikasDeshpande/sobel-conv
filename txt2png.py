import numpy as np
from PIL import Image

table = np.loadtxt('c.txt',skiprows=0,dtype = np.str)
int_table = [[int(j,2) for j in i] for i in table]
[a,b] = np.shape(table)

red = [[j for j in i[0::3]] for i in int_table]
green = [[j for j in i[1::3]] for i in int_table]
blue = [[j for j in i[2::3]] for i in int_table]
[x,y] = np.shape(red)

print(np.shape(table))

img = np.zeros([x,y,3],dtype= np.uint8)
for j in range(y):
    for i in range(x):
        img[i][j][0] = red[i][j]
        img[i][j][1] = green[i][j]
        img[i][j][2] = blue[i][j]

print(np.shape(img))
data = Image.fromarray(img, 'RGB')
data.save('my.jpg')
data.show()

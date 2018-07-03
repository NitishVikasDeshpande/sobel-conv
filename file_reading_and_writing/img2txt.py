from matplotlib.image import imread
import numpy as np

img = imread('123.jpg')
img = np.array(list(img))
pad = 1;
[x,y,z] = np.shape(img)
im = np.zeros([x+2*pad,y+2*pad,z],dtype=np.uint8)
print(np.shape(img))
print(np.shape(im))

for i in range(x):
    for j in range(y):
        for k in range(z):
            im[i + pad][j + pad][k] = img[i][j][k]
file = open('a.txt','w')
for i in range(x+2*pad):
    for j in range(y+2*pad):
            #out[i][j][k] =
        file.write( '{0:08b}'.format(im[i][j][0])+' '+'{0:08b}'.format(im[i][j][1])+' '+'{0:08b}'.format(im[i][j][2])+' ')
    file.write('\n')
file.close()

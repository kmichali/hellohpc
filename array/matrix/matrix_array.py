import numpy as np
import os

input = np.loadtxt("matrix.txt", dtype='f', delimiter=',')
print(input)
counter = 0
index = int(os.environ['PBS_ARRAY_INDEX'])


for i in range(0,input.shape[0]):
    for j in range(0, input.shape[1]):
        counter = counter+1
        print('counter:', counter)
        if counter == index:
            print('processing element', input[i,j])

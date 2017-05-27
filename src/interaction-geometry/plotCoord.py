#coordinate plotting

from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt



fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

x0 = [0]
y0 = [0]
z0 = [0]

#norm vec
x1 =[-.123]
y1 =[3.42]
z1 =[-3.64]

#center to cation vec
x2 = [-4.17]
y2 = [52.4]
z2 = [13.05]

ax.scatter(x0, y0, z0, c='g', marker = 'x')
ax.scatter(x1, y1, z1, c='r', marker='o')
ax.scatter(x2, y2, z2, c='b', marker= 'o')

ax.set_xlabel('X Label')
ax.set_ylabel('Y Label')
ax.set_zlabel('Z Label')

plt.show()
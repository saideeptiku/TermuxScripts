"""
quick test sklearn
"""

import numpy as np
import sklearn
from time import time
from sklearn.neighbors import KNeighborsRegressor as KNN
from sklearn.svm import SVC as SVM
import pickle

# create dataset
# (5472, 30, 30, 1) (5472, 1) (1368, 30, 30, 1) (1368, 1)
# generate random numbers with shape given and in range 0 to 100
x_train = np.random.randint(100, size=(5472, 900))
y_train = np.random.randint(382, size=(5472))

x_test = np.random.randint(100, size=(1000, 900))
y_test = np.random.randint(382, size=(1000))

################################################################
# KNN
################################################################
# print("Training KNN model.")
# knn = KNN(n_neighbors=3)
# knn.fit(x_train, y_train)
# pickle.dump(knn, open("models/knn.pickle", 'wb'))


knn = pickle.load(open("models/knn.pickle", 'rb'))
print("Testing KNN")
start_time = time()
for row in x_test:
    y_pred = knn.predict(row.reshape(1, row.shape[0]))

passed_time = time() - start_time
fps = passed_time*1000/x_test.shape[0]

print(f"KNN FPS: {fps:.2f} ms")

################################################################
# SVM
################################################################
# print("Training SVM model.")
# svm = SVM(C=1000)
# svm.fit(x_train, y_train)
# pickle.dump(svm, open("models/svm.pickle", 'wb'))


svm = pickle.load(open("models/svm.pickle", 'rb'))
print("Testing SVM")
start_time = time()
for row in x_test:
    y_pred = svm.predict(row.reshape(1, row.shape[0]))

passed_time = time() - start_time
fps = passed_time*1000/x_test.shape[0]

print(f"SVM FPS: {fps:.2f} ms")

################################################################

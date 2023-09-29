import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from sklearn.impute import SimpleImputer


dataset = pd.read_csv("Data.csv")
X = dataset.iloc[:,:-1].values
y = dataset.iloc[:,-1].values

imputer = SimpleImputer(missing_values=np.nan, strategy='mean')

#fit method works only on numerical data

imputer.fit(X[:,1:3])
X[:,1:3] = imputer.transform(X[:,1:3])

#print(X)

print(dataset)

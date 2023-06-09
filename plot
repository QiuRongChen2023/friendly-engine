import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
df = pd.read_csv('cereal.csv')
df.head(5)
plt.figure(figsize=(10,8))
plt.plot(df['fiber'],'g.-',label="Fiber")
plt.plot(df['rating'],'r.-',label="Rating")
plt.title("Relationship between 'fiber' and 'rating'",c='g')
plt.xlabel("fiber")
plt.ylabel("rating")
plt.legend()
df_Mfr = df.loc[:,'mfr']
df_Mfr.loc()
df_Mfr.value_counts()
df_Mfr = pd.DataFrame({'name':['K','G','P','Q','R','N','A'],
                       'value':[23,22,9,8,8,6,1]})
df_Mfr
plt.bar(df_Mfr['name'],df_Mfr['value'],color='g',width=0.5)
plt.title("The number of products made by each manufacturer",c='g')
df['rating'].plot.hist(bins=10)
plt.title("The histogram on the ratings",c='g')
df_Type=df.loc[:,'type']
df_Type.value_counts()
df_Type=pd.DataFrame([74,3],
                    index=['C','H'],
                    columns=['type'])
df_Type
df_Type['type'].plot.pie(autopct='%.2f',figsize=(6,6))
plt.title("The number of cold cereals and hot cereals",c='g')
df.plot.box(figsize=(10,6))
plt.title("boxplot for all the numerical features",c='g')














import numpy as np
import pandas as pd

df = pd.read_csv("final_application_train_kcb_research.csv")
col = pd.read_csv('field.csv')
col = list(col.columns)

df = df[col]
print("complete remove unused columns")

df['kabupaten_kota']= np.nan
df['provinsi']= np.nan

dff = pd.read_excel("kabupaten.xlsx")

dfff = []
dfg = []
import random
# value_1 = dff["nama"].dropna().unique()
# value_2 = dff["provinsi"].dropna().unique()
indexs = df[df['kabupaten_kota'].isnull()].index.values
for i in indexs:
    kota = random.choice(dff["nama"])
    dfff.append(kota)
    dfg.append(dff['provinsi'][dff[dff['nama'] == kota].index[0]])
	
df['kabupaten_kota']= dfff
df['provinsi']= dfg
print("complete insert random columns for kabupaten and provinsi")

print("print result")
df.to_csv("result.csv",index=False)

part_25_1 = df.sample(frac = 0.25) 
part_25 = df.drop(part_25_1.index).reset_index(drop=True)
part_25_2 = part_25.sample(frac = 0.25)
part_25 = part_25.drop(part_25_2.index).reset_index(drop=True)
part_25_3 = part_25.sample(frac = 0.25)
part_25_4 = part_25.drop(part_25_3.index).reset_index(drop=True)

print("print part of result")
part_25_1.to_csv("result_part_1.csv",index=False)
part_25_2.to_csv("result_part_2.csv",index=False)
part_25_3.to_csv("result_part_3.csv",index=False)
part_25_4.to_csv("result_part_4.csv",index=False)
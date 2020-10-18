
#Processing 2009 raw data to input into database
import os
import pandas as pd

path ="/Users/cassandrakoh/Downloads/data-analyst-interview-master/2009"

filelist = []

for root, dirs, files in os.walk(path):
	for file in files:

		filelist.append(os.path.join(root,file))

concatenated_df = pd.concat((pd.read_csv(f,compression='gzip', header = 0, sep = '\t') for f in filelist), sort=False)
print(concatenated_df.head(5))
concatenated_df = concatenated_df.loc[:, ['Date','StoreID','ProductID','OnHandQuantity','OnOrderQuantity','DaysInStock','MinDayInStock','MaxDayInStock']] 
#concatenated_df.to_csv('/Users/cassandrakoh/Documents/Documents – Cassandra’s MacBook Pro/SMU/Year 4 Sem 2/data.csv', index = False)
concatenated_df.to_csv('/Users/cassandrakoh/Documents/Documents – Cassandra’s MacBook Pro/SMU/Year 4 Sem 2/data.txt', index = False, sep = '\t',line_terminator='\n')

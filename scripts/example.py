import dask.dataframe as DataFrame

df: DataFrame = DataFrame.read_csv("scripts/resources/num.csv")
result = df.sum().compute(scheduler='processes')
print(result)

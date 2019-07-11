import dask
import dask.dataframe as DataFrame
from dask.diagnostics import ProgressBar
# from multiprocessing.pool import Pool
from multiprocessing.pool import ThreadPool

dask.config.set(scheduler='threads')
# dask.config.set(pool=Pool(5))
dask.config.set(pool=ThreadPool(5))
df: DataFrame = DataFrame.read_sql_table("products", "postgresql://tilak@localhost:5432/datamart", "region_code")
print(df)
with ProgressBar():
    df.to_parquet("/tmp/products")

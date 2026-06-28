import pandas as pd
import os

folder_path = "Data/raw"

for file in os.listdir(folder_path):

    if file.endswith(".csv"):

        file_path = os.path.join(folder_path, file)

        df = pd.read_csv(file_path)

        print("\n" + "="*60)
        print(f"FILE : {file}")
        print("="*60)

        print("Shape :", df.shape)

        print("\nColumns :")
        print(df.columns.tolist())

        print("\nMissing Values :")
        print(df.isnull().sum())

        print("\nFirst 5 Rows :")
        print(df.head())
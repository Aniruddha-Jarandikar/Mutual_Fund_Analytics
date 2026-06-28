import requests
import pandas as pd

scheme_codes = {
    119551: "SBI_Bluechip",
    120503: "ICICI_Bluechip",
    118632: "Nippon_Large_Cap",
    119092: "Axis_Bluechip",
    120841: "Kotak_Bluechip"
}

for code, name in scheme_codes.items():

    url = f"https://api.mfapi.in/mf/{code}"

    response = requests.get(url)

    if response.status_code == 200:

        data = response.json()

        nav_df = pd.DataFrame(data["data"])

        file_name = f"Data/raw/{name}_nav.csv"

        nav_df.to_csv(file_name, index=False)

        print(f"✅ {name} saved successfully")

    else:
        print(f"❌ Failed for {code}")
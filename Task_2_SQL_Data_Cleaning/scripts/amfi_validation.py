import pandas as pd

fund_master = pd.read_csv("Data/raw/01_fund_master.csv")
nav_history = pd.read_csv("Data/raw/02_nav_history.csv")

master_codes = set(fund_master["amfi_code"])
nav_codes = set(nav_history["amfi_code"])

missing_codes = master_codes - nav_codes

print("="*50)

if len(missing_codes) == 0:
    print("✅ All AMFI Codes Valid")
else:
    print("❌ Missing Codes Found")
    print(missing_codes)

print("="*50)


import json
import pandas as pd
from datetime import datetime

with open("../input.json", "r") as f:
    data = json.load(f)

df = pd.DataFrame(data["users"])

df["age_after_5_years"] = df["age"] + 5

summary = {
    "total_users": len(df),
    "average_age": df["age"].mean()
}

df.to_csv("output.csv", index=False)

with open("log1.txt", "w") as log:
    log.write(f"Execution Time: {datetime.now()}\n")
    log.write(f"Total Users: {summary['total_users']}\n")
    log.write(f"Average Age: {summary['average_age']}\n")

print("✅ Processing completed")
print(df)
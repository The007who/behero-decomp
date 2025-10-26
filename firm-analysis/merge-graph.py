import matplotlib.pyplot as plt
import pandas as pd
from os.path import getsize


# Initialize the lists for X and Y
data = pd.read_csv('firm-analysis/merge.csv') # 67108864 lines
size = getsize('firm-analysis/firm.bin')

df = pd.DataFrame(data)

X = list(df.iloc[:, 0])
Y = list(range(size - 1))

print(len(X))
print(len(Y))

# Plot the data using bar() method
plt.bar(X, Y, color='g')
plt.title("Merge accuracy")
plt.ylabel("No. Matches")

# Show the plot
plt.savefig("plot.png", format="png")
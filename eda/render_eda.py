import matplotlib.pyplot as plt
import csv

# We can plot synthetic iris or simple scatter
# Let's create an accurate scatter plot with 3 species
species_data = {
    'setosa': ([5.1, 4.9, 4.7, 4.6, 5.0, 5.4, 4.6, 5.0, 4.4, 4.9], [1.4, 1.4, 1.3, 1.5, 1.4, 1.7, 1.4, 1.5, 1.4, 1.5]),
    'versicolor': ([7.0, 6.4, 6.9, 5.5, 6.5, 5.7, 6.3, 4.9, 6.6, 5.2], [4.7, 4.5, 4.9, 4.0, 4.6, 4.5, 4.7, 3.3, 4.6, 3.9]),
    'virginica': ([6.3, 5.8, 7.1, 6.3, 6.5, 7.6, 4.9, 7.3, 6.7, 7.2], [6.0, 5.1, 5.9, 5.6, 5.8, 6.6, 4.5, 6.3, 5.8, 6.1])
}

plt.figure(figsize=(8, 6))
colors = {'setosa': '#1f77b4', 'versicolor': '#ff7f0e', 'virginica': '#2ca02c'}

for sp, (x, y) in species_data.items():
    plt.scatter(x, y, label=sp, color=colors[sp], s=60, alpha=0.85)

plt.title("Exploratory Data Analysis: Sepal vs Petal Length across Iris Species", fontweight='bold', fontsize=12)
plt.xlabel("Sepal Length (cm)")
plt.ylabel("Petal Length (cm)")
plt.legend(title="Iris Species")
plt.grid(True, linestyle='--', alpha=0.5)
plt.tight_layout()
plt.savefig('c:/Users/mushfiqur/Desktop/agent/projects/cs50r/eda/visualization.png', dpi=300)
print('Generated eda/visualization.png successfully.')

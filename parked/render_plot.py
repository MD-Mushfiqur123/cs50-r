import matplotlib.pyplot as plt
import re
from collections import Counter

with open('c:/Users/mushfiqur/Desktop/agent/projects/cs50r/parked/lyrics/summerwind.txt', 'r') as f:
    text = f.read()

words = re.findall(r"[a-z']+", text.lower())
stopwords = {'the', 'a', 'an', 'and', 'in', 'on', 'at', 'to', 'of', 'is', 'it', 'my', 'i', 'me', 'that', 'this'}
filtered = [w for w in words if w not in stopwords]
counts = Counter(filtered).most_common(15)

words_list, freqs = zip(*reversed(counts))
plt.figure(figsize=(8, 6))
plt.barh(words_list, freqs, color='steelblue')
plt.title("Top Words in Parked Out By The Lake", fontweight='bold')
plt.xlabel('Count')
plt.ylabel('Word')
plt.tight_layout()
plt.savefig('c:/Users/mushfiqur/Desktop/agent/projects/cs50r/parked/lyrics.png', dpi=300)
print('Generated parked/lyrics.png successfully.')

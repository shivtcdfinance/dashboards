# Knowledge Tensor Dashboard

3D visualization of 2,082 skills across 50 clusters, extracted from 104 GitHub repos.

**Live:** [shivtcdfinance.github.io/dashboards/knowledge-tensor](https://shivtcdfinance.github.io/dashboards/knowledge-tensor/)

## How it works

- Each dot = one skill (TF-IDF vectorized, reduced to 3D via PCA)
- Color = K-Means cluster (50 spheres)
- Search: type any topic, find matching skills via keyword scoring
- Click+drag to rotate, scroll to zoom, click legend to toggle clusters

## Update

To refresh the data after retraining the tensor:
```bash
python ~/.hermes/skills/knowledge-tensor/dashboard.py  # starts live server
# Then click "🔄 Refresh Tensor" button
```

# **Analyzing Cell Attachment Patterns: Simulated vs Observed Marker Overlaps**
---

Notebook used to simulates and compares cell attachment patterns on specific markers to determine if they occur by chance or exhibit a specific trend.

---

#### 1. Load Dataset
- Load the dataset by entering a file path or pasting tab-separated data.
- The dataset must include FOV, marker information, and cell counts.
- The results folder is created for output.

---

#### 2. Extract FOV Masks
- Unzip the provided ZIP file containing FOV masks.
- Masks correspond to specific FOVs in the dataset and are used in the simulation.

---

#### 3. Load and Process Masks
- For each FOV, the corresponding binary mask is loaded.
- If a mask is missing, the analysis for that FOV is skipped.

---

#### 4. Simulate Overlaps
- Cells are randomly placed in the FOV, and overlaps with markers are tracked.
- Simulations run 1,000 times to estimate random overlap distributions.
- The mean simulated overlaps are calculated for each FOV.

---

#### 5. Compare Observed vs Simulated
- The observed overlaps are compared to the simulated (random) overlaps to assess if the patterns differ from chance.

---

#### 6. Plot Results
- Visualize the comparison using a combined dot plot and boxplot to show both observed and expected overlaps for each marker.

---

#### 7. Save Results
- The simulation results are saved as a CSV file for further analysis, containing observed and simulated overlap counts.

---

<font size = 4>Notebook created by [Guillaume Jacquemet](https://cellmig.org/)



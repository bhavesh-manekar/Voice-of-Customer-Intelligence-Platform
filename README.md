# Voice-of-Customer-Intelligence-Platform
Voice of Customer AI System using Speech Emotion Recognition (CNN) to analyze emotions, sentiment, CSAT scores, and risk, with insights visualized in SQL and Power BI dashboards.
# 🎙️ Voice of Customer AI System using Speech Emotion Recognition

---

## 📌 Overview
This project presents an end-to-end **Voice of Customer (VoC) AI system** that analyzes customer voice data to extract emotions and convert them into meaningful business insights.

The system uses **Speech Emotion Recognition (SER)** with a **Convolutional Neural Network (CNN)** model. It further maps emotions to sentiment, calculates customer satisfaction (CSAT), identifies high-risk customers, and visualizes insights using SQL and Power BI dashboards.

---

## 🎯 Objectives
- Detect emotions from speech audio
- Classify sentiment (Positive / Neutral / Negative)
- Calculate CSAT score
- Identify high-risk customer calls
- Build interactive dashboard for business insights

---

## 🧠 Tech Stack
- Python (NumPy, Pandas, Librosa)
- TensorFlow / Keras (CNN Model)
- MFCC Feature Extraction
- MySQL (SQL Analysis)
- Power BI (Dashboard)

---

## 📂 Dataset

### 📌 CREMA-D Dataset
🔗 https://www.kaggle.com/datasets/ejlok1/cremad

### 📖 Description
CREMA-D is a speech emotion dataset containing audio recordings of actors expressing different emotions:
- Happy
- Sad
- Angry
- Fearful
- Neutral
- Disgust
- Surprise

### ⚠️ Note
Dataset is not included due to large size.

### 📥 Setup
1. Download dataset from the link
2. Extract files
3. Place inside `dataset/` folder

---

## ⚙️ System Workflow

Audio Input  
→ MFCC Feature Extraction  
→ CNN Model  
→ Emotion Prediction  
→ Sentiment Mapping  
→ CSAT Score Calculation  
→ SQL Analysis  
→ Power BI Dashboard  

---

## 🧪 Model Details
- Model: CNN (Convolutional Neural Network)
- Input Shape: (40, 174, 1)
- Epochs: 150
- Batch Size: 50
- Accuracy: ~53%

---

## 📊 Key Features
- 🎧 Speech Emotion Detection
- 😊 Sentiment Classification
- 📈 CSAT Score Calculation
- ⚠️ Risk Detection
- 📊 Interactive Dashboard

---

## 📊 SQL Analysis

### Key Queries:
- Total Calls
- Emotion Distribution
- Sentiment Breakdown
- Average CSAT
- High Risk Calls
- Critical Calls (Angry + Negative)

---

## 📊 Power BI Dashboard

### Includes:
- KPI Cards (Total Calls, CSAT, Risk)
- Emotion Distribution Chart
- Sentiment Donut Chart
- CSAT by Emotion
- Risk Gauge
- Gender Analysis
- Call Duration Chart
- Critical Calls Table

---

## 📈 Results
- Achieved ~53% accuracy
- Successfully converted audio into business insights
- Identified risk and low satisfaction customers

---

## ⚠️ Challenges
- Audio noise
- Dataset imbalance
- Moderate accuracy

---

## 🚀 Future Scope
- Improve accuracy using LSTM / Transformers
- Real-time speech analysis
- Deployment as web app

---

## ▶️ How to Run

pip install -r requirements.txt

Run your main notebook or script.

---

## 🎤 Viva Explanation

This project analyzes customer voice data using deep learning.  
MFCC features are extracted from audio and passed into a CNN model to detect emotions.  
These emotions are mapped into sentiment and used to calculate CSAT score and risk levels.  
Finally, results are analyzed using SQL and visualized using Power BI.

---

## 👨‍💻 Author

Bhavesh Manekar  
MCA (Data Analytics & AI)

---


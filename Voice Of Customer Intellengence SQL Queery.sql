

-- ============================================================
-- SECTION 1: DATABASE & TABLE SETUP
-- ============================================================

DROP DATABASE IF EXISTS voice_customer_analytics;
CREATE DATABASE voice_customer_analytics;
USE voice_customer_analytics;

CREATE TABLE customer_calls (
    call_id             VARCHAR(100),
    actor_id            INT,
    gender              VARCHAR(10),
    emotion             VARCHAR(20),
    emotion_confidence  FLOAT,
    sentiment           VARCHAR(20),
    sentiment_score     FLOAT,
    duration_sec        FLOAT,
    csat_score          FLOAT,
    risk_flag           INT,
    transcript          TEXT
);
SELECT * FROM customer_calls;

-- Total Calls
SELECT COUNT(*) AS total_calls FROM customer_calls;

-- Avg CSAT
SELECT ROUND(AVG(csat_score),2) AS avg_csat FROM customer_calls;

-- High Risk Calls
SELECT SUM(risk_flag) AS high_risk_calls FROM customer_calls;


-- Emotion
SELECT emotion, COUNT(*) FROM customer_calls GROUP BY emotion;

-- Sentiment
SELECT sentiment, COUNT(*) FROM customer_calls GROUP BY sentiment;

-- Gender
SELECT gender, COUNT(*) FROM customer_calls GROUP BY gender;

-- BUSINESS INSIGHTS --

-- CSAT by Emotion
SELECT emotion, ROUND(AVG(csat_score),2)
FROM customer_calls
GROUP BY emotion;

-- CSAT by Sentiment
SELECT sentiment, ROUND(AVG(csat_score),2)
FROM customer_calls
GROUP BY sentiment;

-- Risk by Emotion
SELECT emotion, SUM(risk_flag)
FROM customer_calls
GROUP BY emotion;



-- Long Calls
SELECT call_id, duration_sec
FROM customer_calls
ORDER BY duration_sec DESC
LIMIT 10;


-- ADVANCED ANALYSIS -- 
-- Negative Calls
SELECT * FROM customer_calls WHERE sentiment='NEGATIVE';

-- High Risk
SELECT * FROM customer_calls WHERE risk_flag=1;

-- Critical (Angry + Negative)
SELECT * 
FROM customer_calls 
WHERE emotion='angry' AND sentiment='NEGATIVE';


-- FINAL DASHBOARD QUERY--

SELECT
    COUNT(*) AS total_calls,
    ROUND(AVG(csat_score),2) AS avg_csat,
    SUM(risk_flag) AS high_risk_calls,
    SUM(CASE WHEN sentiment='POSITIVE' THEN 1 ELSE 0 END) AS positive_calls,
    SUM(CASE WHEN sentiment='NEGATIVE' THEN 1 ELSE 0 END) AS negative_calls
FROM customer_calls;

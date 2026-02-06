# Data Lake & Storage Design

## 📌 Purpose
This folder represents the **data lake layer** of the data engineering pipeline.

A data lake is used to store data in its original form before any transformations are applied. This design mirrors how real-world data platforms separate raw data from processed data.

---

## 🧱 Storage Layers

### 1️⃣ Raw Layer (`data/raw/`)
The raw layer stores data **exactly as it is received** from the source.

**Key characteristics:**
- No modifications
- No cleaning
- Append-only
- Acts as a system of record

This layer allows the pipeline to be reprocessed if transformation logic changes.

---

### 2️⃣ Processed Layer (`data/processed/`)
The processed layer stores data that has been:
- Cleaned
- Validated
- Structured
- Prepared for analytics

This data is safe to use for reporting and downstream consumption.

---

## 🧠 Design Principles
- Raw data is never overwritten
- Processing logic is repeatable
- Storage is cheap and scalable
- Separation of concerns is enforced

---

## 🚫 What Should NOT Happen
- No transformations in the raw layer
- No manual edits to stored data
- No mixing of raw and processed files

---

## 📖 Notes
- Only small sample files (if any) are tracked in this repository
- Full datasets are assumed to live in external storage systems
- In later phases, these folders will map to cloud object storage

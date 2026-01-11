# Datadog Monitor Exporter 🇨🇳  

This project provides a simple Python script to export all Datadog monitors to a CSV file.  

## 📦 What it does  
- Connects to the Datadog API using your API key and application key.  
- Retrieves all monitors in your Datadog account.  
- Writes a CSV file (`monitors.csv` by default) containing monitor ID, name, type, query, message, and tags.  

## 💪 Prerequisites  
- A Datadog account with API and Application keys.  
- Python 3.7+ installed.  
- Install the Datadog Python client:  
  ```bash  
  pip install datadog  
  ```  
- Set environment variables:  
  - `DATADOG_API_KEY`  
  - `DATADOG_APP_KEY`  

## 🚀 Usage  
1. Clone or navigate to this repository.  
2. Change into this directory:  
   ```bash  
   cd monitoring/datadog-export  
   ```  
3. Run the script:  
   ```bash  
   python export_monitors.py --output monitors.csv  
   ```  
   You can omit `--output` to use the default file name. After completion, you'll find `monitors.csv` in the same directory.  

## 🧹 Cleanup  
No cleanup is required. The script only reads from Datadog and writes a local CSV file.  

## 🔧 Customization tips  
- Modify the script to filter monitors by tag or status.  
- Extend the CSV output to include additional monitor fields.  
- Schedule the script with cron to regularly export monitors.  

---  
Author: [@bituranjankumar](https://github.com/bituranjankumar)

#!/bin/bash

# -------------------------------------------
# GCP IAM Security Lab
# Assign Custom Role to Service Account
# -------------------------------------------

PROJECT_ID="gcp-iam-security-lab"

SERVICE_ACCOUNT="cloud-security-viewer@gcp-iam-security-lab.iam.gserviceaccount.com"

echo "[+] Assigning Custom Role..."

gcloud projects add-iam-policy-binding $PROJECT_ID \
--member="serviceAccount:$SERVICE_ACCOUNT" \
--role="projects/$PROJECT_ID/roles/CustomRole"

echo "[✓] Custom Role Assigned Successfully"

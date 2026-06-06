#!/bin/bash

# -------------------------------------------
# GCP IAM Security Lab
# Cleanup Resources
# -------------------------------------------

PROJECT_ID="gcp-iam-security-lab"

SERVICE_ACCOUNT="cloud-security-viewer@gcp-iam-security-lab.iam.gserviceaccount.com"

echo "[+] Removing Custom Role Binding..."

gcloud projects remove-iam-policy-binding $PROJECT_ID \
--member="serviceAccount:$SERVICE_ACCOUNT" \
--role="projects/$PROJECT_ID/roles/CustomRole"

echo "[+] Deleting Custom IAM Role..."

gcloud iam roles delete CustomRole \
--project=$PROJECT_ID --quiet

echo "[✓] Cleanup Completed"

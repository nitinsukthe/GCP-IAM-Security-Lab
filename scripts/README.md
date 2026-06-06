# Automation Scripts

This folder contains automation scripts used during the GCP IAM Security Lab.

## Files

| File | Purpose |
|--------|---------|
| role-definition.json | Custom IAM Role definition |
| create-custom-role.sh | Creates the custom IAM role |
| assign-custom-role.sh | Assigns the custom role to the service account |
| verify-iam-policy.sh | Verifies IAM role assignments |
| cleanup.sh | Removes IAM resources created during the lab |

## Usage

Create Role:

```bash
chmod +x create-custom-role.sh
./create-custom-role.sh
```

Assign Role:

```bash
chmod +x assign-custom-role.sh
./assign-custom-role.sh
```

Verify Role Assignment:

```bash
chmod +x verify-iam-policy.sh
./verify-iam-policy.sh
```

Cleanup:

```bash
chmod +x cleanup.sh
./cleanup.sh
```

## Security Note

These scripts were created for educational and cloud security learning purposes in a controlled Google Cloud Platform environment.

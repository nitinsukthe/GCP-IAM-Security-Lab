# IAM Policy Verification

## Objective

Verify that the custom IAM role and Viewer role were successfully assigned to the service account.

## Verification Method

The following command was used:

```bash
gcloud projects get-iam-policy gcp-iam-security-lab \
--flatten="bindings[].members" \
--filter="bindings.members:cloud-security-viewer@gcp-iam-security-lab.iam.gserviceaccount.com" \
--format="table(bindings.role)"
```

## Verification Results

The output confirmed the following roles:

- projects/gcp-iam-security-lab/roles/CustomRole
- roles/viewer

## Evidence

Screenshots included:

- Custom IAM Role Created
- Custom Role Assigned
- IAM Policy Verification

## Security Validation

The successful verification confirmed:

- Custom role assignment
- IAM policy binding functionality
- Role-based access control implementation
- Least-privilege access configuration

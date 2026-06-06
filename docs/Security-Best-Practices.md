# Security Best Practices

## Principle of Least Privilege

Permissions were limited to only what was required.

## Use of Service Accounts

Dedicated service accounts were used instead of assigning permissions directly to users.

## Avoiding Broad Permissions

Custom roles were used instead of granting administrative privileges.

## Keyless Authentication

No service account keys were created.

## Role-Based Access Control

Access was managed using IAM roles and policy bindings.

## Access Verification

IAM policies were verified using gcloud CLI.

## Governance and Compliance

Cloud access was centrally managed and documented.

## Recommended Improvements

- Enable Cloud Audit Logs
- Enforce Multi-Factor Authentication (MFA)
- Implement Organization Policies
- Regularly review IAM permissions
- Remove unused service accounts

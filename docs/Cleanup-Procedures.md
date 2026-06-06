# Cleanup Procedures

## Objective

Remove all IAM resources created during the project to prevent unnecessary resource usage and maintain a clean cloud environment.

## Resources Removed

### Service Account

Deleted:

cloud-security-viewer

### Custom IAM Role

Deleted:

CustomRole

### IAM Policy Bindings

Removed:

- Viewer Role Assignment
- CustomRole Assignment

### Project

Deleted:

gcp-iam-security-lab

## Cleanup Commands

### Remove Custom Role Binding

```bash
gcloud projects remove-iam-policy-binding gcp-iam-security-lab \
--member="serviceAccount:cloud-security-viewer@gcp-iam-security-lab.iam.gserviceaccount.com" \
--role="projects/gcp-iam-security-lab/roles/CustomRole"
```

### Delete Custom Role

```bash
gcloud iam roles delete CustomRole \
--project=gcp-iam-security-lab
```

## Security Importance

Proper cleanup helps:

- Reduce attack surface
- Prevent permission sprawl
- Eliminate unused identities
- Improve cloud governance
- Avoid accidental charges

## Project Status

Project successfully completed and all created resources removed.

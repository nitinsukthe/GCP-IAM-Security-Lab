# Custom IAM Role

## Objective

The objective of this custom role was to demonstrate how cloud administrators can create granular permissions instead of using broad administrative roles.

## Custom Role Information

Role Name:

CustomRole

Description:

Custom role for cloud security IAM demonstration.

## Permissions Included

- compute.instances.list
- compute.instances.start
- compute.instances.stop

## Role Definition

```json
{
  "title": "CustomRole",
  "description": "Custom role for cloud security IAM demonstration",
  "stage": "GA",
  "includedPermissions": [
    "compute.instances.list",
    "compute.instances.start",
    "compute.instances.stop"
  ]
}
```

## Creation Command

```bash
gcloud iam roles create CustomRole \
--project=gcp-iam-security-lab \
--file=role-definition.json
```

## Security Benefits

- Fine-grained permission control
- Reduced privilege escalation risk
- Improved governance
- Better compliance alignment
```

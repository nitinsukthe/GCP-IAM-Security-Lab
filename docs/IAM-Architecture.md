# IAM Architecture

## Architecture Overview

This project implements a secure IAM architecture within Google Cloud Platform to demonstrate how identities and permissions are managed using service accounts and custom roles.

## Components

### User Account

The project administrator account was used to create and manage IAM resources.

### Service Account

A dedicated service account was created:

cloud-security-viewer

The service account represents non-human workloads and follows cloud security best practices.

### Viewer Role

The Viewer role was assigned to provide read-only access to project resources.

### Custom IAM Role

A custom IAM role was created with limited permissions:

- compute.instances.list
- compute.instances.start
- compute.instances.stop

### IAM Policy Binding

IAM policy bindings were used to associate identities with predefined and custom roles.

## Logical Flow

User
↓
IAM Policy
↓
Service Account
↓
Custom Role
↓
Compute Engine Permissions

## Security Benefits

- Reduced attack surface
- Controlled privilege assignment
- Improved governance
- Better auditability
- Compliance with least-privilege principles

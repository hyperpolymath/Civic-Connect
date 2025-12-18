# Security Policy

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 0.1.x   | :white_check_mark: |

## Reporting a Vulnerability

**Please do not report security vulnerabilities through public GitHub issues.**

Instead, please report them via email to: **security@hyperpolymath.org**

Please include the following information in your report:
- Type of vulnerability (e.g., buffer overflow, SQL injection, cross-site scripting)
- Full paths of source file(s) related to the vulnerability
- Location of the affected source code (tag/branch/commit or direct URL)
- Step-by-step instructions to reproduce the issue
- Proof-of-concept or exploit code (if possible)
- Impact of the issue, including how an attacker might exploit it

### Response Timeline

- **Initial Response**: Within 48 hours of receiving your report
- **Status Update**: Within 7 days with an assessment and expected resolution timeline
- **Resolution**: Security patches are prioritized and released as soon as possible

### Disclosure Policy

We follow a coordinated disclosure process:
1. We will confirm receipt of your vulnerability report
2. We will work with you to understand and validate the issue
3. We will develop and test a fix
4. We will release the fix and publicly disclose the vulnerability

### Recognition

We appreciate security researchers who help improve our security. With your permission, we will acknowledge your contribution in our security acknowledgments page.

## Security Requirements

This project follows RSR (Rhodium Standard Repositories) security guidelines:

- **Cryptography**: No MD5/SHA1 for security purposes (SHA-256+ required)
- **Transport**: HTTPS only (no HTTP URLs)
- **Secrets**: Environment variables only, never committed to repository
- **Dependencies**: SHA-pinned GitHub Actions, weekly Dependabot updates
- **Analysis**: OSSF Scorecard, CodeQL, and TruffleHog scanning

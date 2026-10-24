# Phase 1: Threat Assessment & Policy (Executive Summary)

**Project:** APEX Tech Forge Academy Cybersecurity Capstone
**Role:** Junior Security Analyst / Security Lead
**Author:** Edward Jose Maria
**Date:** 23 October 2026

## Objective

Write a short advisory report for Academy leadership explaining why an immediate security upgrade is critical, how the CIA Triad will protect student records, and which realistic threats the Academy faces, with one practical mitigation for each.

---

## Executive Summary (for Academy Leadership)

**To:** Academy Leadership
**From:** Edward Jose Maria, Security Lead
**Subject:** Urgent Security Upgrade: Protecting Student Records and Academy Operations

### Why this upgrade is critical

APEX Tech Forge Academy has recently detected a rise in phishing attempts and unauthorised network scanning. Scanning is usually the first stage of an attack, where an attacker looks for open doors before trying to break in. The Academy holds student records, personal details, and payment and academic information, and a breach would harm students directly. It would also damage the Academy's reputation, cause students and partners to lose trust, and could bring legal and financial consequences. For an academy that teaches cybersecurity, a public breach would be especially damaging. Acting now is far cheaper than recovering after an incident, and it protects the Academy's credibility and continued operation.

### How the CIA Triad protects student records

| Principle | What it means | How we will apply it |
|---|---|---|
| **Confidentiality** | Only authorised people can see the data | Encrypted remote access (SSH), strong passwords, and file permissions that limit sensitive records to their owner |
| **Integrity** | Data is accurate and has not been altered | Cryptographic hashing (SHA-256) to detect tampering with records and backups |
| **Availability** | Data and systems are accessible when needed | A firewall that allows only required services, regular backups, and continuous monitoring to keep systems running |

### Three realistic threats and recommended mitigations

1. **Phishing.** Attackers send deceptive emails to steal staff or student credentials.
   **Mitigation:** Run regular security-awareness training with simulated phishing exercises, and enable multi-factor authentication (MFA) on all accounts so stolen passwords alone are not enough.

2. **Ransomware.** Malware encrypts Academy files and demands payment to restore them.
   **Mitigation:** Keep regular, tested offline backups of critical data and verify their integrity with hashing, so the Academy can recover without paying.

3. **Unauthorised network scanning and brute-force attacks.** Attackers probe servers for open ports and repeatedly guess passwords to gain access.
   **Mitigation:** Configure a firewall (UFW) to expose only the necessary service (SSH on port 22), use encrypted remote access, and monitor authentication logs so repeated failed logins are detected early.

### Recommendation

Leadership should approve immediate implementation of these controls on the Academy's primary servers. The technical steps are documented in the following phases of this report: secure remote administration, data integrity verification, and network monitoring.

---

## What I did in this phase

- Reviewed the scenario and identified the Academy's key assets (student records) and the most relevant threats.
- Mapped the CIA Triad to specific controls used later in the project.
- Selected three realistic threats and one practical mitigation for each.

## Next phase

Phase 2: Secure Remote Administration (OpenSSH, UFW, PuTTY, nmap).
# Screenshot Checklist

Rules:

- Save files here with the exact names above (lowercase, no spaces, .png).
- Crop tightly and make sure no real passwords are visible.

## Phase 2

- [ ] `phase2-ufw-status.png` : output of `sudo ufw status verbose` showing `22/tcp ALLOW IN`
- [ ] `phase2-putty-session.png` : PuTTY logged in, with `whoami` and `hostname -I` output
- [ ] `phase2-nmap-scan.png` : `nmap -sV -p-` scan showing port 22 as the only open port

## Phase 3

- [ ] `phase3-file-hash.png` : creation of `confidential_records.txt` and its `sha256sum` output
- [ ] `phase3-permissions.png` : `ls -l` output showing `-rw-------` permissions

## Phase 4

- [ ] `phase4-wireshark-ssh.png` : Wireshark capture of encrypted SSH packets on port 22
- [ ] `phase4-failed-login-log.png` : the log entry showing the failed SSH login attempt

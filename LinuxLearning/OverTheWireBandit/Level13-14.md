# Level 13 → 14

## 🎯 Objective  
The password for the next level is stored in `/etc/bandit_pass/bandit14`, which **can only be read by user `bandit14`**. You're given a private SSH key file called `sshkey.private`. The correct method is to use this key to SSH directly into `bandit14`'s account.

## 💻 Commands Used  
```bash
# View the private key
cat sshkey.private

# Use the private key to login
ssh -i sshkey.private -p 2220 bandit14@bandit.labs.overthewire.org
🔐 Password
✅ Retrieved successfully after SSH login using the key.
❌ Not shown here to comply with OverTheWire rules.

🧠 Notes
What did you learn?

SSH keys can be used instead of passwords to log into remote systems.

/etc/bandit_pass/bandit14 is unreadable unless you're logged in as bandit14.

You can authenticate with ssh -i <key> to specify the identity file (private key).

Any new command/tool?

ssh -i keyfile user@host

How strict file permissions (chmod 600) are enforced for SSH keys.

Anything tricky?

Tried to chmod, cp, cat > file, mkdir, and use openssl or s_client — all failed due to permission restrictions.

Overcomplicated things until realizing the key was already usable as-is.

Final fix was to simply SSH with the private key and correct port (2220).


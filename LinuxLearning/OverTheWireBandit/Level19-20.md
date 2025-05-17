# Level 19 → 20

## 🎯 Objective  
Use a **setuid binary** in the home directory to read the password for the next level from `/etc/bandit_pass/bandit20`. The binary runs as `bandit20`, so if used correctly, you gain permission to access its files.

---

## 🛠️ Commands Used  
```bash
# 1. List files and check permissions to spot the setuid binary
ls -l

# 2. Run the binary with no args to see usage
./bandit20-do

# 3. Run with the right command to access bandit20’s password
./bandit20-do cat /etc/bandit_pass/bandit20
🧠 Notes
What did I learn?
Learned what a setuid binary is — a program that runs with the privileges of its owner (in this case, bandit20) even when executed by another user.

Realized I can use it to run cat as bandit20, allowing access to otherwise protected files.

Got more confident recognizing permission flags like -rwsr-xr-x.

Anything tricky?
Initially had no idea what a setuid binary was or what -rwsr meant.

Thought I needed to escalate privileges manually, but just had to run the binary with the right args.

Skimmed over the clue to “execute without arguments first” — doing so explained everything.

✅ Cleanest path was:

bash
Copy
Edit
./bandit20-do cat /etc/bandit_pass/bandit20
Password appeared right in the terminal — success.

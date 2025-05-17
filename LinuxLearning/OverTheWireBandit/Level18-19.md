# Level 18 → 19

## 🎯 Objective

The password for the next level is stored in a file called `readme` in the home directory.  
However, `.bashrc` has been modified to instantly log you out when you SSH in.

## 🛠️ Commands Used

```bash
# Correct way to bypass .bashrc execution:
ssh -T -p 2220 bandit18@bandit.labs.overthewire.org < /dev/null cat readme
🔐 Password
✅ Password retrieved successfully — not shown for OverTheWire compliance.

🧠 Notes
What did you learn?
Learned that .bashrc can run commands that log you out as soon as you SSH in.

Discovered that using ssh -T disables pseudo-terminal allocation, so .bashrc doesn’t trigger interactively.

Redirecting input using < /dev/null prevents any blocking prompts or hangs.

You can run a remote command directly over SSH without entering an interactive shell.

Any new command/tool?
ssh -T: disables pseudo-terminal allocation (no interactive shell).

< /dev/null: provides empty input to the command to avoid hanging.

Anything tricky?
I didn’t understand why I kept getting kicked out immediately after logging in.

Thought the connection was bugged, but it was .bashrc forcefully logging me out.

Solved it by executing the command inline during SSH login to extract the password before being kicked.


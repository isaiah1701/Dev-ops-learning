# Level 15 → 16

## 🎯 Objective  
The password for the next level is retrieved by submitting the current level's password to **port 30001 on localhost** using **SSL/TLS encryption**.

---

## 🧪 Commands Used

```bash
# Start encrypted connection
openssl s_client -connect localhost:30001

# (After it says CONNECTED, paste the password manually and press Enter)
🔐 Password
✅ Password retrieved successfully — not shown for OverTheWire compliance.

🧠 Notes
What did you learn?
I learned how to use openssl s_client to send secure input over TLS. I also learned that some services expect interactive input, not just piped commands.

New commands/tools?
Yes — openssl s_client to create a TLS-secured connection. It's used when nc or telnet won't work because encryption is required.

Anything tricky?
Yeah — I thought echo "$password" | openssl s_client -connect localhost:30001 would work, but it kept failing.
Turns out the input was being sent before the TLS handshake completed.
All I had to do was:

Run openssl s_client -connect localhost:30001

Wait for CONNECTED

Paste the password manually

Hit Enter

Super simple in hindsight, but I was overcomplicating it because I didn’t fully understand how TLS interaction works yet.

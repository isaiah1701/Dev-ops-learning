# Level 14 → 15

## 🎯 Objective

The password for the next level can be retrieved by submitting the password of the **current level** to **port 30000 on localhost**.  
You must use a tool like `nc` (netcat) to send the password to that port and capture the response.

---

## 🧪 Commands Used

```bash
# Send password to port 30000
cat /etc/bandit_pass/bandit14 | nc localhost 30000
```

---

## 🔐 Password

✅ *Password successfully retrieved — not shown for OverTheWire compliance.*

---

## 🧠 Notes

### What did you learn?

- I learned how to send data to a specific port using `nc` (netcat).
- I now understand `nc` is a tool to create TCP/UDP connections and pipe data through them.
- Understood how to pipe file contents into a remote service expecting input over a port.
- That `localhost` just refers to the current machine I'm on.

### Any new command/tool?

- `nc` — used to interact with ports and send/receive raw data over a network.
- `cat /etc/bandit_pass/bandit14 | nc localhost 30000` — clean way to submit the password.

### Anything tricky?

- I didn’t know what `nc` actually did so I went in loops trying `telnet`, `echo`, weird combinations of `cat`, and other redirections.
- I also tried to manually paste the password or used wrong ports before understanding the point of piping via `nc`.
- Realized the key to this level was minimalism: just read → send → receive.


# Level 20 → 21

## 🎯 Objective

There’s a `setuid` binary called `suconnect` that:
- Connects to `localhost` on a port you give it.
- Reads **one line** of input from that port.
- If the input matches the Bandit 20 password, it responds with the password for Bandit 21.

Your goal is to set up a **fake server** that sends the correct password when the binary connects.

---

## 🛠 Commands Used

```bash
# Terminal 1 — Set up a fake server that sends the Bandit 20 password
echo "<REDACTED>" | nc -l -p 12345

# Terminal 2 — Run the binary to connect to your fake server
./suconnect 12345
```

Replace `<REDACTED>` with the password from the previous level.

---

## ✅ Password

Password was returned successfully from the `suconnect` binary.  
(Not shown here due to OverTheWire compliance.)

---

## 🧠 Notes

**What did I learn?**
- How `nc` (netcat) can act as a simple listener/server.
- The `suconnect` binary acts like a client expecting a valid response before revealing the next password.
- Timing matters — you need the listener running **before** using `suconnect`.

**New tools or concepts?**
- `nc -l -p <port>` creates a listener that can simulate a service.
- The binary doesn’t need to be modified — it just needs a valid input stream from a trusted port.

**Tricky part?**
- At first I didn’t realise I had to simulate a server myself.
- I tried running the binary without having anything listening — kept getting "Could not connect".
- Once I used two terminals, one running `nc`, the other `suconnect`, it all made sense.

---
```bash
# Summary:
# 1. Run fake server in one terminal:
echo "<REDACTED>" | nc -l -p 12345

# 2. Run the binary in another:
./suconnect 12345
```



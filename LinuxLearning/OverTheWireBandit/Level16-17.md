# Level 16 → 17

## 🎯 Objective
The password for the next level is hidden behind a port in the range `31000` to `32000`. You must:
1. Discover which ports on `localhost` are open.
2. Identify which of those speak SSL/TLS.
3. Submit the current password to the correct SSL-enabled port.
Only one port returns the password; the rest echo back what you send.

---

## 🧠 Commands Used

```bash
# Scan for open ports
nmap -p31000-32000 localhost

# OR use nc if nmap isn't available
for port in {31000..32000}; do
  (echo "" | nc -w 1 localhost $port) >/dev/null 2>&1 && echo "Port $port is open"
done

# Filter for which open ports speak SSL/TLS
for port in 31046 31518 31960 31961 31790; do
  echo | openssl s_client -connect localhost:$port -quiet </dev/null 2>/dev/null | grep -q "BEGIN CERTIFICATE" && echo "Port $port supports SSL/TLS"
done

# Submit the password manually using socat (replace the password if needed)
echo "kSkvUpMQ7LBYyCM4GBPvCvT1BfWRy0Dx" | socat - OPENSSL:localhost:31790,verify=0
🔐 Password
✅ Password successfully retrieved from the correct SSL port using socat.

💭 Notes
What did you learn?
How to scan port ranges using nmap and nc.

How to probe SSL-enabled services using openssl s_client.

That TLS services send certificates containing "BEGIN CERTIFICATE" in the handshake.

Learned to use socat to properly communicate with SSL services without breaking the connection.

Any new tools?
nmap — port scanner.

openssl s_client — SSL connection testing tool.

socat — bidirectional byte stream connector.

grep -q — silent match checker.

Anything tricky?
Didn’t initially understand that just piping echo into openssl s_client would send too early and break the handshake.

Had to learn how to finish the for loop properly (done) and avoid stuck shells.

Missed that only one port returns the correct password; others just echo your input back.

Final unlock required socat, which handled SSL cleanly and returned the private key for the next level.

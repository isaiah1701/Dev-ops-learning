# Level 10 → 11

## 🎯 Objective

The password for the next level is stored in the file `data.txt`, which contains **base64 encoded data**.

---

## 🧪 Commands Used

```bash
cat data.txt | base64 -d
```

---

## 🔐 Password

✅ *Password retrieved successfully — not shown for OverTheWire compliance.*

---

## 🧠 Notes

- **What did you learn?**  
  I learned how to decode base64-encoded data using the `base64 -d` command. Base64 is often used to encode binary into readable ASCII.

- **Any new command/tool?**  
  Yes — `base64 -d` for decoding encoded data back into its original form.

- **Anything tricky?**  
  Nope — as long as the file is correctly formatted, decoding base64 is simple. Just needed to make sure I piped the contents of the file properly into the decoder.

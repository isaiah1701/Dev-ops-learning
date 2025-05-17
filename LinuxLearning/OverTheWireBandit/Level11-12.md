# Level 11 → 12

## 🎯 Objective

The password for the next level is stored in the file `data.txt`, where all lowercase and uppercase letters have been rotated 13 positions — this is known as **ROT13 encoding**.

---

## 🧪 Commands Used

```bash
tr 'A-Za-z' 'N-ZA-Mn-za-m' < data.txt
```

---

## 🔐 Password

✅ *Password retrieved successfully — not shown for OverTheWire compliance.*

---

## 🧠 Notes

- **What did you learn?**  
  I learned how ROT13 works — it's a simple letter substitution cipher that shifts each letter by 13 places. It only affects alphabetic characters, leaving everything else untouched.

- **Any new command/tool?**  
  Yes — `tr` for character translation, which was used here to rotate letters using ROT13 logic.

- **Anything tricky?**  
  Yeah — I originally thought it involved compression tools like `bzip2`, but it turned out to be text transformation. I had very little knowledge about decoding or encoding techniques before this level, so this was a good intro into basic cryptographic formatting.


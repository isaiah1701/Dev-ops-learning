# Level 09 → 10

## 🎯 Objective

The password for the next level is stored in the file `data.txt`, hidden among a few human-readable strings, and is **preceded by several `=` characters**.

---

## 🧪 Commands Used

```bash
strings data.txt | grep '^=*\[^=]' | uniq
```

---

## 🔐 Password

✅ *Password retrieved successfully — not shown for OverTheWire compliance.*

---

## 🧠 Notes

- **What did you learn?**  
  I learned how to use regular expressions in `grep` to filter lines based on character patterns — in this case, identifying lines where a string is preceded by multiple `=` signs.

- **Any new command/tool?**  
  Not a new tool, but I practiced combining `strings`, `grep`, and `uniq` to isolate a specific human-readable value based on pattern clues.

- **Anything tricky?**  
  Yeah — writing the correct regex to match a variable number of `=` characters followed by meaningful text took a bit of testing. Also had to use `strings` to ignore binary junk in the file.

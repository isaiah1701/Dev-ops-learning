# Level 08 → 09

## 🎯 Objective

The password for the next level is stored in the file `data.txt` and is the **only line of text that occurs exactly once**.

---

## 🧪 Commands Used

```bash
sort data.txt | uniq -u
```

---

## 🔐 Password

✅ *Password retrieved successfully — not shown for OverTheWire compliance.*

---

## 🧠 Notes

- **What did you learn?**  
  I learned how to filter out all duplicate lines and keep only the unique one using `sort` and `uniq -u`.

- **Any new command/tool?**  
  `uniq -u` — it outputs only the lines that appear exactly once, and works correctly only after sorting.

- **Anything tricky?**  
  Yeah — at first I tried using `uniq` alone, but it only works properly if the file is sorted. Without `sort`, it won’t detect duplicates correctly.

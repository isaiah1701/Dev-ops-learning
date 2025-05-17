# Level 07 → 08

## 🎯 Objective

The password for the next level is stored in the file `data.txt`, on the same line as the word `millionth`.

---

## 🧪 Commands Used

```bash
strings data.txt | grep "millionth"
```

---

## 🔐 Password

✅ *Password retrieved successfully — not shown for OverTheWire compliance.*

---

## 🧠 Notes

- **What did you learn?**  
  I learned how to extract human-readable strings from a file that likely contains binary or encoded data, and how to filter for lines containing specific keywords.

- **Any new command/tool?**  
  Yes — `strings`, which is useful for pulling out printable characters from binary files or blobs.

- **Anything tricky?**  
  Not really — once I knew `strings` was needed, piping it into `grep` made the solution straightforward. Without `strings`, trying to `cat` the file would’ve shown too much noise to find anything useful.

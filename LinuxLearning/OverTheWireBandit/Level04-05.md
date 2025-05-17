# Level 04 → 05

## 🎯 Objective

The password for the next level is stored in the **only human-readable file** inside the `inhere` directory.

---

## 🧪 Commands Used

```bash
cd inhere
ls
file ./*
cat ./-file07
🔐 Password
✅ Password retrieved successfully — not shown for OverTheWire compliance.

🧠 Notes
What did you learn?
I learned how to use the file command to inspect the contents and types of multiple files, and identify the only one that’s human-readable (ASCII text).

Any new command/tool?
file — helps check if files contain readable text or binary data. Super useful when you don’t know what's inside.

Anything tricky?
It was tempting to try cd ./-file07, but I quickly learned it’s a file, not a directory. Also realized that brute-checking each file with cat would’ve been slower — file was the smarter move.



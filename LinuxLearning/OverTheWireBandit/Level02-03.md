# Level 02 → 03

## 🎯 Objective

The password for the next level is stored in a file called `spaces in this filename` located in the home directory.

---

## 🧪 Commands Used

```bash
ls
cat ./"spaces in this filename"
🔐 Password
✅ Password retrieved successfully — not shown for OverTheWire compliance.

🧠 Notes
What did you learn?
I learned that when a filename contains spaces, you need to wrap it in quotes or escape the spaces. Quoting the filename with "..." makes the shell treat it as a single argument.

Any new command/tool?
No new commands, but new syntax: handling filenames with spaces using "filename with spaces".

Anything tricky?
Yes — trying cat spaces in this filename failed because it was interpreted as multiple arguments. Using cat ./"spaces in this filename" worked perfectly.


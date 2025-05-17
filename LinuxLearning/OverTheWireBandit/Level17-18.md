# Level 17 → 18

## 🎯 Objective
Find the password for the next level, which is stored in the only line that has changed between `passwords.old` and `passwords.new`.

---

## 🧠 Commands Used

```bash
diff passwords.old passwords.new | grep '^>' | cut -d' ' -f2-
Or as a compact one-liner alternative (if order doesn’t matter):

bash
Copy
Edit
comm -13 <(sort passwords.old) <(sort passwords.new)
🔐 Password
✅ Password successfully found by isolating the changed line in passwords.new.

📝 Notes
What did you learn?
How to compare two files line-by-line using diff

How to filter only the newly added lines using grep '^>'

How to extract the content after a space using cut -d' ' -f2-

Also learned comm for comparing sorted file content

Any new commands/tools?
diff — shows line-by-line differences between files

grep '^>' — filters for lines that were added in the second file

cut -d' ' -f2- — trims off the prefix like >

comm -13 — compares two sorted files and shows lines unique to the second one

Anything tricky?
At first, I didn’t know how to isolate the changed string from the file diff output.

Thought about using cat and manually comparing before learning how to chain diff, grep, and cut to isolate the password programmatically.

Didn't realise comm was useful for sorted comparisons until later.

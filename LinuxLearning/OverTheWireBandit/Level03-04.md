# Level 03 → 04

## 🎯 Objective

The password for the next level is stored in a hidden file inside the `inhere` directory.

---

## 🧪 Commands Used

```bash
ls
cd inhere
ls -a
cat ./.hidden_file_name   # the actual file was named '...Hiding-From-You'
🔐 Password
✅ Password retrieved successfully — not shown for OverTheWire compliance.

🧠 Notes
What did you learn?
I learned how to find hidden files using the ls -a command, which shows files starting with a dot .. These are normally hidden from plain ls.

Any new command/tool?
ls -a was the key new usage — it revealed hidden files like ...Hiding-From-You.

Anything tricky?
It was easy to get confused with the . and .. entries (current and parent directories). I also learned that even files with unusual names like ...Something can be read if referenced correctly with ./filename.

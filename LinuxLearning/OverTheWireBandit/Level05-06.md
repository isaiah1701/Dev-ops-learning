# Level 05 → 06

## 🎯 Objective

The password for the next level is stored in a file somewhere under the `inhere` directory and meets all of the following criteria:
- Human-readable (ASCII text)
- Exactly 1033 bytes in size
- Not executable

---

## 🧪 Commands Used

```bash
cd inhere
find . -type f -size 1033c ! -executable -exec file {} + | grep ASCII
cat ./maybehere07/.file2
```

---

## 🔐 Password

✅ *Password retrieved successfully — not shown for OverTheWire compliance.*

---

## 🧠 Notes

- **What did you learn?**  
  I learned how to use the `find` command with specific filters for size, file type, and executability, and how to combine it with `file` and `grep` to pinpoint the correct file based on content type.

- **Any new command/tool?**  
  Yes — combining `find` with `-exec file {} +` to analyze file content, and filtering by exact size in bytes using `-size 1033c`.

- **Anything tricky?**  
  Yeah — figuring out how to precisely filter by all three conditions at once and making sure the path to the target file was typed correctly. Some false negatives happened when I miswrote the path.

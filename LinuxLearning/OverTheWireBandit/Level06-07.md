# Level 06 → 07

## 🎯 Objective

The password for the next level is stored **somewhere on the server** and meets all of the following criteria:
- Owned by user `bandit7`
- Owned by group `bandit6`
- Exactly 33 bytes in size

---

## 🧪 Commands Used

```bash
# Search entire filesystem for a file matching all required properties
find / -type f -user bandit7 -group bandit6 -size 33c 2>/dev/null

# Output:
# /var/lib/dpkg/info/bandit7.password

# Display the contents (password)
cat /var/lib/dpkg/info/bandit7.password
```

---

## 🔐 Password

✅ *Password retrieved successfully — not shown for OverTheWire compliance.*

---

## 🧠 Notes

- **What did you learn?**  
  I learned how to search the entire filesystem using `find` with combined filters: specific user, group, and exact size. Also understood the importance of suppressing permission errors with `2>/dev/null`.

- **Any new command/tool?**  
  No new tools, but combining `-user`, `-group`, and `-size` with `find` and full system search (`/`) was a new technique.

- **Anything tricky?**  
  Yes — at first, searching from the home directory returned nothing. Once I searched from `/` and redirected errors, I found the file. It was located in a deep system folder I wouldn't have guessed manually.

# Level 12 → 13

## 🎯 Objective

The password for the next level is stored in the file `data.txt`, which is a **hexdump of a file that has been repeatedly compressed**. You must reverse the hexdump, then **identify and unwrap each compression layer** until you reach the ASCII plaintext containing the password.

---

## 🧪 Commands Used

```bash
# Step 1: Create a temporary working directory
cd $(mktemp -d)

# Step 2: Copy and prepare the file
cp ~/data.txt .
xxd -r data.txt > data.bin

# Step 3: Repeat the following until the file is ASCII
file data.bin
mv data.bin data.<ext>   # e.g., .gz, .bz2, .tar, etc.
<decompress command>     # e.g., gunzip, bunzip2, tar -xvf, etc.
```

---

## 🔐 Password

✅ *Password retrieved successfully — not shown for OverTheWire compliance.*

---

## 🧠 Notes

- **What did you learn?**  
  I learned how to reverse a hex dump using `xxd -r`, check file types using `file`, and identify + extract from multiple compressed formats like `.gz`, `.bz2`, and `.tar`. This was my first time working with so many layers of file transformation.

- **Any new command/tool?**  
  Yeah — learned and used `xxd`, `mktemp`, `file`, `mv`, `gunzip`, `bunzip2`, and `tar` in a practical way. Previously I had no idea how to identify or work with these formats.

- **Anything tricky?**  
  Definitely. I didn’t know which file extension to use, so I had to rely on the `file` command output every time. I also had to be careful not to overwrite files and deal with unfamiliar errors (like archive structure or permission issues). The repeated rename-unpack cycle made it feel like peeling back layers of an onion — frustrating but rewarding.


# 🗂️ Linux File Organiser

A simple Bash script that scans a folder and automatically sorts 
files into subfolders based on their file extension.

---

## What It Does

Before running the script, a messy folder might look like this:

Downloads/


    ├── report.pdf

    ├── photo.jpg

    ├── notes.txt

    ├── budget.xlsx

    ├── selfie.JPG

    └── readme.txt

After running the script, it looks like this:

Downloads/
---
├── pdf/


      └── report.pdf
      
├── jpg/


      ├── photo.jpg

      └── selfie.jpg
      
├── txt/


      ├── notes.txt

      └── readme.txt
      
└── xlsx/


      └── budget.xlsx
    

Every file type gets its own folder. The script creates those 
folders automatically if they do not already exist.

---

## How to Run It

**Step 1 — Download the script**

Save `organise.sh` to your computer.

**Step 2 — Open a terminal**

On Linux or Mac, open Terminal.  
On Windows, open Git Bash or WSL.

**Step 3 — Give the script permission to run**

```bash
chmod +x organise.sh
```

**Step 4 — Run it**

To organise the current folder:
```bash
./organise.sh
```

To organise a specific folder:
```bash
./organise.sh /path/to/your/folder
```

For example:
```bash
./organise.sh ~/Downloads
```

---

## Example Output

    Starting file organiser...

    Target folder: /home/afaq/Downloads

    Created folder: pdf/

    Moved: report.pdf → pdf/

    Created folder: jpg/

    Moved: photo.jpg → jpg/

    Moved: selfie.jpg → jpg/

    Created folder: txt/

    Moved: notes.txt → txt/

    Moved: readme.txt → txt/

    Created folder: xlsx/

    Moved: budget.xlsx → xlsx/

    Done. 6 file(s) organised.
    

## What I Learned Building This

- Writing conditional logic and loops in Bash
- Extracting and normalising file extensions
- Using `mkdir`, `mv`, `ls`, and `echo` for file management
- Handling edge cases (folders, files with no extension, mixed case)
- Setting file permissions with `chmod`

---

## Tools Used

| Tool | Purpose |
|---|---|
| Bash | Scripting language |
| `mkdir` | Create destination folders |
| `mv` | Move files |
| `chmod` | Set execute permissions |
| Ubuntu / Linux | Runtime environment |

---

## Author

**Afaq Ali**  
NOC Agent & IT Support Technician  
Islamabad, Pakistan  
[linkedin.com/in/afaq-ali-cyber](https://linkedin.com/in/afaq-ali-cyber)

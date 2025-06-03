

---

````markdown
# Simple Bootloader

This is a minimal bootloader written in **x86 Assembly**. It runs directly on hardware (or virtual machines like QEMU) and represents the very first stage of a computer's startup process.

## 🛠 Features

- Written in pure NASM assembly
- Fits within 512 bytes (boot sector)
- Displays a simple message on screen
- Runs on QEMU or real hardware

## 🚀 Getting Started

### Prerequisites

- [NASM](https://www.nasm.us/)
- [QEMU](https://www.qemu.org/)
- (Optional) MSYS2 or a Linux shell environment

### Build

```bash
nasm -f bin boot.asm -o boot.img
````

### Run

```bash
qemu-system-x86_64 -drive format=raw,file=boot.img
```

## 📂 Project Structure

```
.
├── boot.asm     # Main bootloader code (512 bytes)
├── boot.img     # Output bootable image
└── README.md    # Project documentation
```

## ❗ Limitations

* Real mode only (16-bit)
* No file system support
* No protected mode or kernel loading (yet)

## 🔮 Future Improvements

* Add a second-stage loader
* Switch to 32-bit protected mode
* Build a basic kernel or shell
* Integrate C code with assembly

## 🙏 Acknowledgments

Thanks to the open-source community, ChatGPT, and countless tutorials and forums that made understanding low-level system internals possible.

```

---

```

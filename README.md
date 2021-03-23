# testOS
This project is hopefully the first in a series of operating system related projects, in this one the main goal is to get something functional running.

Eventual goal is to create an os that supports node the same way many linux distros support python (and maybe use it to control basic features)

# Resources
- [OSdev Wiki](https://wiki.osdev.org/Expanded_Main_Page)
- [This paper from Birmingham University](https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf)
- [This GitHub Repo](https://github.com/cfenollosa/os-tutorial)

# Makefile
- make creates a directory /dump/ to "dump" the binaries into
- make run runs the binaries inside of dump/ through qemu-system-x86_64 --nographic
- make clean deletes dump/
- make inspect looks at the binary of the bootloader

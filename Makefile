output: boot.asm
	mkdir -p dump/
	nasm -fbin boot.asm -o dump/boot.bin

br:
	make
	make run

run:
	qemu-system-x86_64 --nographic dump/boot.bin

inspect:
	xxd dump/boot.bin

clean:
	rm -r dump/

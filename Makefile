# Build OS's Files
cpp_params = -m32 -fno-use-cxa-atexit -nostdlib -fno-builtin -fno-rtti -fno-exceptions -fno-leading-underscore
as_params = --32
ld_params = -melf_i386
o_files = loader.o gdt.o port.o kernel.o

%.o: %.cpp
	g++ $(cpp_params) -o $@ -c $<

%.o: %.s
	as $(as_params) -o $@ $< 

oudadOS.bin: linker.ld $(o_files)
	ld $(ld_params) -T $< -o $@ $(o_files)

install: oudadOS.bin
	sudo cp $< /boot/oudadOS.bin

oudadOS.iso: oudadOS.bin
	mkdir iso
	mkdir iso/boot
	mkdir iso/boot/grub
	cp $< iso/boot
	echo 'set_timeout=0' >> iso/boot/grub/grub.cfg
	echo 'set_default=0' >> iso/boot/grub/grub.cfg
	echo 'menuentry "oudadOS"{' >> iso/boot/grub/grub.cfg
	echo '	multiboot /boot/oudadOS.bin' >> iso/boot/grub/grub.cfg
	echo '	boot' >> iso/boot/grub/grub.cfg
	echo '}' >> iso/boot/grub/grub.cfg
	grub-mkrescue --output=$@ iso
	rm -rf iso
	# I am developping it on a VM (Ubuntu 16.04 LTS)
	# Copy the file into a shared folder to run it outside the VM 
	sudo cp oudadOS.iso ../Share/ 


clean:
	rm -f $(o_files) oudadOS.iso oudadOS.bin 
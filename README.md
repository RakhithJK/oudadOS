# oudadOS
An Open-Source Lightweight Operating System Built from Scratch for Educational Purposes with C++ and Assembly. 

- This work is on progress. (Check TODO for more information)

## Description:
oudadOS is an operating system built from scratch because of my interest in operating systems and my passion to live such hard, great, and rewarding learning experience. oudadOS is designed in an object oriented manner for x86 architectures. You might find some parts of the operating system that are not written in an elegant way. You might find some mistakes in the Object Oriented design that I followed. The ultimate purpose of coding it from scratch is learning.

## Strcuture:
oudadOS has 3 main parts as you see in the repository. 
- lib: .h files - Libraries that are used by the sec files
  - com: hardware communication libraries
  - common: common libraries used by different .cpp files
  - drivers: abstraction of devices' drivers (e.g keyboad, mouse...)
- src: .cpp files - Implementations
  - com: hardware communication implementations
  - drivers: abstraction of devices' drivers implementations

## Build:
- Generate .iso image for oudadOS:
```
$ make oudadOS.iso
```
- Clean up:
```
$ make clean
```
Please note that I am developing oudadOS on a guest VM (Ubuntu Xenial Xerus) on a host (masOS Sierra) with a shared folder between them. I am testing it on a VM machine on my host. You can have a different scenario like developing and testing it in the same machine

## License: 
oudadOS is free software. You can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation version 3. We used grub as a bootloader which is under GNU General Public License 3 as well. Please refer to LICENSE for more information.

## Acknowledgements: 
I would like to thank Mr. Viktor Engelmann for explaining well the hard concepts of OSs on YouTube in "Make your own OS" series. I would like to thank also www.osdev.org for the great documentation and articles about OSs. I would like to thank OSDEV reddit community for sharing the knowledge for free. I would like to thank Dr. Stallings thanks to his great reference "Operating Systems: Internals and Design Principles" and Mr. Robert Love thanks to his amazing reference "Linux Kernel Development".

## Screenshots:
- Bootloader:

![alt text](http://i.imgur.com/F33GqR0.png "Bootloader")

- Main Screen:

![alt text](http://i.imgur.com/C3oCnjy.png "Main Screen")

- Writing on the Screen:

![alt text](http://i.imgur.com/1J5Svws.png "Writing on the Screen")

## TODO:
- Memory Segments and Global Descriptor Table (done)
- Hardware Communication and Ports (done)
- Interrupts (done)
- Abstraction for Drivers (done)
- PCI
- Graphics and GUI
- Multitasking
- Dynamic Memory Management
- Networking
- Ports and Protocols
- System Calls
- Partition Tables
- File Systems

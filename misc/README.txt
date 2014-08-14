floppy.img

    This is a Movitz kernel with a floppy bootloader. Any PC or PC emulator should be
    able to boot this as a floppy.
    

grub-bootloader.img

   This is an instance of GRUB (classic) configured with a menu to boot a Movitz
   kernel that is appended to itself. For example,

     cat grub-bootloader.img floppy.img > /dev/fd0

   should create a floppy that uses GRUB to boot the kernel in floppy.img. The
   purpose of this is that GRUB can boot from a wide variety of devices, not
   just floppies.

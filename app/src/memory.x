MEMORY
{
  RAM : ORIGIN = 0x20000000, LENGTH = 256K
  FLASH : ORIGIN = 0x10000000, LENGTH = 2M
}

/* Define the entry point of the program */
ENTRY(main)

/* Specify the stack size */
_stack_start = ORIGIN(RAM) + LENGTH(RAM);

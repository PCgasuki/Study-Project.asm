global    _main
global    start
section   .text
start:    mov       rax, 0x02000004         ; system call for write
mov       rdi, 1
mov       rsi, message
mov       rdx, 13 
syscall
mov       rax, 0x02000001
xor       rdi, rdi
syscall
section   .data
message:  db        "Hello", 10
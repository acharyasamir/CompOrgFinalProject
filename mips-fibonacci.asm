.data
    prompt_message: .asciiz "Enter an integer: "
    error_message: .asciiz "Illegal Number!\n"
    line_break: .asciiz "\n"

.text
main:
    li $v0, 4
    la $a0, prompt_message
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

loop1:
    bgt $t1, 24, find_fibonacci
    li $v0, 4
    la $a0, error_message
    syscall

    li $v0, 4
    la $a0, prompt_message
    syscall

    li $v0, 5
    syscall
    move $t1, $v0
    j loop1

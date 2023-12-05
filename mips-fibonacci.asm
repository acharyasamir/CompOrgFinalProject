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

find_fibonacci:
    move $a1, $v0
    li $s0, 0
    li $s1, 1
    ...
    li $v0, 4
    la $a0, line_break
    syscall

loop2:
    ...
    j loop2

end_program:
    li $v0, 10
    syscall
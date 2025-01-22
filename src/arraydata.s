.equ DATA_SIZE, 32
.equ FIRST_INDEX, 0
.equ SECOND_INDEX, 8
.equ THIRD_INDEX, 16
.equ FOURTH_INDEX, 24

.section .data
    count:
        .quad (enddata - data) / DATA_SIZE 
    data:
        .quad 1, 2, 3, 4
        .quad 5, 6, 7, 8
        .quad 9, 10, 11, 12
        .quad 13, 14, 15, 16
    enddata:

.globl DATA_SIZE, FIRST_INDEX, SECOND_INDEX, THIRD_INDEX, FOURTH_INDEX
.globl data

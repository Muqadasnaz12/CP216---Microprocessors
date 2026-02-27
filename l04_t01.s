/*
-------------------------------------------------------
l04_t01.s
-------------------------------------------------------
Author:  Muqadas Nazif
ID:      169061218
Email:   nazi1218@wlu.ca
Date:    2026-02-25
-------------------------------------------------------
Calculates the sum of all values in the list
r0: current list value
r1: sum
r2: address of start of list
r3: address of end of list
-------------------------------------------------------
*/
.org 0x1000  // Start at memory location 1000
.text        // Code section
.global _start
_start:

ldr    r2, =Data    // Start address
ldr    r3, =_Data  // End address
mov    r1, #0      // sum = 0

Loop:
ldr    r0, [r2], #4 // Load value, r2+= 4
add    r1, r1, r0   //sum += value
cmp    r2, r3       // reached end?
bne    Loop         

_stop:
b _stop

.data
.align
Data:
.word   4,5,-9,0,3,0,8,-7,12    // The list of data
_Data: // End of list address

.end
/*
-------------------------------------------------------
l04_t03.s
-------------------------------------------------------
Author:  Muqadas Nazif
ID:      169061218
Email:   nazi1218@wlu.ca
Date:    2026-02-25
-------------------------------------------------------
Finds minimum and maximum values
r0: current list value
r2: address of list
r3: end address
r6: minimum
r7: maximum
-------------------------------------------------------
*/
.org 0x1000  // Start at memory location 1000
.text        // Code section
.global _start
_start:

ldr    r2, =Data    
ldr    r3, =_Data  

//Load frist value -> intialize min and max 
ldr    r0,[r2], #4
mov    r6, r0 //min = first value 
mov    r7, r0 //max = first value 

Loop:
ldr    r0, [r2], #4 

cmp    r0, r6
movlt  r6, r0 //if value < min -> update

cmp    r0, r7
movgt  r7, r0 //if value > max -> update 

cmp   r2,r3
bne   Loop

_stop:
b _stop

.data
.align
Data:
.word   4,5,-9,0,3,0,8,-7,12    // The list of data
_Data: // End of list address

.end
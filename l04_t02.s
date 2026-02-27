/*
-------------------------------------------------------
l04_t02.s
-------------------------------------------------------
Author:  Muqadas Nazif
ID:      169061218
Email:   nazi1218@wlu.ca
Date:    2026-02-25
-------------------------------------------------------
Counts list values and total bytes
r0: current list value
r2: address of start of list
r3: address of end of list
r4: element count
r5: byte count
-------------------------------------------------------
*/
.org 0x1000  // Start at memory location 1000
.text        // Code section
.global _start
_start:

ldr    r2, =Data    
ldr    r3, =_Data  

mov    r4, #0      //count = 0

Loop:
ldr    r0, [r2], #4 
add    r4, r4, #1   //count ++
cmp    r2, r3       
bne    Loop       

//Bytes = end-start
ldr r2, =Data
ldr r3, =_Data
sub r5,r3,r2  //r5=bytes

_stop:
b _stop

.data
.align
Data:
.word   4,5,-9,0,3,0,8,-7,12    // The list of data
_Data: // End of list address

.end
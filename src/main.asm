; GB Main bank - entry point

DEBUG EQU 0

INCLUDE "lib/gbhw.inc" ; standard hardware definitions from devrs.com

INCLUDE "ram.asm"
INCLUDE "irq.asm"
INCLUDE "config.inc"

; ****************************************************************************************
; boot loader jumps to here.
; ****************************************************************************************
SECTION "BOOT", ROM0[$0100]
nop
jp Start

; ****************************************************************************************
; ROM HEADER
; ****************************************************************************************
; ROM header
 ROM_HEADER ROM_NOMBC, ROM_SIZE_32KBYTE, RAM_SIZE_0KBYTE

; ****************************************************************************************
; Main code Start
; ****************************************************************************************
SECTION "BOOT_Start", ROM0[$0150]
Start:
  di
  ld    sp, CONFIG_StackPointer
.loop:
  halt
  jr .loop

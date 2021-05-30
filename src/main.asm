; GB Main bank - entry point

INCLUDE "lib/gbhw.inc" ; standard hardware definitions from devrs.com

; IRQs
SECTION "Vblank", ROM0[$0040]
  reti
SECTION "LCDC", ROM0[$0048]
  reti
SECTION "Timer_Overflow", ROM0[$0050]
  reti
SECTION "Serial", ROM0[$0058]
  reti
SECTION "p1thru4", ROM0[$0060]
  reti

; ****************************************************************************************
; boot loader jumps to here.
; ****************************************************************************************
SECTION "start", ROM0[$0100]
nop
jp begin

; ****************************************************************************************
; ROM HEADER
; ****************************************************************************************
; ROM header
 ROM_HEADER ROM_NOMBC, ROM_SIZE_32KBYTE, RAM_SIZE_0KBYTE

; ****************************************************************************************
; Main code Start
; ****************************************************************************************
begin:
  nop
  di
.wait
  halt
  nop
  jr .wait

end:
  halt
  nop
  nop
  nop
  nop
  nop
  nop
  halt
; IRQs
SECTION "IRQ_Vblank", ROM0[$0040]
  reti

SECTION "IRQ_LCDC", ROM0[$0048]
  reti

SECTION "IRQ_Timer_Overflow", ROM0[$0050]
  reti

SECTION "IRQ_Serial", ROM0[$0058]
  reti

SECTION "IRQ_p1thru4", ROM0[$0060]
  reti
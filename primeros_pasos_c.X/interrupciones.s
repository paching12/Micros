    .include "p30F4013.inc"
    .GLOBAL __INT0Interrupt
    .GLOBAL _uni
    .GLOBAL _dece
    .GLOBAL _cen
    .GLOBAL _umi
    
    __INT0Interrupt:
	push w0
	inc.b _uni
	mov	#10,    w0
	cp.b	_uni
	bra	nz,	    fin
	clr.b _uni
	inc.b _dece
	cp.b	_dece
	bra	nz,	    fin
	clr.b _dece
	inc.b _cen
	cp.b	_cen
	bra	nz,	    fin
	clr.b _cen
	inc.b _umi
	cp.b	_umi
	bra	nz,	    fin
	clr.b _umi
	
	fin:
	    bclr ifs0,	#int0if
	    pop w0
	
	    RETFIE



	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function temperatureRead
.LCPI0_0:
	.xword	0x3ffccccccccccccd              // double 1.8
	.text
	.globl	temperatureRead
	.p2align	2
	.type	temperatureRead,@function
temperatureRead:                        // @temperatureRead
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	bl	temprature_sens_read
	subs	w8, w0, #32
	scvtf	d0, w8
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fdiv	d0, d0, d1
	fcvt	s0, d0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	temperatureRead, .Lfunc_end0-temperatureRead
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym temprature_sens_read
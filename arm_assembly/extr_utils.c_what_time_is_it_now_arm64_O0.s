	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function what_time_is_it_now
.LCPI0_0:
	.xword	0x3eb0c6f7a0b5ed8d              // double 9.9999999999999995E-7
	.text
	.globl	what_time_is_it_now
	.p2align	2
	.type	what_time_is_it_now,@function
what_time_is_it_now:                    // @what_time_is_it_now
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	add	x0, sp, #8
	mov	x1, xzr
	bl	gettimeofday
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	movi	d0, #0000000000000000
	stur	d0, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldr	d0, [sp, #16]
	scvtf	d2, d0
	ldr	d0, [sp, #8]
	scvtf	d0, d0
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fmadd	d0, d0, d1, d2
	stur	d0, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	what_time_is_it_now, .Lfunc_end0-what_time_is_it_now
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gettimeofday
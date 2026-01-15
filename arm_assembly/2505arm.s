	.text
	.globl	tube_dref                       // -- Begin function tube_dref
	.p2align	2
	.type	tube_dref,@function
tube_dref:                              // @tube_dref
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_6
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #1
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #4]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarnx
	b	.LBB0_6
.LBB0_4:
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #1
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #8]
	bl	tube_free
	b	.LBB0_6
.LBB0_6:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	tube_dref, .Lfunc_end0-tube_dref
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"refs is zero for tube: %s"
	.size	.L.str, 26
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym twarnx
	.addrsig_sym tube_free
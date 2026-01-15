	.text
	.p2align	2                               // -- Begin function tube_free
	.type	tube_free,@function
tube_free:                              // @tube_free
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x1, [sp, #8]
	adrp	x0, tubes
	add	x0, x0, :lo12:tubes
	bl	ms_remove
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	bl	free
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	free
	ldr	x0, [sp, #8]
	bl	ms_clear
	ldr	x0, [sp, #8]
	bl	free
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	tube_free, .Lfunc_end0-tube_free
                                        // -- End function
	.type	tubes,@object                   // @tubes
	.bss
	.globl	tubes
	.p2align	2
tubes:
	.word	0                               // 0x0
	.size	tubes, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tube_free
	.addrsig_sym ms_remove
	.addrsig_sym free
	.addrsig_sym ms_clear
	.addrsig_sym tubes
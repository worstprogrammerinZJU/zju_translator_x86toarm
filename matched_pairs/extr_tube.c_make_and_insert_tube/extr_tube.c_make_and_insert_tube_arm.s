	.text
	.p2align	2                               // -- Begin function make_and_insert_tube
	.type	make_and_insert_tube,@function
make_and_insert_tube:                   // @make_and_insert_tube
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp]
	ldr	x0, [sp, #16]
	bl	make_tube
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_5
.LBB0_2:
	ldr	x1, [sp]
	adrp	x0, tubes
	add	x0, x0, :lo12:tubes
	bl	ms_append
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp]
	bl	tube_dref
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	make_and_insert_tube, .Lfunc_end0-make_and_insert_tube
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
	.addrsig_sym make_and_insert_tube
	.addrsig_sym make_tube
	.addrsig_sym ms_append
	.addrsig_sym tube_dref
	.addrsig_sym tubes
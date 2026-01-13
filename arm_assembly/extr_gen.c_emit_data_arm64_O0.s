	.text
	.p2align	2                               // -- Begin function emit_data
	.type	emit_data,@function
emit_data:                              // @emit_data
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	w1, [sp]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	w8, [x8, #4]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w1, [x8, #8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit_noindent
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w1, [x8, #8]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit_noindent
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	w1, [x8]
	ldr	w2, [sp, #4]
	ldr	w3, [sp]
	bl	do_emit_data
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_data, .Lfunc_end0-emit_data
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".data %d"
	.size	.L.str, 9
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	".global %s"
	.size	.L.str.1, 11
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s:"
	.size	.L.str.2, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_data
	.addrsig_sym emit
	.addrsig_sym emit_noindent
	.addrsig_sym do_emit_data
	.addrsig_sym SAVE
	.text
	.globl	trav                            // -- Begin function trav
	.p2align	2
	.type	trav,@function
trav:                                   // @trav
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	ldur	x0, [x29, #-16]
	bl	GPOINTER_TO_INT
	str	w0, [sp, #4]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	b	.LBB0_2
.LBB0_2:
	ldr	w1, [sp, #4]
	ldr	x2, [sp, #8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	adrp	x8, FALSE
	ldr	x9, [x8, :lo12:FALSE]
	ldr	x10, [sp, #16]
	str	x9, [x10]
	ldr	x0, [x8, :lo12:FALSE]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	trav, .Lfunc_end0-trav
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	","
	.size	.L.str, 2
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"\n\t%d /* %s */"
	.size	.L.str.1, 14
	.type	FALSE,@object                   // @FALSE
	.bss
	.globl	FALSE
	.p2align	3
FALSE:
	.xword	0                               // 0x0
	.size	FALSE, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym GPOINTER_TO_INT
	.addrsig_sym printf
	.addrsig_sym FALSE
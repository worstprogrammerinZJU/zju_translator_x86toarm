	.text
	.globl	unget_token                     // -- Begin function unget_token
	.p2align	2
	.type	unget_token,@function
unget_token:                            // @unget_token
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, TEOF
	ldr	x9, [x9, :lo12:TEOF]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	adrp	x8, buffers
	ldr	w0, [x8, :lo12:buffers]
	bl	vec_tail
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	bl	vec_push
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	unget_token, .Lfunc_end0-unget_token
                                        // -- End function
	.type	TEOF,@object                    // @TEOF
	.bss
	.globl	TEOF
	.p2align	3
TEOF:
	.xword	0                               // 0x0
	.size	TEOF, 8
	.type	buffers,@object                 // @buffers
	.globl	buffers
	.p2align	2
buffers:
	.word	0                               // 0x0
	.size	buffers, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_tail
	.addrsig_sym vec_push
	.addrsig_sym TEOF
	.addrsig_sym buffers
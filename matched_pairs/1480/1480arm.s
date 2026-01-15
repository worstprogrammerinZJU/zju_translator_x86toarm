	.text
	.p2align	2                               // -- Begin function try_exit
	.type	try_exit,@function
try_exit:                               // @try_exit
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	strb	wzr, [sp, #15]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #3
	b.hi	.LBB0_6
// %bb.1:
	ldr	x11, [sp]                       // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	mov	w8, #41
	str	w8, [sp, #8]
	mov	w8, #41
	strb	w8, [sp, #15]
	b	.LBB0_7
.LBB0_3:
	mov	w8, #93
	str	w8, [sp, #8]
	mov	w8, #93
	strb	w8, [sp, #15]
	b	.LBB0_7
.LBB0_4:
	mov	w8, #125
	str	w8, [sp, #8]
	mov	w8, #125
	strb	w8, [sp, #15]
	b	.LBB0_7
.LBB0_5:
	mov	w8, #41
	strb	w8, [sp, #15]
	adrp	x8, QQSTRING_INTERP_END
	ldr	w8, [x8, :lo12:QQSTRING_INTERP_END]
	str	w8, [sp, #8]
	b	.LBB0_7
.LBB0_6:
	adrp	x8, INVALID_CHARACTER
	ldr	w8, [x8, :lo12:INVALID_CHARACTER]
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_7:
	ldrb	w0, [sp, #15]
	bl	assert
	ldrb	w8, [sp, #15]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	w0, [sp, #16]
	bl	yy_pop_state
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_9:
	adrp	x8, INVALID_CHARACTER
	ldr	w8, [x8, :lo12:INVALID_CHARACTER]
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	try_exit, .Lfunc_end0-try_exit
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_4-.Ltmp0
                                        // -- End function
	.type	QQSTRING_INTERP_END,@object     // @QQSTRING_INTERP_END
	.bss
	.globl	QQSTRING_INTERP_END
	.p2align	2
QQSTRING_INTERP_END:
	.word	0                               // 0x0
	.size	QQSTRING_INTERP_END, 4
	.type	INVALID_CHARACTER,@object       // @INVALID_CHARACTER
	.globl	INVALID_CHARACTER
	.p2align	2
INVALID_CHARACTER:
	.word	0                               // 0x0
	.size	INVALID_CHARACTER, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym try_exit
	.addrsig_sym assert
	.addrsig_sym yy_pop_state
	.addrsig_sym QQSTRING_INTERP_END
	.addrsig_sym INVALID_CHARACTER
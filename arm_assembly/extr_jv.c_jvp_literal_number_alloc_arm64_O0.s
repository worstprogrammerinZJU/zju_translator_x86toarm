	.text
	.p2align	2                               // -- Begin function jvp_literal_number_alloc
	.type	jvp_literal_number_alloc,@function
jvp_literal_number_alloc:               // @jvp_literal_number_alloc
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
	adrp	x9, DECDPUN
	ldr	w10, [x9, :lo12:DECDPUN]
	add	w8, w8, w10
	subs	w8, w8, #1
	ldr	w9, [x9, :lo12:DECDPUN]
	udiv	w8, w8, w9
	str	w8, [sp, #8]
	ldrsw	x9, [sp, #8]
	mov	x8, #4
	mul	x8, x8, x9
	add	x8, x8, #4
	mov	w0, w8
	bl	jv_mem_alloc
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jvp_literal_number_alloc, .Lfunc_end0-jvp_literal_number_alloc
                                        // -- End function
	.type	DECDPUN,@object                 // @DECDPUN
	.bss
	.globl	DECDPUN
	.p2align	2
DECDPUN:
	.word	0                               // 0x0
	.size	DECDPUN, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_literal_number_alloc
	.addrsig_sym jv_mem_alloc
	.addrsig_sym DECDPUN
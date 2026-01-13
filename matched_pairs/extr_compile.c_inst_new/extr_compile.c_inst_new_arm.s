	.text
	.p2align	2                               // -- Begin function inst_new
	.type	inst_new,@function
inst_new:                               // @inst_new
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	mov	w0, #104
	bl	jv_mem_alloc
	str	x0, [sp]
	ldr	x8, [sp]
	str	xzr, [x8, #88]
	ldr	x8, [sp]
	str	xzr, [x8, #96]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp]
	str	w8, [x9, #80]
	ldr	x9, [sp]
	mov	w8, #-1
	str	w8, [x9]
	ldr	x9, [sp]
	str	xzr, [x9, #72]
	ldr	x9, [sp]
	str	xzr, [x9, #64]
	ldr	x9, [sp]
	str	xzr, [x9, #56]
	ldr	x9, [sp]
	str	xzr, [x9, #48]
	ldr	x9, [sp]
	str	w8, [x9, #4]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	bl	gen_noop
	ldr	x8, [sp]
	str	x0, [x8, #40]
	bl	gen_noop
	ldr	x8, [sp]
	str	x0, [x8, #32]
	adrp	x8, UNKNOWN_LOCATION
	ldr	w8, [x8, :lo12:UNKNOWN_LOCATION]
	ldr	x9, [sp]
	str	w8, [x9, #24]
	ldr	x8, [sp]
	str	xzr, [x8, #16]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	inst_new, .Lfunc_end0-inst_new
                                        // -- End function
	.type	UNKNOWN_LOCATION,@object        // @UNKNOWN_LOCATION
	.bss
	.globl	UNKNOWN_LOCATION
	.p2align	2
UNKNOWN_LOCATION:
	.word	0                               // 0x0
	.size	UNKNOWN_LOCATION, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_new
	.addrsig_sym jv_mem_alloc
	.addrsig_sym gen_noop
	.addrsig_sym UNKNOWN_LOCATION
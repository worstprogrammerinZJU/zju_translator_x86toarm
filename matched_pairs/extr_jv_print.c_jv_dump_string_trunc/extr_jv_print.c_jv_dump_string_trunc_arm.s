	.text
	.globl	jv_dump_string_trunc            // -- Begin function jv_dump_string_trunc
	.p2align	2
	.type	jv_dump_string_trunc,@function
jv_dump_string_trunc:                   // @jv_dump_string_trunc
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	w0, [x29, #-4]
	mov	w1, wzr
	bl	jv_dump_string
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	jv_string_value
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	strlen
	str	x0, [sp, #8]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #24]
	bl	strncpy
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x9, x9, #1
	add	x8, x8, x9
	strb	wzr, [x8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	subs	x9, x9, #1
	subs	x8, x8, x9
	b.ls	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #24]
	subs	x8, x8, #4
	b.lo	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x9, x9, #2
	add	x9, x8, x9
	mov	w8, #46
	strb	w8, [x9]
	ldur	x9, [x29, #-16]
	ldr	x10, [sp, #24]
	subs	x10, x10, #3
	add	x9, x9, x10
	strb	w8, [x9]
	ldur	x9, [x29, #-16]
	ldr	x10, [sp, #24]
	subs	x10, x10, #4
	add	x9, x9, x10
	strb	w8, [x9]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldur	x0, [x29, #-16]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jv_dump_string_trunc, .Lfunc_end0-jv_dump_string_trunc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_dump_string
	.addrsig_sym jv_string_value
	.addrsig_sym strlen
	.addrsig_sym strncpy
	.addrsig_sym jv_free
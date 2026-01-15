	.text
	.globl	jq_util_input_add_input         // -- Begin function jq_util_input_add_input
	.p2align	2
	.type	jq_util_input_add_input,@function
jq_util_input_add_input:                // @jq_util_input_add_input
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	add	w9, w8, #1
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	jv_mem_realloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #8]
	ldr	x0, [sp]
	bl	jv_mem_strdup
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x11, [sp, #8]
	ldrsw	x9, [x11]
	mov	w10, w9
	add	w10, w10, #1
	str	w10, [x11]
	str	w0, [x8, x9, lsl #2]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jq_util_input_add_input, .Lfunc_end0-jq_util_input_add_input
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_realloc
	.addrsig_sym jv_mem_strdup
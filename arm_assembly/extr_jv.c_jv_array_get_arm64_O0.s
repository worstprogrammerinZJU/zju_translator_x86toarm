	.text
	.globl	jv_array_get                    // -- Begin function jv_array_get
	.p2align	2
	.type	jv_array_get,@function
jv_array_get:                           // @jv_array_get
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	ldur	w0, [x29, #-4]
	adrp	x8, JV_KIND_ARRAY
	ldr	w1, [x8, :lo12:JV_KIND_ARRAY]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-8]
	bl	jvp_array_read
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	jv_copy
	str	w0, [sp, #12]
	b	.LBB0_3
.LBB0_2:
	bl	jv_invalid
	str	w0, [sp, #12]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_array_get, .Lfunc_end0-jv_array_get
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	2
JV_KIND_ARRAY:
	.word	0                               // 0x0
	.size	JV_KIND_ARRAY, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_array_read
	.addrsig_sym jv_copy
	.addrsig_sym jv_invalid
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_ARRAY
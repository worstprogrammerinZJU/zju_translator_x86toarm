	.text
	.globl	jv_array_set                    // -- Begin function jv_array_set
	.p2align	2
	.type	jv_array_set,@function
jv_array_set:                           // @jv_array_set
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	w0, [x29, #-8]
	adrp	x8, JV_KIND_ARRAY
	ldr	w1, [x8, :lo12:JV_KIND_ARRAY]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-8]
	bl	jvp_array_length
	ldur	w8, [x29, #-12]
	add	w8, w0, w8
	stur	w8, [x29, #-12]
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldr	w0, [sp, #16]
	bl	jv_free
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldur	w1, [x29, #-12]
	sub	x0, x29, #8
	bl	jvp_array_write
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	jv_free
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_array_set, .Lfunc_end0-jv_array_set
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	2
JV_KIND_ARRAY:
	.word	0                               // 0x0
	.size	JV_KIND_ARRAY, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Out of bounds negative array index"
	.size	.L.str, 35
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_array_length
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym jvp_array_write
	.addrsig_sym JV_KIND_ARRAY
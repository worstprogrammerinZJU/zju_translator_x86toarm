	.text
	.globl	jv_getpath                      // -- Begin function jv_getpath
	.p2align	2
	.type	jv_getpath,@function
jv_getpath:                             // @jv_getpath
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w0, [x29, #-12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldur	w0, [x29, #-12]
	bl	jv_free
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	b	.LBB0_7
.LBB0_2:
	ldur	w0, [x29, #-8]
	bl	jv_is_valid
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-12]
	bl	jv_free
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_4:
	ldur	w0, [x29, #-12]
	bl	jv_copy
	bl	jv_array_length
	cbnz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-12]
	bl	jv_free
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_6:
	ldur	w0, [x29, #-12]
	bl	jv_copy
	mov	w1, wzr
	bl	jv_array_get
	str	w0, [sp, #16]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jv_copy
	bl	jv_array_length
	mov	x2, x0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	mov	w1, #1
	bl	jv_array_slice
	str	w0, [sp, #12]
	ldur	w0, [x29, #-8]
	ldr	w1, [sp, #16]
	bl	jv_get
	ldr	w1, [sp, #12]
	bl	jv_getpath
	stur	w0, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_getpath, .Lfunc_end0-jv_getpath
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.xword	0                               // 0x0
	.size	JV_KIND_ARRAY, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Path must be specified as an array"
	.size	.L.str, 35
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_getpath
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_array_get
	.addrsig_sym jv_array_slice
	.addrsig_sym jv_get
	.addrsig_sym JV_KIND_ARRAY
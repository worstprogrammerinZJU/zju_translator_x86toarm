	.text
	.globl	jv_setpath                      // -- Begin function jv_setpath
	.p2align	2
	.type	jv_setpath,@function
jv_setpath:                             // @jv_setpath
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	w0, [x29, #-12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-16]
	bl	jv_free
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
	ldur	w0, [x29, #-16]
	bl	jv_free
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
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_6:
	ldur	w0, [x29, #-12]
	bl	jv_copy
	mov	w1, wzr
	bl	jv_array_get
	stur	w0, [x29, #-20]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jv_copy
	bl	jv_array_length
	mov	x2, x0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	mov	w1, #1
	bl	jv_array_slice
	str	w0, [sp, #24]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-20]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jv_copy
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-20]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	jv_get
	ldr	w1, [sp, #24]
	ldur	w2, [x29, #-16]
	bl	jv_setpath
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	bl	jv_set
	stur	w0, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jv_setpath, .Lfunc_end0-jv_setpath
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
	.addrsig_sym jv_setpath
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_array_get
	.addrsig_sym jv_array_slice
	.addrsig_sym jv_set
	.addrsig_sym jv_get
	.addrsig_sym JV_KIND_ARRAY
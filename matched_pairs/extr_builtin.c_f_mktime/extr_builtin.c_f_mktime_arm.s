	.text
	.p2align	2                               // -- Begin function f_mktime
	.type	f_mktime,@function
f_mktime:                               // @f_mktime
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	w0, [x29, #-20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-20]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	ret_error
	stur	w0, [x29, #-4]
	b	.LBB0_11
.LBB0_2:
	ldur	w0, [x29, #-20]
	bl	jv_copy
	bl	jv_array_length
	subs	w8, w0, #6
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-20]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	ret_error
	stur	w0, [x29, #-4]
	b	.LBB0_11
.LBB0_4:
	ldur	w0, [x29, #-20]
	add	x1, sp, #24
	bl	jv2tm
	cbnz	w0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	jv_string
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	b	.LBB0_11
.LBB0_6:
	add	x0, sp, #24
	bl	my_mktime
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	adds	x8, x8, #1
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	jv_string
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	b	.LBB0_11
.LBB0_8:
	ldr	x8, [sp, #16]
	adds	x8, x8, #2
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	jv_string
	bl	jv_invalid_with_msg
	stur	w0, [x29, #-4]
	b	.LBB0_11
.LBB0_10:
	ldr	x0, [sp, #16]
	bl	jv_number
	stur	w0, [x29, #-4]
	b	.LBB0_11
.LBB0_11:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	f_mktime, .Lfunc_end0-f_mktime
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
	.asciz	"mktime requires array inputs"
	.size	.L.str, 29
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"mktime requires parsed datetime inputs"
	.size	.L.str.1, 39
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"invalid gmtime representation"
	.size	.L.str.2, 30
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"mktime not supported on this platform"
	.size	.L.str.3, 38
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_mktime
	.addrsig_sym jv_get_kind
	.addrsig_sym ret_error
	.addrsig_sym jv_string
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv2tm
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym my_mktime
	.addrsig_sym jv_number
	.addrsig_sym JV_KIND_ARRAY
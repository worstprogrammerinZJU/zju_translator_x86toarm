	.text
	.p2align	2                               // -- Begin function f_group_by_impl
	.type	f_group_by_impl,@function
f_group_by_impl:                        // @f_group_by_impl
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	str	w2, [sp, #8]
	ldr	w0, [sp, #12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.ne	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.ne	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldr	w0, [sp, #12]
	bl	jv_copy
	bl	jv_array_length
	str	x0, [sp]                        // 8-byte Folded Spill
	ldr	w0, [sp, #8]
	bl	jv_copy
	bl	jv_array_length
	mov	x8, x0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	subs	x8, x0, x8
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #12]
	ldr	w1, [sp, #8]
	bl	jv_group
	stur	w0, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldr	w0, [sp, #12]
	ldr	w1, [sp, #8]
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	type_error2
	stur	w0, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_group_by_impl, .Lfunc_end0-f_group_by_impl
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
	.asciz	"cannot be sorted, as they are not both arrays"
	.size	.L.str, 46
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_group_by_impl
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_group
	.addrsig_sym type_error2
	.addrsig_sym JV_KIND_ARRAY
	.text
	.p2align	2                               // -- Begin function f_sort
	.type	f_sort,@function
f_sort:                                 // @f_sort
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	w0, [sp, #12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldr	w0, [sp, #12]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	jv_sort
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	w0, [sp, #12]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	type_error
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_sort, .Lfunc_end0-f_sort
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
	.asciz	"cannot be sorted, as it is not an array"
	.size	.L.str, 40
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_sort
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_sort
	.addrsig_sym jv_copy
	.addrsig_sym type_error
	.addrsig_sym JV_KIND_ARRAY
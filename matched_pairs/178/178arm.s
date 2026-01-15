	.text
	.p2align	2                               // -- Begin function f_negate
	.type	f_negate,@function
f_negate:                               // @f_negate
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	w0, [sp, #12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #12]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	type_error
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	w0, [sp, #12]
	bl	jv_number_value
	mov	w8, wzr
	subs	w0, w8, w0
	bl	jv_number
	str	w0, [sp, #8]
	ldr	w0, [sp, #12]
	bl	jv_free
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_negate, .Lfunc_end0-f_negate
                                        // -- End function
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.xword	0                               // 0x0
	.size	JV_KIND_NUMBER, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot be negated"
	.size	.L.str, 18
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_negate
	.addrsig_sym jv_get_kind
	.addrsig_sym type_error
	.addrsig_sym jv_number
	.addrsig_sym jv_number_value
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_NUMBER
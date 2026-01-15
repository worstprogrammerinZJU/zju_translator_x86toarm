	.text
	.p2align	2                               // -- Begin function f_keys
	.type	f_keys,@function
f_keys:                                 // @f_keys
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	w0, [sp, #12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_OBJECT
	ldr	x8, [x8, :lo12:JV_KIND_OBJECT]
	subs	x8, x0, x8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w0, [sp, #12]
	bl	jv_keys
	stur	w0, [x29, #-4]
	b	.LBB0_4
.LBB0_3:
	ldr	w0, [sp, #12]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	type_error
	stur	w0, [x29, #-4]
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_keys, .Lfunc_end0-f_keys
                                        // -- End function
	.type	JV_KIND_OBJECT,@object          // @JV_KIND_OBJECT
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.xword	0                               // 0x0
	.size	JV_KIND_OBJECT, 8
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.xword	0                               // 0x0
	.size	JV_KIND_ARRAY, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"has no keys"
	.size	.L.str, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_keys
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_keys
	.addrsig_sym type_error
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_ARRAY
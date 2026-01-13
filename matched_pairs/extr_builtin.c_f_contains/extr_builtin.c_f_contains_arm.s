	.text
	.p2align	2                               // -- Begin function f_contains
	.type	f_contains,@function
f_contains:                             // @f_contains
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	str	w2, [sp, #8]
	ldr	w0, [sp, #12]
	bl	jv_get_kind
	str	x0, [sp]                        // 8-byte Folded Spill
	ldr	w0, [sp, #8]
	bl	jv_get_kind
	mov	x8, x0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	subs	x8, x0, x8
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #12]
	ldr	w1, [sp, #8]
	bl	jv_contains
	bl	jv_bool
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	w0, [sp, #12]
	ldr	w1, [sp, #8]
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	type_error2
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_contains, .Lfunc_end0-f_contains
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot have their containment checked"
	.size	.L.str, 38
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_contains
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_bool
	.addrsig_sym jv_contains
	.addrsig_sym type_error2
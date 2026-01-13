	.text
	.p2align	2                               // -- Begin function ensure_not_void
	.type	ensure_not_void,@function
ensure_not_void:                        // @ensure_not_void
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_VOID
	ldr	x9, [x9, :lo12:KIND_VOID]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ensure_not_void, .Lfunc_end0-ensure_not_void
                                        // -- End function
	.type	KIND_VOID,@object               // @KIND_VOID
	.bss
	.globl	KIND_VOID
	.p2align	3
KIND_VOID:
	.xword	0                               // 0x0
	.size	KIND_VOID, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"void is not allowed"
	.size	.L.str, 20
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ensure_not_void
	.addrsig_sym error
	.addrsig_sym KIND_VOID
	.text
	.p2align	2                               // -- Begin function maybe_booleanize_retval
	.type	maybe_booleanize_retval,@function
maybe_booleanize_retval:                // @maybe_booleanize_retval
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_BOOL
	ldr	x9, [x9, :lo12:KIND_BOOL]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	maybe_booleanize_retval, .Lfunc_end0-maybe_booleanize_retval
                                        // -- End function
	.type	KIND_BOOL,@object               // @KIND_BOOL
	.bss
	.globl	KIND_BOOL
	.p2align	3
KIND_BOOL:
	.xword	0                               // 0x0
	.size	KIND_BOOL, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"movzx #al, #rax"
	.size	.L.str, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_booleanize_retval
	.addrsig_sym emit
	.addrsig_sym KIND_BOOL
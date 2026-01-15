	.text
	.p2align	2                               // -- Begin function maybe_convert_bool
	.type	maybe_convert_bool,@function
maybe_convert_bool:                     // @maybe_convert_bool
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
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	maybe_convert_bool, .Lfunc_end0-maybe_convert_bool
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
	.asciz	"test #rax, #rax"
	.size	.L.str, 16
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"setne #al"
	.size	.L.str.1, 10
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_convert_bool
	.addrsig_sym emit
	.addrsig_sym KIND_BOOL
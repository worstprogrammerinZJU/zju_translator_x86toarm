	.text
	.p2align	2                               // -- Begin function is_string
	.type	is_string,@function
is_string:                              // @is_string
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	adrp	x8, KIND_ARRAY
	ldr	x10, [x8, :lo12:KIND_ARRAY]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_CHAR
	ldr	x9, [x9, :lo12:KIND_CHAR]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	is_string, .Lfunc_end0-is_string
                                        // -- End function
	.type	KIND_ARRAY,@object              // @KIND_ARRAY
	.bss
	.globl	KIND_ARRAY
	.p2align	3
KIND_ARRAY:
	.xword	0                               // 0x0
	.size	KIND_ARRAY, 8
	.type	KIND_CHAR,@object               // @KIND_CHAR
	.globl	KIND_CHAR
	.p2align	3
KIND_CHAR:
	.xword	0                               // 0x0
	.size	KIND_CHAR, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_string
	.addrsig_sym KIND_ARRAY
	.addrsig_sym KIND_CHAR
	.text
	.p2align	2                               // -- Begin function t10
	.type	t10,@function
t10:                                    // @t10
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, v10
	adrp	x9, v10
	add	x9, x9, :lo12:v10
	mov	w10, #71
	str	w10, [x8, :lo12:v10]
	mov	w10, #3
	str	w10, [x9, #4]
	str	w10, [x9, #8]
	ldr	w8, [x8, :lo12:v10]
	ldr	w10, [x9, #4]
	add	w8, w8, w10
	ldr	w9, [x9, #8]
	add	w1, w8, w9
	mov	w0, #77
	bl	expect
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	t10, .Lfunc_end0-t10
                                        // -- End function
	.type	v10,@object                     // @v10
	.bss
	.globl	v10
	.p2align	2
v10:
	.zero	12
	.size	v10, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t10
	.addrsig_sym expect
	.addrsig_sym v10
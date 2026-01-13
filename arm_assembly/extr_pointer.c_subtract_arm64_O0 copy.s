	.text
	.p2align	2                               // -- Begin function subtract
	.type	subtract,@function
subtract:                               // @subtract
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	add	x8, x8, #5
	str	x8, [sp]
	mov	w1, #8
	mov	w0, w1
	bl	expect
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	mov	w1, w8
	mov	w0, #5
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	subtract, .Lfunc_end0-subtract
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abcdefg"
	.size	.L.str, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym subtract
	.addrsig_sym expect
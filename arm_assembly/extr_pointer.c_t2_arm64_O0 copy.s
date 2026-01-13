	.text
	.p2align	2                               // -- Begin function t2
	.type	t2,@function
t2:                                     // @t2
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w1, [x8]
	mov	w0, #97
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t2, .Lfunc_end0-t2
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ab"
	.size	.L.str, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t2
	.addrsig_sym expect
	.text
	.p2align	2                               // -- Begin function printjmp
	.type	printjmp,@function
printjmp:                               // @printjmp
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp]
	mov	w0, wzr
	bl	dest
	ldr	x8, [sp, #8]
	subs	x8, x0, x8
	mov	x9, #4
	sdiv	x1, x8, x9
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	printjmp, .Lfunc_end0-printjmp
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-> %ld"
	.size	.L.str, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printjmp
	.addrsig_sym printf
	.addrsig_sym dest
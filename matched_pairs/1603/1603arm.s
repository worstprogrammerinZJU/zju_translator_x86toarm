	.text
	.p2align	2                               // -- Begin function printcap
	.type	printcap,@function
printcap:                               // @printcap
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #12]
	bl	printcapkind
	ldr	x8, [sp, #8]
	ldr	w1, [x8]
	ldr	x8, [sp, #8]
	ldr	w2, [x8, #4]
	ldr	x8, [sp, #8]
	ldr	w3, [x8, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	printcap, .Lfunc_end0-printcap
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" (idx: %d - size: %d) -> %p\n"
	.size	.L.str, 29
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printcap
	.addrsig_sym printcapkind
	.addrsig_sym printf
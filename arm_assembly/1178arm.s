	.text
	.p2align	2                               // -- Begin function expects
	.type	expects,@function
expects:                                // @expects
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	sturh	w0, [x29, #-2]
	sturh	w1, [x29, #-4]
	ldursh	w8, [x29, #-2]
	ldursh	w9, [x29, #-4]
	subs	w8, w8, w9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldursh	w1, [x29, #-2]
	ldursh	w2, [x29, #-4]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	mov	w0, #1
	bl	exit
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	expects, .Lfunc_end0-expects
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Failed\n"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"  %d expected, but got %d\n"
	.size	.L.str.1, 27
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym expects
	.addrsig_sym printf
	.addrsig_sym exit
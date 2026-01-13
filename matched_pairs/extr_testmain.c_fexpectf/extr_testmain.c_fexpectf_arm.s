	.text
	.globl	fexpectf                        // -- Begin function fexpectf
	.p2align	2
	.type	fexpectf,@function
fexpectf:                               // @fexpectf
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	s0, [sp, #16]
	str	s1, [sp, #12]
	ldr	s0, [sp, #16]
	ldr	s1, [sp, #12]
	fcmp	s0, s1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	bl	printfail
	ldur	x1, [x29, #-8]
	ldur	w2, [x29, #-12]
	ldr	s0, [sp, #16]
	ldr	s1, [sp, #12]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	mov	w0, #1
	bl	exit
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	fexpectf, .Lfunc_end0-fexpectf
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s:%d: %f expected, but got %f\n"
	.size	.L.str, 32
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printfail
	.addrsig_sym printf
	.addrsig_sym exit
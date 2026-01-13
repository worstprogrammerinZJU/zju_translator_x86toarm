	.text
	.globl	fexpectd                        // -- Begin function fexpectd
	.p2align	2
	.type	fexpectd,@function
fexpectd:                               // @fexpectd
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	d0, [sp, #8]
	str	d1, [sp]
	ldr	d0, [sp, #8]
	ldr	d1, [sp]
	fcmp	d0, d1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	bl	printfail
	ldur	x1, [x29, #-8]
	ldur	w2, [x29, #-12]
	ldr	d0, [sp, #8]
	ldr	d1, [sp]
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
	.size	fexpectd, .Lfunc_end0-fexpectd
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s:%d: %lf expected, but got %lf\n"
	.size	.L.str, 34
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printfail
	.addrsig_sym printf
	.addrsig_sym exit
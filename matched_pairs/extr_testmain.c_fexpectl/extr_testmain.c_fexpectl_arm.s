	.text
	.globl	fexpectl                        // -- Begin function fexpectl
	.p2align	2
	.type	fexpectl,@function
fexpectl:                               // @fexpectl
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	bl	printfail
	ldur	x1, [x29, #-8]
	ldur	w2, [x29, #-12]
	ldr	x3, [sp, #8]
	ldr	x4, [sp]
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
	.size	fexpectl, .Lfunc_end0-fexpectl
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s:%d: %ld expected, but got %ld\n"
	.size	.L.str, 34
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printfail
	.addrsig_sym printf
	.addrsig_sym exit
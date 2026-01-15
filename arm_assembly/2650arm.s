	.text
	.globl	walinit                         // -- Begin function walinit
	.p2align	2
	.type	walinit,@function
walinit:                                // @walinit
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	walscandir
	str	w0, [sp, #12]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	w2, [sp, #12]
	bl	walread
	ldur	x0, [x29, #-8]
	bl	makenextfile
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarnx
	mov	w0, #1
	bl	exit
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	walinit, .Lfunc_end0-walinit
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"makenextfile"
	.size	.L.str, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym walscandir
	.addrsig_sym walread
	.addrsig_sym makenextfile
	.addrsig_sym twarnx
	.addrsig_sym exit
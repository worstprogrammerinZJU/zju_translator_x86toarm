	.text
	.globl	nanoseconds                     // -- Begin function nanoseconds
	.p2align	2
	.type	nanoseconds,@function
nanoseconds:                            // @nanoseconds
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	add	x0, sp, #8
	mov	w1, wzr
	bl	gettimeofday
	stur	w0, [x29, #-8]
	ldur	w8, [x29, #-8]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	warnx
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #16]
                                        // kill: def $w8 killed $w8 killed $x8
	mov	w9, #51712
	movk	w9, #15258, lsl #16
	mul	w8, w8, w9
	ldr	x9, [sp, #8]
                                        // kill: def $w9 killed $w9 killed $x9
	mov	w10, #1000
	mul	w9, w9, w10
	add	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	nanoseconds, .Lfunc_end0-nanoseconds
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gettimeofday"
	.size	.L.str, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gettimeofday
	.addrsig_sym warnx
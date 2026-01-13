	.text
	.p2align	2                               // -- Begin function reserve
	.type	reserve,@function
reserve:                                // @reserve
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #24]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldr	w8, [x8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.lt	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w10, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x9, [x8, #16]
	ldr	w8, [x9]
	subs	w8, w8, w10
	str	w8, [x9]
	ldr	w10, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x9, [x8, #16]
	ldr	w8, [x9, #4]
	add	w8, w8, w10
	str	w8, [x9, #4]
	ldr	w10, [sp, #12]
	ldr	x9, [sp, #16]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_4:
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #12]
	bl	needfree
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarnx
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_6:
	ldr	w10, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x9, [x8, #8]
	ldr	w8, [x9]
	subs	w8, w8, w10
	str	w8, [x9]
	ldr	w10, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x9, [x8, #8]
	ldr	w8, [x9, #4]
	add	w8, w8, w10
	str	w8, [x9, #4]
	ldr	w10, [sp, #12]
	ldr	x9, [sp, #16]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #12]
	bl	balance
	cbnz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w10, [sp, #12]
	ldr	x9, [sp, #16]
	ldr	w8, [x9]
	subs	w8, w8, w10
	str	w8, [x9]
	ldr	w10, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x9, [x8, #8]
	ldr	w8, [x9, #4]
	subs	w8, w8, w10
	str	w8, [x9, #4]
	ldr	w10, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x9, [x8, #8]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_8:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	reserve, .Lfunc_end0-reserve
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"needfree"
	.size	.L.str, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym reserve
	.addrsig_sym needfree
	.addrsig_sym twarnx
	.addrsig_sym balance
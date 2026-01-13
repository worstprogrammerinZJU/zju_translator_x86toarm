	.text
	.p2align	2                               // -- Begin function balancerest
	.type	balancerest,@function
balancerest:                            // @balancerest
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	w2, [sp, #20]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_2:
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	mov	w10, #8
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #24]
	ldr	x1, [x8, #8]
	mov	w2, wzr
	bl	balancerest
	stur	w0, [x29, #-4]
	b	.LBB0_10
.LBB0_4:
	ldr	w9, [sp, #8]
	mov	w8, #8
	subs	w8, w8, w9
	str	w8, [sp, #12]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	w8, [x8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.lt	.LBB0_7
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #4]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.lt	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x0, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8]
	ldr	w2, [sp, #12]
	bl	moveresv
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #24]
	ldr	x1, [x8, #8]
	mov	w2, wzr
	bl	balancerest
	stur	w0, [x29, #-4]
	b	.LBB0_10
.LBB0_7:
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #8]
	bl	needfree
	ldr	w8, [sp, #8]
	subs	w8, w0, w8
	b.eq	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarnx
	stur	wzr, [x29, #-4]
	b	.LBB0_10
.LBB0_9:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	ldr	x1, [sp, #24]
	ldr	w2, [sp, #8]
	bl	moveresv
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #24]
	ldr	x1, [x8, #8]
	mov	w2, wzr
	bl	balancerest
	stur	w0, [x29, #-4]
	b	.LBB0_10
.LBB0_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	balancerest, .Lfunc_end0-balancerest
                                        // -- End function
	.type	balancerest.z,@object           // @balancerest.z
	.section	.rodata,"a",@progbits
	.p2align	2
balancerest.z:
	.word	8                               // 0x8
	.size	balancerest.z, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"needfree"
	.size	.L.str, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym balancerest
	.addrsig_sym moveresv
	.addrsig_sym needfree
	.addrsig_sym twarnx
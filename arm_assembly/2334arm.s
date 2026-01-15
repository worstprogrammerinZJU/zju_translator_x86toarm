	.text
	.globl	ltoa                            // -- Begin function ltoa
	.p2align	2
	.type	ltoa,@function
ltoa:                                   // @ltoa
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	ldur	w8, [x29, #-28]
	subs	w8, w8, #2
	b.lt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-28]
	subs	w8, w8, #16
	b.le	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-24]
	strb	wzr, [x8]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	.LBB0_9
.LBB0_3:
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	abs
	str	x0, [sp, #16]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldursw	x9, [x29, #-28]
	sdiv	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	ldursw	x10, [x29, #-28]
	mul	x9, x9, x10
	subs	x9, x8, x9
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #24]
	strb	w8, [x9]
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	ldr	x8, [sp, #8]
	str	x8, [sp, #16]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_4
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	b.ge	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x9, [sp, #24]
	add	x8, x9, #1
	str	x8, [sp, #24]
	mov	w8, #45
	strb	w8, [x9]
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #24]
	bl	reverse
	ldr	x8, [sp, #24]
	strb	wzr, [x8]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	ltoa, .Lfunc_end0-ltoa
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0123456789abcdef"
	.size	.L.str, 17
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym abs
	.addrsig_sym reverse
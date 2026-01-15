	.text
	.globl	get_current_rate                // -- Begin function get_current_rate
	.p2align	2
	.type	get_current_rate,@function
get_current_rate:                       // @get_current_rate
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	get_current_batch
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.hs	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	s0, [x8, #8]
	stur	s0, [x29, #-36]                 // 4-byte Folded Spill
	ldur	d0, [x29, #-24]
	fmov	x8, d0
	ucvtf	s0, x8
	ldur	x8, [x29, #-16]
	ldr	d1, [x8]
	fmov	x8, d1
	ucvtf	s1, x8
	fdiv	s0, s0, s1
	fcvtzs	w0, s0
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #16]
	bl	pow
	fmov	s1, s0
	ldur	s0, [x29, #-36]                 // 4-byte Folded Reload
	fmul	s0, s0, s1
	stur	s0, [x29, #-4]
	b	.LBB0_18
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #24]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	subs	x8, x8, #6
	b.hi	.LBB0_17
// %bb.3:
	ldr	x11, [sp, #32]                  // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_18
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	s0, [x8, #8]
	str	s0, [sp, #28]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #28]
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	udiv	x1, x8, x9
	bl	pow
	fmov	s1, s0
	ldr	s0, [sp, #28]                   // 4-byte Folded Reload
	fmul	s0, s0, s1
	stur	s0, [x29, #-4]
	b	.LBB0_18
.LBB0_6:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-32]
	stur	wzr, [x29, #-28]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #40]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #48]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.ls	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	w8, [x29, #-32]
	stur	w8, [x29, #-4]
	b	.LBB0_18
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	ldursw	x9, [x29, #-28]
	ldr	s1, [x8, x9, lsl #2]
	ldur	s0, [x29, #-32]
	fmul	s0, s0, s1
	stur	s0, [x29, #-32]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_7
.LBB0_12:
	ldur	w8, [x29, #-32]
	stur	w8, [x29, #-4]
	b	.LBB0_18
.LBB0_13:
	ldur	x8, [x29, #-16]
	ldr	s0, [x8, #8]
	str	s0, [sp, #24]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #64]
	ldur	x1, [x29, #-24]
	bl	pow
	fmov	s1, s0
	ldr	s0, [sp, #24]                   // 4-byte Folded Reload
	fmul	s0, s0, s1
	stur	s0, [x29, #-4]
	b	.LBB0_18
.LBB0_14:
	ldur	x8, [x29, #-16]
	ldr	s0, [x8, #8]
	str	s0, [sp, #20]                   // 4-byte Folded Spill
	ldur	d0, [x29, #-24]
	fmov	x8, d0
	ucvtf	s0, x8
	ldur	x8, [x29, #-16]
	ldr	s1, [x8, #68]
	fdiv	s1, s0, s1
	fmov	s0, #1.00000000
	fsub	s0, s0, s1
	fcvtzs	w0, s0
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #16]
	bl	pow
	fmov	s1, s0
	ldr	s0, [sp, #20]                   // 4-byte Folded Reload
	fmul	s0, s0, s1
	stur	s0, [x29, #-4]
	b	.LBB0_18
.LBB0_15:
	ldur	x8, [x29, #-16]
	ldr	s0, [x8, #8]
	str	s0, [sp, #16]                   // 4-byte Folded Spill
	mov	w0, wzr
	mov	w1, #1
	bl	rand_uniform
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #16]
	bl	pow
	fmov	s1, s0
	ldr	s0, [sp, #16]                   // 4-byte Folded Reload
	fmul	s0, s0, s1
	stur	s0, [x29, #-4]
	b	.LBB0_18
.LBB0_16:
	ldur	x8, [x29, #-16]
	ldr	s0, [x8, #8]
	fcvt	d0, s0
	str	d0, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldrsw	x8, [x8, #64]
	ldur	x9, [x29, #-24]
	ldur	x10, [x29, #-16]
	ldr	x10, [x10, #32]
	subs	x9, x9, x10
	mul	x8, x8, x9
	mov	w0, w8
	bl	exp
	ldr	d0, [sp, #8]                    // 8-byte Folded Reload
	scvtf	d2, w0
	fmov	d1, #1.00000000
	fadd	d2, d1, d2
	fdiv	d1, d1, d2
	fmul	d0, d0, d1
	fcvt	s0, d0
	stur	s0, [x29, #-4]
	b	.LBB0_18
.LBB0_17:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_18
.LBB0_18:
	ldur	s0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	get_current_rate, .Lfunc_end0-get_current_rate
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_16-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_4-.Ltmp0
                                        // -- End function
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Policy is weird!\n"
	.size	.L.str, 18
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_current_batch
	.addrsig_sym pow
	.addrsig_sym rand_uniform
	.addrsig_sym exp
	.addrsig_sym fprintf
	.addrsig_sym stderr
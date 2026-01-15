	.text
	.p2align	2                               // -- Begin function clean
	.type	clean,@function
clean:                                  // @clean
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #48
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	subs	w8, w8, #47
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	adrp	x8, PATH_MAX
	ldr	w8, [x8, :lo12:PATH_MAX]
	mov	w9, w8
	mov	x8, sp
	stur	x8, [x29, #-16]
	lsr	x8, x9, #0
	add	x8, x8, #15
	and	x10, x8, #0xfffffffffffffff0
	mov	x8, sp
	subs	x8, x8, x10
	mov	sp, x8
	stur	x8, [x29, #-40]                 // 8-byte Folded Spill
	stur	x9, [x29, #-24]
	stur	x8, [x29, #-32]
	ldur	x9, [x29, #-32]
	add	x8, x9, #1
	stur	x8, [x29, #-32]
	mov	w8, #47
	strb	w8, [x9]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_9 Depth 2
                                        //     Child Loop BB0_14 Depth 2
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	subs	w8, w8, #47
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	b	.LBB0_1
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x1, [x29, #-8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	mov	w2, #2
	bl	memcmp
	cbnz	w0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	add	x8, x8, #2
	stur	x8, [x29, #-8]
	b	.LBB0_1
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x1, [x29, #-8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	mov	w2, #3
	bl	memcmp
	cbnz	w0, .LBB0_13
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x9, [x29, #-40]                 // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	add	x8, x8, #3
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-32]
	add	x9, x9, #1
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	subs	x8, x8, #1
	stur	x8, [x29, #-32]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-32]
	ldurb	w8, [x8, #-1]
	subs	w8, w8, #47
	b.eq	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=2
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=2
	ldur	x8, [x29, #-32]
	subs	x8, x8, #1
	stur	x8, [x29, #-32]
	b	.LBB0_9
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_14
.LBB0_14:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-8]
	ldrb	w9, [x8]
	mov	w8, #0
	subs	w9, w9, #47
	stur	w8, [x29, #-44]                 // 4-byte Folded Spill
	b.eq	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_14 Depth=2
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, ne
	stur	w8, [x29, #-44]                 // 4-byte Folded Spill
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_14 Depth=2
	ldur	w8, [x29, #-44]                 // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_14 Depth=2
	ldur	x8, [x29, #-8]
	add	x9, x8, #1
	stur	x9, [x29, #-8]
	ldrb	w8, [x8]
	ldur	x9, [x29, #-32]
	add	x10, x9, #1
	stur	x10, [x29, #-32]
	strb	w8, [x9]
	b	.LBB0_14
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	subs	w8, w8, #47
	b.ne	.LBB0_20
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	add	x9, x8, #1
	stur	x9, [x29, #-8]
	ldrb	w8, [x8]
	ldur	x9, [x29, #-32]
	add	x10, x9, #1
	stur	x10, [x29, #-32]
	strb	w8, [x9]
	b	.LBB0_1
.LBB0_20:
	ldur	x0, [x29, #-40]                 // 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	strb	wzr, [x8]
	bl	strdup
	ldur	x8, [x29, #-16]
	mov	sp, x8
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	clean, .Lfunc_end0-clean
                                        // -- End function
	.type	PATH_MAX,@object                // @PATH_MAX
	.bss
	.globl	PATH_MAX
	.p2align	2
PATH_MAX:
	.word	0                               // 0x0
	.size	PATH_MAX, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"./"
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"../"
	.size	.L.str.1, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym clean
	.addrsig_sym assert
	.addrsig_sym memcmp
	.addrsig_sym strdup
	.addrsig_sym PATH_MAX
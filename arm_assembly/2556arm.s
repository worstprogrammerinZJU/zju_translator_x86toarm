	.text
	.globl	fgetl                           // -- Begin function fgetl
	.p2align	2
	.type	fgetl,@function
fgetl:                                  // @fgetl
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	feof
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_18
.LBB0_2:
	mov	x8, #512
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	lsr	x0, x8, #0
	bl	malloc
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-16]
	bl	fgets
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #32]
	bl	free
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_18
.LBB0_4:
	ldr	x0, [sp, #32]
	bl	strlen
	str	x0, [sp, #24]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	subs	x9, x9, #1
	ldrb	w9, [x8, x9]
	mov	w8, #0
	subs	w9, w9, #10
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	x0, [x29, #-16]
	bl	feof
	subs	x8, x0, #0
	cset	w8, eq
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_15
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-24]
	subs	x9, x9, #1
	subs	x8, x8, x9
	b.ne	.LBB0_12
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	lsl	x8, x8, #1
	stur	x8, [x29, #-24]
	ldr	x0, [sp, #32]
	ldur	x8, [x29, #-24]
	lsr	x1, x8, #0
	bl	realloc
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	cbnz	x8, .LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_5 Depth=1
	ldur	x1, [x29, #-24]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	bl	malloc_error
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	adrp	x9, INT_MAX
	ldr	x9, [x9, :lo12:INT_MAX]
	subs	x8, x8, x9
	b.ls	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_5 Depth=1
	adrp	x8, INT_MAX
	ldr	x8, [x8, :lo12:INT_MAX]
	subs	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	add	x0, x8, x9
	ldr	x1, [sp, #16]
	ldur	x2, [x29, #-16]
	bl	fgets
	ldr	x0, [sp, #32]
	bl	strlen
	str	x0, [sp, #24]
	b	.LBB0_5
.LBB0_15:
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	subs	x9, x9, #1
	ldrb	w8, [x8, x9]
	subs	w8, w8, #10
	b.ne	.LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	subs	x9, x9, #1
	add	x8, x8, x9
	strb	wzr, [x8]
	b	.LBB0_17
.LBB0_17:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	.LBB0_18
.LBB0_18:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	fgetl, .Lfunc_end0-fgetl
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%ld\n"
	.size	.L.str, 5
	.type	INT_MAX,@object                 // @INT_MAX
	.bss
	.globl	INT_MAX
	.p2align	3
INT_MAX:
	.xword	0                               // 0x0
	.size	INT_MAX, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym feof
	.addrsig_sym malloc
	.addrsig_sym fgets
	.addrsig_sym free
	.addrsig_sym strlen
	.addrsig_sym realloc
	.addrsig_sym printf
	.addrsig_sym malloc_error
	.addrsig_sym INT_MAX
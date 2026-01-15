	.text
	.p2align	2                               // -- Begin function is_valid_tube
	.type	is_valid_tube,@function
is_valid_tube:                          // @is_valid_tube
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	strlen
	str	x0, [sp, #8]
	ldr	x10, [sp, #8]
	mov	x9, xzr
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.hs	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	x9, [sp, #8]
	ldr	x10, [sp, #16]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.hi	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	adrp	x8, NAME_CHARS
	ldr	w1, [x8, :lo12:NAME_CHARS]
	bl	strspn
	ldr	x9, [sp, #8]
	mov	w8, #0
	subs	x9, x0, x9
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-8]
	ldrb	w8, [x8]
	subs	w8, w8, #45
	cset	w8, ne
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	is_valid_tube, .Lfunc_end0-is_valid_tube
                                        // -- End function
	.type	NAME_CHARS,@object              // @NAME_CHARS
	.bss
	.globl	NAME_CHARS
	.p2align	2
NAME_CHARS:
	.word	0                               // 0x0
	.size	NAME_CHARS, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_valid_tube
	.addrsig_sym strlen
	.addrsig_sym strspn
	.addrsig_sym NAME_CHARS
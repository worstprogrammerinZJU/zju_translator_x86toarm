	.text
	.globl	block_is_const                  // -- Begin function block_is_const
	.p2align	2
	.type	block_is_const,@function
block_is_const:                         // @block_is_const
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	block_is_single
	mov	w8, #0
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	cbz	x0, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	adrp	x8, LOADK
	ldr	x10, [x8, :lo12:LOADK]
	mov	w8, #1
	subs	x9, x9, x10
	str	w8, [sp]                        // 4-byte Folded Spill
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, PUSHK_UNDER
	ldr	x9, [x9, :lo12:PUSHK_UNDER]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	block_is_const, .Lfunc_end0-block_is_const
                                        // -- End function
	.type	LOADK,@object                   // @LOADK
	.bss
	.globl	LOADK
	.p2align	3
LOADK:
	.xword	0                               // 0x0
	.size	LOADK, 8
	.type	PUSHK_UNDER,@object             // @PUSHK_UNDER
	.globl	PUSHK_UNDER
	.p2align	3
PUSHK_UNDER:
	.xword	0                               // 0x0
	.size	PUSHK_UNDER, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_is_single
	.addrsig_sym LOADK
	.addrsig_sym PUSHK_UNDER
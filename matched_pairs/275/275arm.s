	.text
	.globl	block_take_imports              // -- Begin function block_take_imports
	.p2align	2
	.type	block_take_imports,@function
block_take_imports:                     // @block_take_imports
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	bl	jv_array
	stur	w0, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	mov	w9, #0
	str	w9, [sp, #20]                   // 4-byte Folded Spill
	cbz	x8, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x9, [x8]
	adrp	x8, TOP
	ldr	x10, [x8, :lo12:TOP]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b.ne	.LBB0_6
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	mov	w9, #0
	str	w9, [sp, #20]                   // 4-byte Folded Spill
	cbz	x8, .LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	ldr	x9, [x8]
	adrp	x8, MODULEMETA
	ldr	x10, [x8, :lo12:MODULEMETA]
	mov	w8, #1
	subs	x9, x9, x10
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	adrp	x9, DEPS
	ldr	x9, [x9, :lo12:DEPS]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	eor	w8, w8, #0x1
	and	w0, w8, #0x1
	bl	assert
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	mov	w9, #0
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	cbz	x8, .LBB0_11
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x9, [x8]
	adrp	x8, MODULEMETA
	ldr	x10, [x8, :lo12:MODULEMETA]
	mov	w8, #1
	subs	x9, x9, x10
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	adrp	x9, DEPS
	ldr	x9, [x9, :lo12:DEPS]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_15
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	x0, [x29, #-8]
	bl	block_take
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	adrp	x9, DEPS
	ldr	x9, [x9, :lo12:DEPS]
	subs	x8, x8, x9
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	w8, [x29, #-12]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	x8, [sp, #24]
	ldr	w0, [x8, #8]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	jv_array_append
	stur	w0, [x29, #-12]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x0, [sp, #24]
	bl	inst_free
	b	.LBB0_7
.LBB0_15:
	ldur	w0, [x29, #-12]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	block_take_imports, .Lfunc_end0-block_take_imports
                                        // -- End function
	.type	TOP,@object                     // @TOP
	.bss
	.globl	TOP
	.p2align	3
TOP:
	.xword	0                               // 0x0
	.size	TOP, 8
	.type	MODULEMETA,@object              // @MODULEMETA
	.globl	MODULEMETA
	.p2align	3
MODULEMETA:
	.xword	0                               // 0x0
	.size	MODULEMETA, 8
	.type	DEPS,@object                    // @DEPS
	.globl	DEPS
	.p2align	3
DEPS:
	.xword	0                               // 0x0
	.size	DEPS, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_array
	.addrsig_sym assert
	.addrsig_sym block_take
	.addrsig_sym jv_array_append
	.addrsig_sym jv_copy
	.addrsig_sym inst_free
	.addrsig_sym TOP
	.addrsig_sym MODULEMETA
	.addrsig_sym DEPS
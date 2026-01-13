	.text
	.p2align	2                               // -- Begin function block_get_unbound_vars
	.type	block_get_unbound_vars,@function
block_get_unbound_vars:                 // @block_get_unbound_vars
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, ne
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_OBJECT
	ldr	x8, [x8, :lo12:JV_KIND_OBJECT]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_10
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x1, [sp, #16]
	ldr	x0, [x8, #24]
	bl	block_get_unbound_vars
	b	.LBB0_9
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, STOREV
	ldr	x9, [x9, :lo12:STOREV]
	subs	x8, x8, x9
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, STOREVN
	ldr	x9, [x9, :lo12:STOREVN]
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	cbnz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	bl	jv_string
	str	w0, [sp]                        // 4-byte Folded Spill
	bl	jv_true
	ldr	w1, [sp]                        // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	jv_object_set
	ldr	x8, [sp, #16]
	str	w0, [x8]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #32]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_10:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	block_get_unbound_vars, .Lfunc_end0-block_get_unbound_vars
                                        // -- End function
	.type	JV_KIND_OBJECT,@object          // @JV_KIND_OBJECT
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.xword	0                               // 0x0
	.size	JV_KIND_OBJECT, 8
	.type	STOREV,@object                  // @STOREV
	.globl	STOREV
	.p2align	3
STOREV:
	.xword	0                               // 0x0
	.size	STOREV, 8
	.type	STOREVN,@object                 // @STOREVN
	.globl	STOREVN
	.p2align	3
STOREVN:
	.xword	0                               // 0x0
	.size	STOREVN, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_get_unbound_vars
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_object_set
	.addrsig_sym jv_string
	.addrsig_sym jv_true
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym STOREV
	.addrsig_sym STOREVN
	.text
	.p2align	2                               // -- Begin function yy_try_NUL_trans
	.type	yy_try_NUL_trans,@function
yy_try_NUL_trans:                       // @yy_try_NUL_trans
// %bb.0:
	sub	sp, sp, #64
	str	x0, [sp, #56]
	str	x1, [sp, #48]
	ldr	x8, [sp, #48]
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	mov	x8, #1
	str	x8, [sp, #16]
	adrp	x8, yy_accept
	ldr	x8, [x8, :lo12:yy_accept]
	ldr	x9, [sp, #56]
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #56]
	ldr	x9, [sp, #32]
	str	x8, [x9, #8]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	str	x8, [x9, #16]
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	adrp	x8, yy_chk
	ldr	x8, [x8, :lo12:yy_chk]
	adrp	x9, yy_base
	ldr	x9, [x9, :lo12:yy_base]
	ldr	x10, [sp, #56]
	ldr	x9, [x9, x10, lsl #3]
	ldr	x10, [sp, #16]
	add	x9, x9, x10
	ldr	x8, [x8, x9, lsl #3]
	ldr	x9, [sp, #56]
	subs	x8, x8, x9
	b.eq	.LBB0_7
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	adrp	x8, yy_def
	ldr	x8, [x8, :lo12:yy_def]
	ldr	x9, [sp, #56]
	ldr	x8, [x8, x9, lsl #3]
	sxtw	x8, w8
	str	x8, [sp, #56]
	ldr	x8, [sp, #56]
	subs	x8, x8, #157
	b.lo	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	adrp	x8, yy_meta
	ldr	x8, [x8, :lo12:yy_meta]
	ldr	x9, [sp, #16]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #16]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_3
.LBB0_7:
	adrp	x8, yy_nxt
	ldr	x8, [x8, :lo12:yy_nxt]
	adrp	x9, yy_base
	ldr	x9, [x9, :lo12:yy_base]
	ldr	x10, [sp, #56]
	ldr	x9, [x9, x10, lsl #3]
	ldr	x10, [sp, #16]
	add	x9, x9, x10
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #56]
	ldr	x8, [sp, #56]
	subs	x8, x8, #156
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #44]
	ldr	w8, [sp, #44]
	cbz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	mov	x8, xzr
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_10
.LBB0_9:
	ldr	x8, [sp, #56]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_10
.LBB0_10:
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	yy_try_NUL_trans, .Lfunc_end0-yy_try_NUL_trans
                                        // -- End function
	.type	yy_accept,@object               // @yy_accept
	.bss
	.globl	yy_accept
	.p2align	3
yy_accept:
	.xword	0
	.size	yy_accept, 8
	.type	yy_chk,@object                  // @yy_chk
	.globl	yy_chk
	.p2align	3
yy_chk:
	.xword	0
	.size	yy_chk, 8
	.type	yy_base,@object                 // @yy_base
	.globl	yy_base
	.p2align	3
yy_base:
	.xword	0
	.size	yy_base, 8
	.type	yy_def,@object                  // @yy_def
	.globl	yy_def
	.p2align	3
yy_def:
	.xword	0
	.size	yy_def, 8
	.type	yy_meta,@object                 // @yy_meta
	.globl	yy_meta
	.p2align	3
yy_meta:
	.xword	0
	.size	yy_meta, 8
	.type	yy_nxt,@object                  // @yy_nxt
	.globl	yy_nxt
	.p2align	3
yy_nxt:
	.xword	0
	.size	yy_nxt, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_try_NUL_trans
	.addrsig_sym yy_accept
	.addrsig_sym yy_chk
	.addrsig_sym yy_base
	.addrsig_sym yy_def
	.addrsig_sym yy_meta
	.addrsig_sym yy_nxt
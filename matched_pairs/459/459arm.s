	.text
	.p2align	2                               // -- Begin function subst
	.type	subst,@function
subst:                                  // @subst
// %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            // 16-byte Folded Spill
	add	x29, sp, #160
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	bl	make_vector
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	vec_len
	mov	w8, w0
	stur	w8, [x29, #-36]
	stur	wzr, [x29, #-40]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_21 Depth 2
	ldur	w8, [x29, #-40]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ge	.LBB0_41
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	ldur	w1, [x29, #-40]
	bl	vec_get
	stur	x0, [x29, #-48]
	ldur	w8, [x29, #-40]
	ldur	w9, [x29, #-36]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	mov	x8, xzr
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	ldur	w8, [x29, #-40]
	add	w1, w8, #1
	bl	vec_get
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	stur	x8, [x29, #-56]
	ldur	x8, [x29, #-48]
	ldr	x8, [x8]
	adrp	x9, TMACRO_PARAM
	ldr	x9, [x9, :lo12:TMACRO_PARAM]
	subs	x8, x8, x9
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-60]
	ldur	x8, [x29, #-56]
	mov	w9, #0
	str	w9, [sp, #52]                   // 4-byte Folded Spill
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-56]
	ldr	x8, [x8]
	adrp	x9, TMACRO_PARAM
	ldr	x9, [x9, :lo12:TMACRO_PARAM]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]                   // 4-byte Folded Reload
	and	w8, w8, #0x1
	stur	w8, [x29, #-64]
	ldur	x0, [x29, #-48]
	mov	w1, #35
	bl	is_keyword
	cbz	x0, .LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-64]
	cbz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-56]
	ldr	w1, [x8, #8]
	bl	vec_get
	mov	x1, x0
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	bl	stringize
	mov	x1, x0
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	bl	vec_push
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	.LBB0_40
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-48]
	adrp	x8, KHASHHASH
	ldrb	w1, [x8, :lo12:KHASHHASH]
	bl	is_keyword
	cbz	x0, .LBB0_27
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-64]
	cbz	w8, .LBB0_27
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-56]
	ldr	w1, [x8, #8]
	bl	vec_get
	stur	x0, [x29, #-72]
	ldur	x8, [x29, #-56]
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_19
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-32]
	bl	vec_len
	subs	x8, x0, #0
	b.le	.LBB0_19
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-32]
	bl	vec_tail
	mov	w1, #44
	bl	is_keyword
	cbz	x0, .LBB0_19
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-72]
	bl	vec_len
	subs	x8, x0, #0
	b.le	.LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-72]
	bl	vec_append
	b	.LBB0_18
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-32]
	bl	vec_pop
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_26
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-72]
	bl	vec_len
	subs	x8, x0, #0
	b.le	.LBB0_25
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-72]
	bl	vec_head
	mov	x1, x0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	glue_push
	mov	w8, #1
	stur	w8, [x29, #-76]
	b	.LBB0_21
.LBB0_21:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldursw	x8, [x29, #-76]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-72]
	bl	vec_len
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	subs	x8, x8, x0
	b.ge	.LBB0_24
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_21 Depth=2
	ldur	x8, [x29, #-32]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-72]
	ldur	w1, [x29, #-76]
	bl	vec_get
	mov	x1, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_21 Depth=2
	ldur	w8, [x29, #-76]
	add	w8, w8, #1
	stur	w8, [x29, #-76]
	b	.LBB0_21
.LBB0_24:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	.LBB0_40
.LBB0_27:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-48]
	adrp	x8, KHASHHASH
	ldrb	w1, [x8, :lo12:KHASHHASH]
	bl	is_keyword
	cbz	x0, .LBB0_30
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-56]
	cbz	x8, .LBB0_30
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-56]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-56]
	bl	glue_push
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	.LBB0_40
.LBB0_30:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-60]
	cbz	w8, .LBB0_37
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-56]
	cbz	x8, .LBB0_37
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-56]
	adrp	x8, KHASHHASH
	ldrb	w1, [x8, :lo12:KHASHHASH]
	bl	is_keyword
	cbz	x0, .LBB0_37
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-56]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-24]
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-48]
	ldr	w1, [x8, #8]
	bl	vec_get
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	bl	vec_len
	cbnz	x0, .LBB0_35
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	.LBB0_36
.LBB0_35:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #72]
	bl	vec_append
	b	.LBB0_36
.LBB0_36:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_40
.LBB0_37:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-60]
	cbz	w8, .LBB0_39
	b	.LBB0_38
.LBB0_38:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-48]
	ldr	w1, [x8, #8]
	bl	vec_get
	str	x0, [sp, #64]
	ldur	x8, [x29, #-32]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #64]
	ldur	x1, [x29, #-48]
	bl	expand_all
	mov	x1, x0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	vec_append
	b	.LBB0_40
.LBB0_39:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-48]
	bl	vec_push
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-40]
	add	w8, w8, #1
	stur	w8, [x29, #-40]
	b	.LBB0_1
.LBB0_41:
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-24]
	bl	add_hide_set
	ldp	x29, x30, [sp, #160]            // 16-byte Folded Reload
	add	sp, sp, #176
	ret
.Lfunc_end0:
	.size	subst, .Lfunc_end0-subst
                                        // -- End function
	.type	TMACRO_PARAM,@object            // @TMACRO_PARAM
	.bss
	.globl	TMACRO_PARAM
	.p2align	3
TMACRO_PARAM:
	.xword	0                               // 0x0
	.size	TMACRO_PARAM, 8
	.type	KHASHHASH,@object               // @KHASHHASH
	.globl	KHASHHASH
KHASHHASH:
	.byte	0                               // 0x0
	.size	KHASHHASH, 1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym subst
	.addrsig_sym make_vector
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym is_keyword
	.addrsig_sym vec_push
	.addrsig_sym stringize
	.addrsig_sym vec_tail
	.addrsig_sym vec_append
	.addrsig_sym vec_pop
	.addrsig_sym glue_push
	.addrsig_sym vec_head
	.addrsig_sym expand_all
	.addrsig_sym add_hide_set
	.addrsig_sym TMACRO_PARAM
	.addrsig_sym KHASHHASH
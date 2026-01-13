	.text
	.p2align	2                               // -- Begin function read_struct_initializer_sub
	.type	read_struct_initializer_sub,@function
read_struct_initializer_sub:            // @read_struct_initializer_sub
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	bl	maybe_read_brace
	stur	w0, [x29, #-28]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #16]
	bl	dict_keys
	stur	x0, [x29, #-40]
	stur	wzr, [x29, #-44]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_17 Depth 2
	bl	get
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	mov	w1, #125
	bl	is_keyword
	cbz	x0, .LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-28]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #56]
	bl	unget_token
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_30
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #56]
	mov	w1, #46
	bl	is_keyword
	cbnz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #56]
	mov	w1, #91
	bl	is_keyword
	cbz	x0, .LBB0_10
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	cbnz	w8, .LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-24]
	cbnz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x0, [sp, #56]
	bl	unget_token
	b	.LBB0_30
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #56]
	mov	w1, #46
	bl	is_keyword
	cbz	x0, .LBB0_22
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	bl	get
	str	x0, [sp, #56]
	ldr	x8, [sp, #56]
	cbz	x8, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.eq	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldr	x0, [sp, #56]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	ldr	x8, [x8, #8]
	str	x8, [sp, #48]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #16]
	ldr	x1, [sp, #48]
	bl	dict_get
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	cbnz	x8, .LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	x0, [sp, #56]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #16]
	bl	dict_keys
	stur	x0, [x29, #-40]
	stur	wzr, [x29, #-44]
	b	.LBB0_17
.LBB0_17:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-44]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	vec_len
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_21
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_17 Depth=2
	ldur	x0, [x29, #-40]
	ldur	w1, [x29, #-44]
	add	w8, w1, #1
	stur	w8, [x29, #-44]
	bl	vec_get
	str	x0, [sp, #32]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #32]
	bl	strcmp
	cbnz	x0, .LBB0_20
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_21
.LBB0_20:                               //   in Loop: Header=BB0_17 Depth=2
	b	.LBB0_17
.LBB0_21:                               //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_25
.LBB0_22:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #56]
	bl	unget_token
	ldur	w8, [x29, #-44]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	vec_len
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ne	.LBB0_24
	b	.LBB0_23
.LBB0_23:
	b	.LBB0_28
.LBB0_24:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-40]
	ldur	w1, [x29, #-44]
	add	w8, w1, #1
	stur	w8, [x29, #-44]
	bl	vec_get
	str	x0, [sp, #48]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #16]
	ldr	x1, [sp, #48]
	bl	dict_get
	str	x0, [sp, #40]
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #40]
	ldursw	x8, [x29, #-20]
	ldr	x9, [sp, #40]
	ldr	x9, [x9, #8]
	add	x2, x8, x9
	ldur	w3, [x29, #-24]
	bl	read_initializer_elem
	bl	maybe_skip_comma
	stur	wzr, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_27
	b	.LBB0_26
.LBB0_26:
	b	.LBB0_28
.LBB0_27:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_28:
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB0_30
	b	.LBB0_29
.LBB0_29:
	bl	skip_to_brace
	b	.LBB0_30
.LBB0_30:
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	read_struct_initializer_sub, .Lfunc_end0-read_struct_initializer_sub
                                        // -- End function
	.type	TIDENT,@object                  // @TIDENT
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malformed desginated initializer: %s"
	.size	.L.str, 37
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"field does not exist: %s"
	.size	.L.str.1, 25
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_struct_initializer_sub
	.addrsig_sym maybe_read_brace
	.addrsig_sym dict_keys
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym unget_token
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym dict_get
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym strcmp
	.addrsig_sym read_initializer_elem
	.addrsig_sym maybe_skip_comma
	.addrsig_sym skip_to_brace
	.addrsig_sym TIDENT
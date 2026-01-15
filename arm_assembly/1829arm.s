	.text
	.p2align	2                               // -- Begin function is_funcdef
	.type	is_funcdef,@function
is_funcdef:                             // @is_funcdef
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	bl	make_vector
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	get
	str	x0, [sp, #24]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	bl	vec_push
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	adrp	x9, TEOF
	ldr	x9, [x9, :lo12:TEOF]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #24]
	mov	w1, #59
	bl	is_keyword
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_16
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #24]
	bl	is_type
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #24]
	mov	w1, #40
	bl	is_keyword
	cbz	x0, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	skip_parentheses
	b	.LBB0_1
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.eq	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	bl	peek
	mov	w1, #40
	bl	is_keyword
	cbnz	x0, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_13:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	bl	get
	mov	x1, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	vec_push
	ldur	x0, [x29, #-8]
	bl	skip_parentheses
	bl	peek
	mov	w1, #123
	bl	is_keyword
	mov	w8, #1
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	cbnz	x0, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	bl	peek
	bl	is_type
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_15
.LBB0_15:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	and	w8, w8, #0x1
	stur	w8, [x29, #-12]
	b	.LBB0_16
.LBB0_16:
	b	.LBB0_17
.LBB0_17:                               // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-8]
	bl	vec_len
	subs	x8, x0, #0
	b.le	.LBB0_19
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_17 Depth=1
	ldur	x0, [x29, #-8]
	bl	vec_pop
	bl	unget_token
	b	.LBB0_17
.LBB0_19:
	ldur	w0, [x29, #-12]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	is_funcdef, .Lfunc_end0-is_funcdef
                                        // -- End function
	.type	TEOF,@object                    // @TEOF
	.bss
	.globl	TEOF
	.p2align	3
TEOF:
	.xword	0                               // 0x0
	.size	TEOF, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"premature end of input"
	.size	.L.str, 23
	.type	TIDENT,@object                  // @TIDENT
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_funcdef
	.addrsig_sym make_vector
	.addrsig_sym get
	.addrsig_sym vec_push
	.addrsig_sym error
	.addrsig_sym is_keyword
	.addrsig_sym is_type
	.addrsig_sym skip_parentheses
	.addrsig_sym peek
	.addrsig_sym vec_len
	.addrsig_sym unget_token
	.addrsig_sym vec_pop
	.addrsig_sym TEOF
	.addrsig_sym TIDENT
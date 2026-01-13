	.text
	.p2align	2                               // -- Begin function read_intexpr_line
	.type	read_intexpr_line,@function
read_intexpr_line:                      // @read_intexpr_line
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	make_vector
	stur	x0, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	read_expand_newline
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TNEWLINE
	ldr	x9, [x9, :lo12:TNEWLINE]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	is_ident
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	bl	read_defined_op
	mov	x1, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_9
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	adrp	x8, cpp_token_zero
	ldr	x1, [x8, :lo12:cpp_token_zero]
	bl	vec_push
	b	.LBB0_8
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	vec_push
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.Lfunc_end0:
	.size	read_intexpr_line, .Lfunc_end0-read_intexpr_line
                                        // -- End function
	.type	TNEWLINE,@object                // @TNEWLINE
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.xword	0                               // 0x0
	.size	TNEWLINE, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"defined"
	.size	.L.str, 8
	.type	TIDENT,@object                  // @TIDENT
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.type	cpp_token_zero,@object          // @cpp_token_zero
	.globl	cpp_token_zero
	.p2align	3
cpp_token_zero:
	.xword	0
	.size	cpp_token_zero, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_intexpr_line
	.addrsig_sym make_vector
	.addrsig_sym read_expand_newline
	.addrsig_sym is_ident
	.addrsig_sym vec_push
	.addrsig_sym read_defined_op
	.addrsig_sym TNEWLINE
	.addrsig_sym TIDENT
	.addrsig_sym cpp_token_zero
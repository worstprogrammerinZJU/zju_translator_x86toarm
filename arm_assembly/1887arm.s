	.text
	.p2align	2                               // -- Begin function read_func_args
	.type	read_func_args,@function
read_func_args:                         // @read_func_args
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	bl	make_vector
	stur	x0, [x29, #-16]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	mov	w0, #41
	bl	next_token
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_19
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	bl	read_assignment_expr
	bl	conv
	stur	x0, [x29, #-32]
	ldur	w8, [x29, #-20]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	vec_len
	ldr	w8, [sp, #28]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-20]
	add	w8, w1, #1
	stur	w8, [x29, #-20]
	bl	vec_get
	str	x0, [sp, #40]
	b	.LBB0_12
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x0, [x8]
	bl	is_flotype
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, type_double
	ldr	x8, [x8, :lo12:type_double]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_11
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x0, [x8]
	bl	is_inttype
	cbz	x0, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, type_int
	ldr	x8, [x8, :lo12:type_int]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_10
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x8, [x8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x8, [sp, #40]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #40]
	ldur	x8, [x29, #-32]
	ldr	x1, [x8]
	bl	ensure_assignable
	ldr	x8, [sp, #40]
	ldr	x8, [x8]
	ldur	x9, [x29, #-32]
	ldr	x9, [x9]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.eq	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #40]
	ldur	x1, [x29, #-32]
	bl	ast_conv
	stur	x0, [x29, #-32]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	bl	vec_push
	bl	get
	str	x0, [sp, #32]
	ldr	x0, [sp, #32]
	mov	w1, #41
	bl	is_keyword
	cbz	x0, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_19
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #32]
	mov	w1, #44
	bl	is_keyword
	cbnz	x0, .LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #32]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_19:
	ldur	x0, [x29, #-16]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	read_func_args, .Lfunc_end0-read_func_args
                                        // -- End function
	.type	type_double,@object             // @type_double
	.bss
	.globl	type_double
	.p2align	3
type_double:
	.xword	0
	.size	type_double, 8
	.type	type_int,@object                // @type_int
	.globl	type_int
	.p2align	3
type_int:
	.xword	0
	.size	type_int, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unexpected token: '%s'"
	.size	.L.str, 23
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_func_args
	.addrsig_sym make_vector
	.addrsig_sym next_token
	.addrsig_sym conv
	.addrsig_sym read_assignment_expr
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym is_flotype
	.addrsig_sym is_inttype
	.addrsig_sym ensure_assignable
	.addrsig_sym ast_conv
	.addrsig_sym vec_push
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym type_double
	.addrsig_sym type_int
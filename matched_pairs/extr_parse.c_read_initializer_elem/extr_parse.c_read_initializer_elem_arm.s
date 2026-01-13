	.text
	.p2align	2                               // -- Begin function read_initializer_elem
	.type	read_initializer_elem,@function
read_initializer_elem:                  // @read_initializer_elem
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	w3, [sp, #24]
	mov	w0, #61
	bl	next_token
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, KIND_ARRAY
	ldr	x9, [x9, :lo12:KIND_ARRAY]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, KIND_STRUCT
	ldr	x9, [x9, :lo12:KIND_STRUCT]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	w2, [x29, #-20]
	ldr	w3, [sp, #24]
	bl	read_initializer_list
	b	.LBB0_7
.LBB0_3:
	mov	w0, #123
	bl	next_token
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	w2, [x29, #-20]
	mov	w3, #1
	bl	read_initializer_elem
	mov	w0, #125
	bl	expect
	b	.LBB0_6
.LBB0_5:
	bl	read_assignment_expr
	bl	conv
	str	x0, [sp, #16]
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #16]
	ldr	w1, [x8]
	bl	ensure_assignable
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	ldur	w2, [x29, #-20]
	bl	ast_init
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	vec_push
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_initializer_elem, .Lfunc_end0-read_initializer_elem
                                        // -- End function
	.type	KIND_ARRAY,@object              // @KIND_ARRAY
	.bss
	.globl	KIND_ARRAY
	.p2align	3
KIND_ARRAY:
	.xword	0                               // 0x0
	.size	KIND_ARRAY, 8
	.type	KIND_STRUCT,@object             // @KIND_STRUCT
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.xword	0                               // 0x0
	.size	KIND_STRUCT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_initializer_elem
	.addrsig_sym next_token
	.addrsig_sym read_initializer_list
	.addrsig_sym expect
	.addrsig_sym conv
	.addrsig_sym read_assignment_expr
	.addrsig_sym ensure_assignable
	.addrsig_sym vec_push
	.addrsig_sym ast_init
	.addrsig_sym KIND_ARRAY
	.addrsig_sym KIND_STRUCT
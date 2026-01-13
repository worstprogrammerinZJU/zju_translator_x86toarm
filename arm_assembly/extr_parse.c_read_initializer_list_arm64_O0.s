	.text
	.p2align	2                               // -- Begin function read_initializer_list
	.type	read_initializer_list,@function
read_initializer_list:                  // @read_initializer_list
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	w3, [sp, #24]
	bl	get
	str	x0, [sp, #16]
	ldur	x0, [x29, #-16]
	bl	is_string
	cbz	x0, .LBB0_7
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TSTRING
	ldr	x9, [x9, :lo12:TSTRING]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x8, [sp, #16]
	ldr	w2, [x8, #8]
	ldur	w3, [x29, #-20]
	bl	assign_string
	b	.LBB0_13
.LBB0_3:
	ldr	x0, [sp, #16]
	mov	w1, #123
	bl	is_keyword
	cbz	x0, .LBB0_6
	b	.LBB0_4
.LBB0_4:
	bl	peek
	ldr	x8, [x0]
	adrp	x9, TSTRING
	ldr	x9, [x9, :lo12:TSTRING]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	bl	get
	str	x0, [sp, #16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x8, [sp, #16]
	ldr	w2, [x8, #8]
	ldur	w3, [x29, #-20]
	bl	assign_string
	mov	w0, #125
	bl	expect
	b	.LBB0_13
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	ldr	x0, [sp, #16]
	bl	unget_token
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, KIND_ARRAY
	ldr	x9, [x9, :lo12:KIND_ARRAY]
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	w2, [x29, #-20]
	ldr	w3, [sp, #24]
	bl	read_array_initializer
	b	.LBB0_13
.LBB0_9:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, KIND_STRUCT
	ldr	x9, [x9, :lo12:KIND_STRUCT]
	subs	x8, x8, x9
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	w2, [x29, #-20]
	ldr	w3, [sp, #24]
	bl	read_struct_initializer
	b	.LBB0_12
.LBB0_11:
	ldur	x0, [x29, #-16]
	mov	w1, #1
	bl	make_array_type
	str	x0, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	ldur	w2, [x29, #-20]
	ldr	w3, [sp, #24]
	bl	read_array_initializer
	b	.LBB0_12
.LBB0_12:
	b	.LBB0_13
.LBB0_13:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_initializer_list, .Lfunc_end0-read_initializer_list
                                        // -- End function
	.type	TSTRING,@object                 // @TSTRING
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.xword	0                               // 0x0
	.size	TSTRING, 8
	.type	KIND_ARRAY,@object              // @KIND_ARRAY
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
	.addrsig_sym read_initializer_list
	.addrsig_sym get
	.addrsig_sym is_string
	.addrsig_sym assign_string
	.addrsig_sym is_keyword
	.addrsig_sym peek
	.addrsig_sym expect
	.addrsig_sym unget_token
	.addrsig_sym read_array_initializer
	.addrsig_sym read_struct_initializer
	.addrsig_sym make_array_type
	.addrsig_sym TSTRING
	.addrsig_sym KIND_ARRAY
	.addrsig_sym KIND_STRUCT
	.text
	.p2align	2                               // -- Begin function read_declarator_array
	.type	read_declarator_array,@function
read_declarator_array:                  // @read_declarator_array
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	mov	w0, #93
	bl	next_token
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #-1
	stur	w8, [x29, #-12]
	b	.LBB0_3
.LBB0_2:
	bl	read_intexpr
	stur	w0, [x29, #-12]
	mov	w0, #93
	bl	expect
	b	.LBB0_3
.LBB0_3:
	bl	peek
	str	x0, [sp, #8]
	ldur	x0, [x29, #-8]
	mov	x1, xzr
	bl	read_declarator_tail
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, KIND_FUNC
	ldr	x9, [x9, :lo12:KIND_FUNC]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp]
	ldur	w1, [x29, #-12]
	bl	make_array_type
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_declarator_array, .Lfunc_end0-read_declarator_array
                                        // -- End function
	.type	KIND_FUNC,@object               // @KIND_FUNC
	.bss
	.globl	KIND_FUNC
	.p2align	3
KIND_FUNC:
	.xword	0                               // 0x0
	.size	KIND_FUNC, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"array of functions"
	.size	.L.str, 19
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_declarator_array
	.addrsig_sym next_token
	.addrsig_sym read_intexpr
	.addrsig_sym expect
	.addrsig_sym peek
	.addrsig_sym read_declarator_tail
	.addrsig_sym errort
	.addrsig_sym make_array_type
	.addrsig_sym KIND_FUNC
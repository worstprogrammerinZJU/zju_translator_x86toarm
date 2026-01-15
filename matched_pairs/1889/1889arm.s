	.text
	.p2align	2                               // -- Begin function read_func_param
	.type	read_func_param,@function
read_func_param:                        // @read_func_param
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	wzr, [x29, #-24]
	adrp	x8, type_int
	ldr	x8, [x8, :lo12:type_int]
	stur	x8, [x29, #-32]
	bl	peek
	bl	is_type
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	sub	x0, x29, #24
	bl	read_decl_spec
	stur	x0, [x29, #-32]
	b	.LBB0_5
.LBB0_2:
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	bl	peek
	str	w0, [sp, #36]                   // 4-byte Folded Spill
	bl	peek
	bl	tok2s
	mov	w2, w0
	ldr	w0, [sp, #36]                   // 4-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x8, DECL_PARAM_TYPEONLY
	ldr	w8, [x8, :lo12:DECL_PARAM_TYPEONLY]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_7:
	adrp	x8, DECL_PARAM
	ldr	w8, [x8, :lo12:DECL_PARAM]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_8:
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldr	w3, [sp, #12]                   // 4-byte Folded Reload
	mov	x2, xzr
	bl	read_declarator
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	ldr	x8, [x8]
	adrp	x9, KIND_ARRAY
	ldr	x9, [x9, :lo12:KIND_ARRAY]
	subs	x8, x8, x9
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x8, [sp, #40]
	ldr	x0, [x8, #8]
	bl	make_ptr_type
	stur	x0, [x29, #-8]
	b	.LBB0_13
.LBB0_10:
	ldr	x8, [sp, #40]
	ldr	x8, [x8]
	adrp	x9, KIND_FUNC
	ldr	x9, [x9, :lo12:KIND_FUNC]
	subs	x8, x8, x9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	x0, [sp, #40]
	bl	make_ptr_type
	stur	x0, [x29, #-8]
	b	.LBB0_13
.LBB0_12:
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-8]
	b	.LBB0_13
.LBB0_13:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	read_func_param, .Lfunc_end0-read_func_param
                                        // -- End function
	.type	type_int,@object                // @type_int
	.bss
	.globl	type_int
	.p2align	3
type_int:
	.xword	0
	.size	type_int, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"type expected, but got %s"
	.size	.L.str, 26
	.type	DECL_PARAM_TYPEONLY,@object     // @DECL_PARAM_TYPEONLY
	.bss
	.globl	DECL_PARAM_TYPEONLY
	.p2align	2
DECL_PARAM_TYPEONLY:
	.word	0                               // 0x0
	.size	DECL_PARAM_TYPEONLY, 4
	.type	DECL_PARAM,@object              // @DECL_PARAM
	.globl	DECL_PARAM
	.p2align	2
DECL_PARAM:
	.word	0                               // 0x0
	.size	DECL_PARAM, 4
	.type	KIND_ARRAY,@object              // @KIND_ARRAY
	.globl	KIND_ARRAY
	.p2align	3
KIND_ARRAY:
	.xword	0                               // 0x0
	.size	KIND_ARRAY, 8
	.type	KIND_FUNC,@object               // @KIND_FUNC
	.globl	KIND_FUNC
	.p2align	3
KIND_FUNC:
	.xword	0                               // 0x0
	.size	KIND_FUNC, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_func_param
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_decl_spec
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym read_declarator
	.addrsig_sym make_ptr_type
	.addrsig_sym type_int
	.addrsig_sym DECL_PARAM_TYPEONLY
	.addrsig_sym DECL_PARAM
	.addrsig_sym KIND_ARRAY
	.addrsig_sym KIND_FUNC
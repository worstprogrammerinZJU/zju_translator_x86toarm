	.text
	.p2align	2                               // -- Begin function read_declarator_func
	.type	read_declarator_func,@function
read_declarator_func:                   // @read_declarator_func
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_FUNC
	ldr	x9, [x9, :lo12:KIND_FUNC]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_ARRAY
	ldr	x9, [x9, :lo12:KIND_ARRAY]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	error
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	bl	read_func_param_list
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_declarator_func, .Lfunc_end0-read_declarator_func
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
	.asciz	"function returning a function"
	.size	.L.str, 30
	.type	KIND_ARRAY,@object              // @KIND_ARRAY
	.bss
	.globl	KIND_ARRAY
	.p2align	3
KIND_ARRAY:
	.xword	0                               // 0x0
	.size	KIND_ARRAY, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"function returning an array"
	.size	.L.str.1, 28
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_declarator_func
	.addrsig_sym error
	.addrsig_sym read_func_param_list
	.addrsig_sym KIND_FUNC
	.addrsig_sym KIND_ARRAY
	.text
	.p2align	2                               // -- Begin function read_var_or_func
	.type	read_var_or_func,@function
read_var_or_func:                       // @read_var_or_func
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	bl	env
	ldur	x1, [x29, #-16]
	bl	map_get
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	bl	peek
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	mov	w1, #40
	bl	is_keyword
	cbnz	w0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_3
.LBB0_3:
	adrp	x8, type_int
	ldr	w8, [x8, :lo12:type_int]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	bl	make_vector
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	mov	w2, #1
	mov	w3, wzr
	bl	make_func_type
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	warnt
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-16]
	bl	ast_funcdesg
	stur	x0, [x29, #-8]
	b	.LBB0_7
.LBB0_4:
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	ldr	x8, [x8]
	adrp	x9, KIND_FUNC
	ldr	x9, [x9, :lo12:KIND_FUNC]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #24]
	ldr	x0, [x8]
	ldur	x1, [x29, #-16]
	bl	ast_funcdesg
	stur	x0, [x29, #-8]
	b	.LBB0_7
.LBB0_6:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_var_or_func, .Lfunc_end0-read_var_or_func
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"undefined variable: %s"
	.size	.L.str, 23
	.type	type_int,@object                // @type_int
	.bss
	.globl	type_int
	.p2align	2
type_int:
	.word	0                               // 0x0
	.size	type_int, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"assume returning int: %s()"
	.size	.L.str.1, 27
	.type	KIND_FUNC,@object               // @KIND_FUNC
	.bss
	.globl	KIND_FUNC
	.p2align	3
KIND_FUNC:
	.xword	0                               // 0x0
	.size	KIND_FUNC, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_var_or_func
	.addrsig_sym map_get
	.addrsig_sym env
	.addrsig_sym peek
	.addrsig_sym is_keyword
	.addrsig_sym errort
	.addrsig_sym make_func_type
	.addrsig_sym make_vector
	.addrsig_sym warnt
	.addrsig_sym ast_funcdesg
	.addrsig_sym type_int
	.addrsig_sym KIND_FUNC
	.text
	.p2align	2                               // -- Begin function emit_builtin_reg_class
	.type	emit_builtin_reg_class,@function
emit_builtin_reg_class:                 // @emit_builtin_reg_class
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	mov	w1, wzr
	bl	vec_get
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	adrp	x9, KIND_PTR
	ldr	x9, [x9, :lo12:KIND_PTR]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_STRUCT
	ldr	x9, [x9, :lo12:KIND_STRUCT]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_6
.LBB0_2:
	ldr	x0, [sp, #8]
	bl	is_flotype
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_5
.LBB0_4:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	emit_builtin_reg_class, .Lfunc_end0-emit_builtin_reg_class
                                        // -- End function
	.type	KIND_PTR,@object                // @KIND_PTR
	.bss
	.globl	KIND_PTR
	.p2align	3
KIND_PTR:
	.xword	0                               // 0x0
	.size	KIND_PTR, 8
	.type	KIND_STRUCT,@object             // @KIND_STRUCT
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.xword	0                               // 0x0
	.size	KIND_STRUCT, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mov $2, #eax"
	.size	.L.str, 13
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"mov $1, #eax"
	.size	.L.str.1, 13
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"mov $0, #eax"
	.size	.L.str.2, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_builtin_reg_class
	.addrsig_sym vec_get
	.addrsig_sym assert
	.addrsig_sym emit
	.addrsig_sym is_flotype
	.addrsig_sym KIND_PTR
	.addrsig_sym KIND_STRUCT
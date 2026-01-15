	.text
	.p2align	2                               // -- Begin function read_struct_field
	.type	read_struct_field,@function
read_struct_field:                      // @read_struct_field
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	adrp	x9, KIND_STRUCT
	ldr	x9, [x9, :lo12:KIND_STRUCT]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	bl	node2s
	mov	w1, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_2
.LBB0_2:
	bl	get
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	tok2s
	mov	w1, w0
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	error
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w0, [x8, #8]
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #8]
	bl	dict_get
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #16]
	bl	tok2s
	mov	w1, w0
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	error
	b	.LBB0_6
.LBB0_6:
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	w2, [x8, #8]
	bl	ast_struct_ref
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_struct_field, .Lfunc_end0-read_struct_field
                                        // -- End function
	.type	KIND_STRUCT,@object             // @KIND_STRUCT
	.bss
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.xword	0                               // 0x0
	.size	KIND_STRUCT, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"struct expected, but got %s"
	.size	.L.str, 28
	.type	TIDENT,@object                  // @TIDENT
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"field name expected, but got %s"
	.size	.L.str.1, 32
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"struct has no such field: %s"
	.size	.L.str.2, 29
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_struct_field
	.addrsig_sym error
	.addrsig_sym node2s
	.addrsig_sym get
	.addrsig_sym tok2s
	.addrsig_sym dict_get
	.addrsig_sym ast_struct_ref
	.addrsig_sym KIND_STRUCT
	.addrsig_sym TIDENT
	.text
	.globl	parse_init                      // -- Begin function parse_init
	.p2align	2
	.type	parse_init,@function
parse_init:                             // @parse_init
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	adrp	x8, type_void
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:type_void]
	bl	make_ptr_type
	bl	make_vector1
	stur	x0, [x29, #-8]
	bl	make_vector
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	stur	x0, [x29, #-16]
	ldur	x9, [x29, #-16]
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:type_void]
	bl	make_ptr_type
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	vec_push
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	str	x9, [sp, #16]                   // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:type_void]
	bl	make_ptr_type
	mov	w1, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	vec_push
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:type_void]
	bl	make_ptr_type
	mov	w1, w0
	ldur	x2, [x29, #-8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	define_builtin
	adrp	x8, type_int
	ldr	w1, [x8, :lo12:type_int]
	ldur	x2, [x29, #-8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	define_builtin
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w1, [x8, :lo12:type_void]
	ldur	x2, [x29, #-16]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	define_builtin
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w1, [x8, :lo12:type_void]
	ldur	x2, [x29, #-8]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	define_builtin
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	parse_init, .Lfunc_end0-parse_init
                                        // -- End function
	.type	type_void,@object               // @type_void
	.bss
	.globl	type_void
	.p2align	2
type_void:
	.word	0                               // 0x0
	.size	type_void, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"__builtin_return_address"
	.size	.L.str, 25
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"__builtin_reg_class"
	.size	.L.str.1, 20
	.type	type_int,@object                // @type_int
	.bss
	.globl	type_int
	.p2align	2
type_int:
	.word	0                               // 0x0
	.size	type_int, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"__builtin_va_arg"
	.size	.L.str.2, 17
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"__builtin_va_start"
	.size	.L.str.3, 19
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_vector1
	.addrsig_sym make_ptr_type
	.addrsig_sym make_vector
	.addrsig_sym vec_push
	.addrsig_sym define_builtin
	.addrsig_sym type_void
	.addrsig_sym type_int
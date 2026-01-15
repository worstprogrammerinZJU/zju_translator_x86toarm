	.text
	.p2align	2                               // -- Begin function read_decl_spec_opt
	.type	read_decl_spec_opt,@function
read_decl_spec_opt:                     // @read_decl_spec_opt
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	bl	peek
	bl	is_type
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp]
	bl	read_decl_spec
	str	x0, [sp, #8]
	b	.LBB0_3
.LBB0_2:
	bl	peek
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	warnt
	adrp	x8, type_int
	ldr	x8, [x8, :lo12:type_int]
	str	x8, [sp, #8]
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_decl_spec_opt, .Lfunc_end0-read_decl_spec_opt
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"type specifier missing, assuming int"
	.size	.L.str, 37
	.type	type_int,@object                // @type_int
	.bss
	.globl	type_int
	.p2align	3
type_int:
	.xword	0
	.size	type_int, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_decl_spec_opt
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_decl_spec
	.addrsig_sym warnt
	.addrsig_sym type_int
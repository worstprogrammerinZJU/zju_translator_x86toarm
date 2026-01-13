	.text
	.globl	add_include_path                // -- Begin function add_include_path
	.p2align	2
	.type	add_include_path,@function
add_include_path:                       // @add_include_path
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	adrp	x8, std_include_path
	ldr	w0, [x8, :lo12:std_include_path]
	ldr	x1, [sp, #8]
	bl	vec_push
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	add_include_path, .Lfunc_end0-add_include_path
                                        // -- End function
	.type	std_include_path,@object        // @std_include_path
	.bss
	.globl	std_include_path
	.p2align	2
std_include_path:
	.word	0                               // 0x0
	.size	std_include_path, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_push
	.addrsig_sym std_include_path
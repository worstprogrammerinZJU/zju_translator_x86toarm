	.text
	.globl	cpp_init                        // -- Begin function cpp_init
	.p2align	2
	.type	cpp_init,@function
cpp_init:                               // @cpp_init
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, LC_ALL
	ldr	w0, [x8, :lo12:LC_ALL]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	setlocale
	bl	init_keywords
	bl	init_now
	bl	init_predefined_macros
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	cpp_init, .Lfunc_end0-cpp_init
                                        // -- End function
	.type	LC_ALL,@object                  // @LC_ALL
	.bss
	.globl	LC_ALL
	.p2align	2
LC_ALL:
	.word	0                               // 0x0
	.size	LC_ALL, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"C"
	.size	.L.str, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym setlocale
	.addrsig_sym init_keywords
	.addrsig_sym init_now
	.addrsig_sym init_predefined_macros
	.addrsig_sym LC_ALL
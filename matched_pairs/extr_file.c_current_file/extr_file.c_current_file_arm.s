	.text
	.globl	current_file                    // -- Begin function current_file
	.p2align	2
	.type	current_file,@function
current_file:                           // @current_file
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, files
	ldr	w0, [x8, :lo12:files]
	bl	vec_tail
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	current_file, .Lfunc_end0-current_file
                                        // -- End function
	.type	files,@object                   // @files
	.bss
	.globl	files
	.p2align	2
files:
	.word	0                               // 0x0
	.size	files, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_tail
	.addrsig_sym files
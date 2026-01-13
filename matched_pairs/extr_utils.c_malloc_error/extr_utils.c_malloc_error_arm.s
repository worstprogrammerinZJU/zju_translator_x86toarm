	.text
	.globl	malloc_error                    // -- Begin function malloc_error
	.p2align	2
	.type	malloc_error,@function
malloc_error:                           // @malloc_error
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	mov	w0, #-1
	bl	exit
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	malloc_error, .Lfunc_end0-malloc_error
                                        // -- End function
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Malloc error\n"
	.size	.L.str, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym exit
	.addrsig_sym stderr
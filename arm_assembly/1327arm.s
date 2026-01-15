	.text
	.p2align	2                               // -- Begin function memory_exhausted
	.type	memory_exhausted,@function
memory_exhausted:                       // @memory_exhausted
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	bl	abort
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	memory_exhausted, .Lfunc_end0-memory_exhausted
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
	.asciz	"jq: error: cannot allocate memory\n"
	.size	.L.str, 35
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memory_exhausted
	.addrsig_sym fprintf
	.addrsig_sym abort
	.addrsig_sym stderr
	.text
	.globl	print                           // -- Begin function print
	.p2align	2
	.type	print,@function
print:                                  // @print
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x1, [sp, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	adrp	x8, stdout
	ldr	w0, [x8, :lo12:stdout]
	bl	fflush
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	print, .Lfunc_end0-print
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Testing %s ... "
	.size	.L.str, 16
	.type	stdout,@object                  // @stdout
	.bss
	.globl	stdout
	.p2align	2
stdout:
	.word	0                               // 0x0
	.size	stdout, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym fflush
	.addrsig_sym stdout
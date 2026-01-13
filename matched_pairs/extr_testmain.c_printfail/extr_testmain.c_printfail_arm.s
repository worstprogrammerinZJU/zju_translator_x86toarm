	.text
	.globl	printfail                       // -- Begin function printfail
	.p2align	2
	.type	printfail,@function
printfail:                              // @printfail
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, stdout
	ldr	w0, [x8, :lo12:stdout]
	bl	fileno
	bl	isatty
	adrp	x9, .L.str.1
	add	x9, x9, :lo12:.L.str.1
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	subs	x10, x0, #0
	csel	x0, x8, x9, ne
	bl	printf
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	printfail, .Lfunc_end0-printfail
                                        // -- End function
	.type	stdout,@object                  // @stdout
	.bss
	.globl	stdout
	.p2align	2
stdout:
	.word	0                               // 0x0
	.size	stdout, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\033[1;31mFailed\033[0m\n"
	.size	.L.str, 19
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Failed\n"
	.size	.L.str.1, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym isatty
	.addrsig_sym fileno
	.addrsig_sym stdout
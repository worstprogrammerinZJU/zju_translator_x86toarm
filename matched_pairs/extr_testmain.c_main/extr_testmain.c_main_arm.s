	.text
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, wzr
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	bl	testmain
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
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
	.asciz	"\033[32mOK\033[0m\n"
	.size	.L.str, 13
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"OK\n"
	.size	.L.str.1, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym testmain
	.addrsig_sym printf
	.addrsig_sym isatty
	.addrsig_sym fileno
	.addrsig_sym stdout
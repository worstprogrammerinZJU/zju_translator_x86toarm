	.text
	.p2align	2                               // -- Begin function die
	.type	die,@function
die:                                    // @die
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, stderr
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:stderr]
	adrp	x8, progname
	ldr	x2, [x8, :lo12:progname]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	fprintf
	mov	w0, #2
	bl	exit
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	die, .Lfunc_end0-die
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
	.asciz	"Use %s --help for help with command-line options,\n"
	.size	.L.str, 51
	.type	progname,@object                // @progname
	.bss
	.globl	progname
	.p2align	3
progname:
	.xword	0
	.size	progname, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"or see the jq manpage, or online docs  at https://stedolan.github.io/jq\n"
	.size	.L.str.1, 73
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym die
	.addrsig_sym fprintf
	.addrsig_sym exit
	.addrsig_sym stderr
	.addrsig_sym progname
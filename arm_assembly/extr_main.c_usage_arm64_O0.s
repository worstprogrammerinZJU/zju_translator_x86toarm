	.text
	.p2align	2                               // -- Begin function usage
	.type	usage,@function
usage:                                  // @usage
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, stderr
	ldr	w8, [x8, :lo12:stderr]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	adrp	x8, stdout
	ldr	w8, [x8, :lo12:stdout]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldur	w0, [x29, #-4]
	bl	exit
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	usage, .Lfunc_end0-usage
                                        // -- End function
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	stdout,@object                  // @stdout
	.globl	stdout
	.p2align	2
stdout:
	.word	0                               // 0x0
	.size	stdout, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: 8cc [ -E ][ -a ] [ -h ] <file>\n\n\n  -I<path>          add to include path\n  -E                print preprocessed source code\n  -D name           Predefine name as a macro\n  -D name=def\n  -S                Stop before assembly (default)\n  -c                Do not run linker (default)\n  -U name           Undefine name\n  -fdump-ast        print AST\n  -fdump-stack      Print stacktrace\n  -fno-dump-source  Do not emit source code as assembly comment\n  -o filename       Output to the specified file\n  -g                Do nothing at this moment\n  -Wall             Enable all warnings\n  -Werror           Make all warnings into errors\n  -O<number>        Does nothing at this moment\n  -m64              Output 64-bit code (default)\n  -w                Disable all warnings\n  -h                print this help\n\nOne of -a, -c, -E or -S must be specified.\n\n"
	.size	.L.str, 860
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym usage
	.addrsig_sym fprintf
	.addrsig_sym exit
	.addrsig_sym stderr
	.addrsig_sym stdout
	.text
	.p2align	4, 0x90                         # -- Begin function usage
usage:                                  # @usage
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_2
# %bb.1:
	movl	stderr(%rip), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	stdout(%rip), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
.LBB0_3:
	movl	-8(%rbp), %edi                  # 4-byte Reload
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movl	-4(%rbp), %edi
	callq	exit@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.globl	stdout
	.p2align	2
stdout:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: 8cc [ -E ][ -a ] [ -h ] <file>\n\n\n  -I<path>          add to include path\n  -E                print preprocessed source code\n  -D name           Predefine name as a macro\n  -D name=def\n  -S                Stop before assembly (default)\n  -c                Do not run linker (default)\n  -U name           Undefine name\n  -fdump-ast        print AST\n  -fdump-stack      Print stacktrace\n  -fno-dump-source  Do not emit source code as assembly comment\n  -o filename       Output to the specified file\n  -g                Do nothing at this moment\n  -Wall             Enable all warnings\n  -Werror           Make all warnings into errors\n  -O<number>        Does nothing at this moment\n  -m64              Output 64-bit code (default)\n  -w                Disable all warnings\n  -h                print this help\n\nOne of -a, -c, -E or -S must be specified.\n\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym usage
	.addrsig_sym fprintf
	.addrsig_sym exit
	.addrsig_sym stderr
	.addrsig_sym stdout
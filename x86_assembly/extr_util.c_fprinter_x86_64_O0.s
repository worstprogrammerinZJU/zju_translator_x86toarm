	.text
	.p2align	4, 0x90                         # -- Begin function fprinter
fprinter:                               # @fprinter
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	errno(%rip), %edi
	callq	strerror@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-24(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jq: error: Could not open file %s: %s\n"
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprinter
	.addrsig_sym fprintf
	.addrsig_sym strerror
	.addrsig_sym errno
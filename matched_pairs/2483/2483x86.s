	.text
	.p2align	4, 0x90                         # -- Begin function mustsend
mustsend:                               # @mustsend
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
	movl	-28(%rbp), %edi                 # 4-byte Reload
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edx
	callq	writefull@PLT
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
	movl	stdout(%rip), %edi
	callq	fflush@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	">%d %s"
	.bss
	.globl	stdout
	.p2align	2
stdout:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mustsend
	.addrsig_sym writefull
	.addrsig_sym strlen
	.addrsig_sym printf
	.addrsig_sym fflush
	.addrsig_sym stdout
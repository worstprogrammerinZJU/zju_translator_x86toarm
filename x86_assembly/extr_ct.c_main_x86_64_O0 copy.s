	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, %al
	callq	readtokens@PLT
	movl	%eax, -20(%rbp)
	movl	ctmaintest(%rip), %edi
	movl	-20(%rbp), %esi
	callq	runalltest@PLT
	movl	-20(%rbp), %edi
	callq	writetokens@PLT
	movl	ctmaintest(%rip), %edi
	callq	report@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB0_2
# %bb.1:
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	cmpl	$2, -8(%rbp)
	jne	.LBB0_5
# %bb.3:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_5
# %bb.4:
	movl	ctmainbench(%rip), %edi
	callq	runallbench@PLT
.LBB0_5:
	movl	$0, -4(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ctmaintest
	.p2align	2
ctmaintest:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-b"
	.bss
	.globl	ctmainbench
	.p2align	2
ctmainbench:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym readtokens
	.addrsig_sym runalltest
	.addrsig_sym writetokens
	.addrsig_sym report
	.addrsig_sym strcmp
	.addrsig_sym runallbench
	.addrsig_sym ctmaintest
	.addrsig_sym ctmainbench
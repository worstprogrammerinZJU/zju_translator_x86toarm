	.text
	.p2align	4, 0x90                         # -- Begin function calculateApb
calculateApb:                           # @calculateApb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$80, (%rax)
	jl	.LBB0_2
# %bb.1:
	imull	$80, MHZ(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	imull	MHZ(%rip), %eax
	movq	-16(%rbp), %rcx
	cltd
	idivl	8(%rcx)
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	MHZ
	.p2align	2
MHZ:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calculateApb
	.addrsig_sym MHZ
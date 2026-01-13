	.text
	.globl	forward_logistic_layer          # -- Begin function forward_logistic_layer
	.p2align	4, 0x90
forward_logistic_layer:                 # @forward_logistic_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, -16(%rbp)
	movl	%esi, -8(%rbp)
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-8(%rbp), %esi
	movl	28(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	28(%rax), %edi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	LOGISTIC(%rip), %edx
	callq	activate_array@PLT
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	4(%rax), %edi
	imull	8(%rax), %edi
	movl	28(%rax), %esi
	movq	-16(%rbp), %rdx
	movl	24(%rax), %ecx
	movl	12(%rax), %r8d
	callq	logistic_x_ent_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	12(%rax), %edi
	movl	4(%rax), %esi
	imull	8(%rax), %esi
	callq	sum_array@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movl	%ecx, (%rax)
.LBB0_2:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LOGISTIC
	.p2align	2
LOGISTIC:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_cpu
	.addrsig_sym activate_array
	.addrsig_sym logistic_x_ent_cpu
	.addrsig_sym sum_array
	.addrsig_sym LOGISTIC
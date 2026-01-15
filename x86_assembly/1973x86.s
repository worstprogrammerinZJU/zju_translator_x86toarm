	.text
	.globl	load_convolutional_weights      # -- Begin function load_convolutional_weights
	.p2align	4, 0x90
load_convolutional_weights:             # @load_convolutional_weights
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	cmpq	$0, 88(%rax)
	je	.LBB0_2
# %bb.1:
	jmp	.LBB0_2
.LBB0_2:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, 4(%rax)
.LBB0_4:
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	8(%rcx), %eax
	cltd
	idivl	12(%rcx)
	movl	%eax, %ecx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	imull	4(%rax), %ecx
	imull	16(%rax), %ecx
	imull	16(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movq	24(%rax), %rdi
	movl	4(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fread@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, 80(%rax)
	je	.LBB0_7
# %bb.5:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpl	$0, 72(%rax)
	jne	.LBB0_7
# %bb.6:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	32(%rax), %rdi
	movl	4(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fread@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	40(%rax), %rdi
	movl	4(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fread@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	48(%rax), %rdi
	movl	4(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fread@PLT
.LBB0_7:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	56(%rax), %rdi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fread@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, 64(%rax)
	je	.LBB0_9
# %bb.8:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	56(%rax), %rdi
	movl	8(%rax), %esi
	imull	16(%rax), %esi
	imull	16(%rax), %esi
	movl	4(%rax), %edx
	callq	transpose_matrix@PLT
.LBB0_9:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	gpu_index
	.p2align	3
gpu_index:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fread
	.addrsig_sym transpose_matrix
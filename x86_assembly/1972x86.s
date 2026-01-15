	.text
	.globl	load_connected_weights          # -- Begin function load_connected_weights
	.p2align	4, 0x90
load_connected_weights:                 # @load_connected_weights
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	36(%rax), %edi
	movl	(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fread@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	32(%rax), %edi
	movl	(%rax), %edx
	imull	4(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fread@PLT
	cmpl	$0, -12(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	32(%rax), %edi
	movl	4(%rax), %esi
	movl	(%rax), %edx
	callq	transpose_matrix@PLT
.LBB0_2:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, 24(%rax)
	je	.LBB0_5
# %bb.3:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpl	$0, 20(%rax)
	jne	.LBB0_5
# %bb.4:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	16(%rax), %edi
	movl	(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fread@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	12(%rax), %edi
	movl	(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fread@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %edi
	movl	(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fread@PLT
.LBB0_5:
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
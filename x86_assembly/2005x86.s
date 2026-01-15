	.text
	.globl	save_connected_weights          # -- Begin function save_connected_weights
	.p2align	4, 0x90
save_connected_weights:                 # @save_connected_weights
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	movl	36(%rax), %edi
	movl	(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	32(%rax), %edi
	movl	(%rax), %edx
	imull	4(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, 24(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	16(%rax), %edi
	movl	(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	12(%rax), %edi
	movl	(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %edi
	movl	(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite@PLT
.LBB0_2:
	addq	$16, %rsp
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
	.addrsig_sym fwrite
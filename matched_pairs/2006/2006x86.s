	.text
	.globl	save_convolutional_weights      # -- Begin function save_convolutional_weights
	.p2align	4, 0x90
save_convolutional_weights:             # @save_convolutional_weights
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	cmpq	$0, 40(%rax)
	je	.LBB0_2
# %bb.1:
	jmp	.LBB0_2
.LBB0_2:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	32(%rax), %edi
	movl	4(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, 24(%rax)
	je	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	20(%rax), %edi
	movl	4(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	16(%rax), %edi
	movl	4(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	12(%rax), %edi
	movl	4(%rax), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite@PLT
.LBB0_4:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %edi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite@PLT
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
	.addrsig_sym fwrite
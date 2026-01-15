	.text
	.globl	forward_upsample_layer          # -- Begin function forward_upsample_layer
	.p2align	4, 0x90
forward_upsample_layer:                 # @forward_upsample_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movl	%edi, -8(%rbp)
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	8(%rax), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, 40(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %edi
	movl	36(%rax), %esi
	movl	32(%rax), %edx
	movl	20(%rax), %ecx
	movl	4(%rax), %r8d
	movl	16(%rax), %r9d
	movl	12(%rax), %r10d
	movl	-8(%rbp), %eax
	xorl	%r11d, %r11d
	movl	$0, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	upsample_cpu@PLT
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	-8(%rbp), %edi
	movl	28(%rax), %esi
	movl	24(%rax), %edx
	movl	20(%rax), %ecx
	movl	4(%rax), %r8d
	movl	16(%rax), %r9d
	movl	12(%rax), %r10d
	movl	8(%rax), %eax
	movl	$1, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	upsample_cpu@PLT
.LBB0_3:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fill_cpu
	.addrsig_sym upsample_cpu
	.text
	.globl	backward_upsample_layer         # -- Begin function backward_upsample_layer
	.p2align	4, 0x90
backward_upsample_layer:                # @backward_upsample_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movl	%edi, -8(%rbp)
	cmpq	$0, 40(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %edi
	movl	32(%rax), %esi
	movl	28(%rax), %edx
	movl	16(%rax), %ecx
	movl	12(%rax), %r8d
	movl	8(%rax), %r9d
	movl	4(%rax), %r10d
	movl	-8(%rbp), %eax
	movl	$1, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	upsample_cpu@PLT
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	-8(%rbp), %edi
	movl	24(%rax), %esi
	movl	20(%rax), %edx
	movl	16(%rax), %ecx
	movl	12(%rax), %r8d
	movl	8(%rax), %r9d
	movl	4(%rax), %r10d
	movl	(%rax), %eax
	xorl	%r11d, %r11d
	movl	$0, (%rsp)
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
	.addrsig_sym upsample_cpu
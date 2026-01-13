	.text
	.globl	entry_index                     # -- Begin function entry_index
	.p2align	4, 0x90
entry_index:                            # @entry_index
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edx, %eax
	leaq	16(%rbp), %rdx
	movq	%rdx, -32(%rbp)                 # 8-byte Spill
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	movl	(%rdx), %ecx
	imull	4(%rdx), %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rdx                 # 8-byte Reload
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	movl	(%rdx), %ecx
	imull	4(%rdx), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	movq	-32(%rbp), %rdx                 # 8-byte Reload
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %eax
	imull	8(%rdx), %eax
	movl	-16(%rbp), %ecx
	imull	(%rdx), %ecx
	imull	4(%rdx), %ecx
	movl	12(%rdx), %esi
	addl	16(%rdx), %esi
	addl	$1, %esi
	imull	%esi, %ecx
	addl	%ecx, %eax
	movl	-12(%rbp), %ecx
	imull	(%rdx), %ecx
	imull	4(%rdx), %ecx
	addl	%ecx, %eax
	addl	-20(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
	.p2align	4, 0x90                         # -- Begin function compute_padding
compute_padding:                        # @compute_padding
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	cmpl	$0, %edx
	jne	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	-16(%rbp), %eax                 # 4-byte Reload
	subl	%edx, %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
.LBB0_3:
	movl	-12(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym compute_padding
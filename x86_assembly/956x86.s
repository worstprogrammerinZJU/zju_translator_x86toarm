	.text
	.p2align	4, 0x90                         # -- Begin function align
align:                                  # @align
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%edx, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	-4(%rbp), %eax
	subl	-12(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
.LBB0_3:
	movl	-16(%rbp), %eax                 # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym align
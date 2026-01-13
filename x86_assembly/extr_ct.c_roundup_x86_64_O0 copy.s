	.text
	.p2align	4, 0x90                         # -- Begin function roundup
roundup:                                # @roundup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	rounddown10@PLT
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB0_2
# %bb.1:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	movl	-8(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB0_4
# %bb.3:
	movl	-12(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_4:
	movl	-8(%rbp), %eax
	imull	$3, -12(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB0_6
# %bb.5:
	imull	$3, -12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_6:
	movl	-8(%rbp), %eax
	imull	$5, -12(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB0_8
# %bb.7:
	imull	$5, -12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	imull	$10, -12(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym roundup
	.addrsig_sym rounddown10
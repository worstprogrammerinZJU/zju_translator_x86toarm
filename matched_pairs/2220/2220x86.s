	.text
	.p2align	4, 0x90                         # -- Begin function stbi__high_bit
stbi__high_bit:                         # @stbi__high_bit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_13
.LBB0_2:
	cmpl	$65536, -8(%rbp)                # imm = 0x10000
	jb	.LBB0_4
# %bb.3:
	movl	-12(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, -8(%rbp)
.LBB0_4:
	cmpl	$256, -8(%rbp)                  # imm = 0x100
	jb	.LBB0_6
# %bb.5:
	movl	-12(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -8(%rbp)
.LBB0_6:
	cmpl	$16, -8(%rbp)
	jb	.LBB0_8
# %bb.7:
	movl	-12(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, -8(%rbp)
.LBB0_8:
	cmpl	$4, -8(%rbp)
	jb	.LBB0_10
# %bb.9:
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	shrl	$2, %eax
	movl	%eax, -8(%rbp)
.LBB0_10:
	cmpl	$2, -8(%rbp)
	jb	.LBB0_12
# %bb.11:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	shrl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB0_12:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_13:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__high_bit
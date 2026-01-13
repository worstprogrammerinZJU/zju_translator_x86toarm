	.text
	.p2align	4, 0x90                         # -- Begin function hi0bits
hi0bits:                                # @hi0bits
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	-20(%rbp), %eax
	andl	$-65536, %eax                   # imm = 0xFFFF0000
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movl	$16, -24(%rbp)
	movl	-20(%rbp), %eax
	shll	$16, %eax
	movl	%eax, -20(%rbp)
.LBB0_2:
	movl	-20(%rbp), %eax
	andl	$-16777216, %eax                # imm = 0xFF000000
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movl	-24(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	shll	$8, %eax
	movl	%eax, -20(%rbp)
.LBB0_4:
	movl	-20(%rbp), %eax
	andl	$-268435456, %eax               # imm = 0xF0000000
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:
	movl	-24(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	shll	$4, %eax
	movl	%eax, -20(%rbp)
.LBB0_6:
	movl	-20(%rbp), %eax
	andl	$-1073741824, %eax              # imm = 0xC0000000
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:
	movl	-24(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -20(%rbp)
.LBB0_8:
	movl	-20(%rbp), %eax
	andl	$-2147483648, %eax              # imm = 0x80000000
	cmpl	$0, %eax
	jne	.LBB0_12
# %bb.9:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	andl	$1073741824, %eax               # imm = 0x40000000
	cmpl	$0, %eax
	jne	.LBB0_11
# %bb.10:
	movl	$32, -4(%rbp)
	jmp	.LBB0_13
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_13:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hi0bits
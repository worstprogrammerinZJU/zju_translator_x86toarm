	.text
	.globl	rawfalloc                       # -- Begin function rawfalloc
	.p2align	4, 0x90
rawfalloc:                              # @rawfalloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %edi
	leaq	rawfalloc.buf(%rip), %rsi
	movl	$4096, %edx                     # imm = 0x1000
	callq	write@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB0_4
# %bb.3:
	movl	errno(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movl	-8(%rbp), %edi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	lseek@PLT
	movl	$0, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.local	rawfalloc.buf
	.comm	rawfalloc.buf,4096,16
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym write
	.addrsig_sym lseek
	.addrsig_sym rawfalloc.buf
	.addrsig_sym errno
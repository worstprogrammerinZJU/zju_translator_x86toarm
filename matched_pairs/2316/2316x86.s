	.text
	.p2align	4, 0x90                         # -- Begin function stbiw__jpg_calcBits
stbiw__jpg_calcBits:                    # @stbiw__jpg_calcBits
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jge	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	subl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
.LBB0_3:
	movl	-24(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -20(%rbp)
	cmpl	$0, -4(%rbp)
	jge	.LBB0_5
# %bb.4:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	jmp	.LBB0_6
.LBB0_5:
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
.LBB0_6:
	movl	-28(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movw	$1, 2(%rax)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rax
	movw	2(%rax), %cx
	addw	$1, %cx
	movw	%cx, 2(%rax)
	jmp	.LBB0_7
.LBB0_9:
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	2(%rcx), %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	subl	$1, %ecx
	andl	%ecx, %eax
	movw	%ax, %cx
	movq	-16(%rbp), %rax
	movw	%cx, (%rax)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__jpg_calcBits
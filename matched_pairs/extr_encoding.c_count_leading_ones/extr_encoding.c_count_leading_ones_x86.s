	.text
	.p2align	4, 0x90                         # -- Begin function count_leading_ones
count_leading_ones:                     # @count_leading_ones
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movl	$7, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -12(%rbp)
	jl	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-5(%rbp), %eax
	movl	-12(%rbp), %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movl	$7, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movl	$8, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym count_leading_ones
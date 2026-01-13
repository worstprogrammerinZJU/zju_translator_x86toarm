	.text
	.p2align	4, 0x90                         # -- Begin function is_poweroftwo
is_poweroftwo:                          # @is_poweroftwo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	-4(%rbp), %eax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
.LBB0_3:
	movl	-8(%rbp), %eax                  # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_poweroftwo
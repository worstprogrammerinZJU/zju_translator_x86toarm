	.text
	.globl	alphanum_to_int                 # -- Begin function alphanum_to_int
	.p2align	4, 0x90
alphanum_to_int:                        # @alphanum_to_int
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movsbl	-1(%rbp), %eax
	cmpl	$58, %eax
	jge	.LBB0_2
# %bb.1:
	movsbl	-1(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movsbl	-1(%rbp), %eax
	subl	$87, %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
.LBB0_3:
	movl	-8(%rbp), %eax                  # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
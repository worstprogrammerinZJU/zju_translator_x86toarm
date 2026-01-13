	.text
	.p2align	4, 0x90                         # -- Begin function stbi__addsizes_valid
stbi__addsizes_valid:                   # @stbi__addsizes_valid
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-8(%rbp), %eax
	movl	INT_MAX(%rip), %ecx
	subl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	INT_MAX
	.p2align	2
INT_MAX:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__addsizes_valid
	.addrsig_sym INT_MAX
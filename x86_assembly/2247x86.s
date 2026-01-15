	.text
	.p2align	4, 0x90                         # -- Begin function stbi__mul2sizes_valid
stbi__mul2sizes_valid:                  # @stbi__mul2sizes_valid
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -8(%rbp)
	jl	.LBB0_2
# %bb.1:
	cmpl	$0, -12(%rbp)
	jge	.LBB0_3
.LBB0_2:
	movl	$0, -4(%rbp)
	jmp	.LBB0_6
.LBB0_3:
	cmpl	$0, -12(%rbp)
	jne	.LBB0_5
# %bb.4:
	movl	$1, -4(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movl	INT_MAX(%rip), %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, %ecx
	movl	-16(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB0_6:
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
	.addrsig_sym stbi__mul2sizes_valid
	.addrsig_sym INT_MAX
	.text
	.p2align	4, 0x90                         # -- Begin function stbi__jpeg_reset
stbi__jpeg_reset:                       # @stbi__jpeg_reset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	$0, (%rax)
	movl	STBI__MARKER_none(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	$2147483647, %eax               # imm = 0x7FFFFFFF
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_3:
	movl	-12(%rbp), %ecx                 # 4-byte Reload
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STBI__MARKER_none
	.p2align	2
STBI__MARKER_none:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_reset
	.addrsig_sym STBI__MARKER_none
	.text
	.p2align	4, 0x90                         # -- Begin function decGetDigits
decGetDigits:                           # @decGetDigits
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	imull	DECDPUN(%rip), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$1, -28(%rbp)
	jne	.LBB0_5
# %bb.4:
	jmp	.LBB0_8
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	DECDPUN(%rip), %ecx
	movl	-28(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movl	-28(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECDPUN
	.p2align	2
DECDPUN:
	.long	0                               # 0x0
	.globl	powers
	.p2align	3
powers:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decGetDigits
	.addrsig_sym DECDPUN
	.text
	.p2align	4, 0x90                         # -- Begin function decSetMaxValue
decSetMaxValue:                         # @decSetMaxValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	DECDPUN(%rip), %rax
	jbe	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	DECDPUNMAX(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_4
.LBB0_3:
	movq	powers(%rip), %rax
	movq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_6
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	DECDPUN(%rip), %rcx
	movq	-32(%rbp), %rax
	subq	%rcx, %rax
	movq	%rax, -32(%rbp)
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	subq	(%rax), %rcx
	addq	$1, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECDPUN
	.p2align	3
DECDPUN:
	.quad	0                               # 0x0
	.globl	DECDPUNMAX
	.p2align	3
DECDPUNMAX:
	.quad	0                               # 0x0
	.globl	powers
	.p2align	3
powers:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decSetMaxValue
	.addrsig_sym DECDPUN
	.addrsig_sym DECDPUNMAX
	.addrsig_sym powers
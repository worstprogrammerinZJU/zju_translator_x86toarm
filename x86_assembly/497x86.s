	.text
	.p2align	4, 0x90                         # -- Begin function waittest
waittest:                               # @waittest
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-24(%rbp), %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	wait3@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	errno(%rip), %esi
	movl	$3, %edi
	leaq	.L.str(%rip), %rdx
	callq	die@PLT
.LBB0_2:
	movl	-20(%rbp), %edi
	movl	SIGKILL(%rip), %esi
	callq	killpg@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_14
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB0_12
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$46, %edi
	callq	putchar@PLT
	jmp	.LBB0_11
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	callq	failed@PLT
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$70, %edi
	callq	putchar@PLT
	jmp	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$69, %edi
	callq	putchar@PLT
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	movl	stdout(%rip), %edi
	callq	fflush@PLT
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_3
.LBB0_14:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"wait"
	.bss
	.globl	SIGKILL
	.p2align	2
SIGKILL:
	.long	0                               # 0x0
	.globl	stdout
	.p2align	2
stdout:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym waittest
	.addrsig_sym wait3
	.addrsig_sym die
	.addrsig_sym killpg
	.addrsig_sym putchar
	.addrsig_sym failed
	.addrsig_sym fflush
	.addrsig_sym errno
	.addrsig_sym SIGKILL
	.addrsig_sym stdout
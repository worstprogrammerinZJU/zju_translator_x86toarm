	.text
	.p2align	4, 0x90                         # -- Begin function sizei
sizei:                                  # @sizei
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	hascharset@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	CHARSETINSTSIZE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	IFunc(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	$1, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CHARSETINSTSIZE
	.p2align	2
CHARSETINSTSIZE:
	.long	0                               # 0x0
	.globl	IFunc
	.p2align	3
IFunc:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sizei
	.addrsig_sym hascharset
	.addrsig_sym CHARSETINSTSIZE
	.addrsig_sym IFunc
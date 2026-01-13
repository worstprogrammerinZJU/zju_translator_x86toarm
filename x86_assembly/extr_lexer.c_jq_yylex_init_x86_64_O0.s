	.text
	.globl	yylex_init                      # -- Begin function yylex_init
	.p2align	4, 0x90
yylex_init:                             # @yylex_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	EINVAL(%rip), %eax
	movl	%eax, errno(%rip)
	movl	$1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	$4, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	yyalloc@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_4
# %bb.3:
	movl	ENOMEM(%rip), %eax
	movl	%eax, errno(%rip)
	movl	$1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	yy_init_globals@PLT
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EINVAL
	.p2align	2
EINVAL:
	.long	0                               # 0x0
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.globl	ENOMEM
	.p2align	2
ENOMEM:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyalloc
	.addrsig_sym memset
	.addrsig_sym yy_init_globals
	.addrsig_sym EINVAL
	.addrsig_sym errno
	.addrsig_sym ENOMEM
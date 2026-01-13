	.text
	.globl	yylex_init_extra                # -- Begin function yylex_init_extra
	.p2align	4, 0x90
yylex_init_extra:                       # @yylex_init_extra
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %edi
	leaq	-24(%rbp), %rsi
	callq	yyset_extra@PLT
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	EINVAL(%rip), %eax
	movl	%eax, errno(%rip)
	movl	$1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	$4, %edi
	leaq	-24(%rbp), %rsi
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
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	yyset_extra@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	yy_init_globals@PLT
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
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
	.addrsig_sym yyset_extra
	.addrsig_sym yyalloc
	.addrsig_sym memset
	.addrsig_sym yy_init_globals
	.addrsig_sym EINVAL
	.addrsig_sym errno
	.addrsig_sym ENOMEM
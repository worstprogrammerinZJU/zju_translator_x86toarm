	.text
	.p2align	4, 0x90                         # -- Begin function getstrcaps
getstrcaps:                             # @getstrcaps
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	MAXSTRCAPS(%rip), %eax
	jge	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	%edx, 4(%rax,%rcx,8)
.LBB0_2:
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, (%rcx)
	movl	%eax, %edi
	callq	isfullcap@PLT
	cmpl	$0, %eax
	jne	.LBB0_9
# %bb.3:
	jmp	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	isclosecap@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_8
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	captype@PLT
	cmpq	Csimple(%rip), %rax
	je	.LBB0_7
# %bb.6:
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	movl	-28(%rbp), %edx
	leaq	.L.str(%rip), %rsi
	callq	luaL_error@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_12
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	getstrcaps
	movl	%eax, -28(%rbp)
	jmp	.LBB0_4
.LBB0_8:
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	addq	$4, %rcx
	movq	%rcx, (%rax)
.LBB0_9:
	movl	-32(%rbp), %eax
	cmpl	MAXSTRCAPS(%rip), %eax
	jge	.LBB0_11
# %bb.10:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	addq	$-4, %rdi
	callq	closeaddr@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	%edx, (%rax,%rcx,8)
.LBB0_11:
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_12:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	MAXSTRCAPS
	.p2align	2
MAXSTRCAPS:
	.long	0                               # 0x0
	.globl	Csimple
	.p2align	3
Csimple:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid capture #%d in replacement pattern"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getstrcaps
	.addrsig_sym isfullcap
	.addrsig_sym isclosecap
	.addrsig_sym captype
	.addrsig_sym luaL_error
	.addrsig_sym closeaddr
	.addrsig_sym MAXSTRCAPS
	.addrsig_sym Csimple
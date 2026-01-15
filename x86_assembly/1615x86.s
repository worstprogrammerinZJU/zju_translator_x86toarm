	.text
	.p2align	4, 0x90                         # -- Begin function repeats
repeats:                                # @repeats
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	addl	$1, %esi
	imull	-20(%rbp), %esi
	addl	$2, %esi
	callq	newpatt@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	callq	verify@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	luaL_error@PLT
.LBB0_2:
	movl	$0, -28(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	addpatt@PLT
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movq	-48(%rbp), %rdi
	movq	%rdi, %rax
	addq	$4, %rax
	movq	%rax, -48(%rbp)
	movl	IChoice(%rip), %esi
	movl	-20(%rbp), %edx
	addl	$1, %edx
	addl	$1, %edx
	callq	setinst@PLT
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	addpatt@PLT
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	IPartialCommit(%rip), %esi
	xorl	%edx, %edx
	subl	-20(%rbp), %edx
	callq	setinst@PLT
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"loop body may accept empty string"
	.bss
	.globl	IChoice
	.p2align	2
IChoice:
	.long	0                               # 0x0
	.globl	IPartialCommit
	.p2align	2
IPartialCommit:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym repeats
	.addrsig_sym newpatt
	.addrsig_sym verify
	.addrsig_sym luaL_error
	.addrsig_sym addpatt
	.addrsig_sym setinst
	.addrsig_sym IChoice
	.addrsig_sym IPartialCommit
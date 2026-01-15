	.text
	.p2align	4, 0x90                         # -- Begin function diff_l
diff_l:                                 # @diff_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	leaq	-12(%rbp), %rdx
	callq	getpatt@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	$2, %esi
	leaq	-16(%rbp), %rdx
	callq	getpatt@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	tocharset@PLT
	cmpq	ISCHARSET(%rip), %rax
	jne	.LBB0_3
# %bb.1:
	movq	-32(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	tocharset@PLT
	cmpq	ISCHARSET(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rdi
	callq	newcharset@PLT
	movq	%rax, -56(%rbp)
	movq	i(%rip), %rdi
	movq	-40(%rbp), %rax
	movq	i(%rip), %rcx
	movl	(%rax,%rcx,4), %esi
	movq	-48(%rbp), %rax
	movq	i(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	xorl	$-1, %eax
	andl	%eax, %esi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	i(%rip), %rcx
	movl	%esi, (%rax,%rcx,4)
	callq	loopset@PLT
	movq	-56(%rbp), %rdi
	callq	correctset@PLT
	jmp	.LBB0_7
.LBB0_3:
	movq	-32(%rbp), %rdi
	callq	isheadfail@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	addl	$1, %esi
	addl	-12(%rbp), %esi
	callq	newpatt@PLT
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	$2, %edx
	callq	addpatt@PLT
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movslq	-16(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rcx, %rax
	shlq	$3, %rax
	addq	%rax, %rdi
	movl	-16(%rbp), %esi
	addl	$1, %esi
	callq	check2test@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -64(%rbp)
	movl	%eax, %edi
	movl	IFail(%rip), %esi
	xorl	%edx, %edx
	callq	setinst@PLT
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	$1, %edx
	callq	addpatt@PLT
	jmp	.LBB0_6
.LBB0_5:
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	addl	$1, %esi
	addl	$1, %esi
	addl	-12(%rbp), %esi
	callq	newpatt@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -72(%rbp)
	movl	%eax, %edi
	movl	IChoice(%rip), %esi
	movl	-16(%rbp), %edx
	addl	$1, %edx
	addl	$1, %edx
	callq	setinst@PLT
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	$2, %edx
	callq	addpatt@PLT
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -72(%rbp)
	movl	%eax, %edi
	movl	IFailTwice(%rip), %esi
	xorl	%edx, %edx
	callq	setinst@PLT
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	$1, %edx
	callq	addpatt@PLT
	movq	-80(%rbp), %rdi
	callq	optimizechoice@PLT
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ISCHARSET
	.p2align	3
ISCHARSET:
	.quad	0                               # 0x0
	.globl	i
	.p2align	3
i:
	.quad	0                               # 0x0
	.globl	IFail
	.p2align	2
IFail:
	.long	0                               # 0x0
	.globl	IChoice
	.p2align	2
IChoice:
	.long	0                               # 0x0
	.globl	IFailTwice
	.p2align	2
IFailTwice:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym diff_l
	.addrsig_sym getpatt
	.addrsig_sym tocharset
	.addrsig_sym newcharset
	.addrsig_sym loopset
	.addrsig_sym correctset
	.addrsig_sym isheadfail
	.addrsig_sym newpatt
	.addrsig_sym addpatt
	.addrsig_sym check2test
	.addrsig_sym setinst
	.addrsig_sym optimizechoice
	.addrsig_sym ISCHARSET
	.addrsig_sym i
	.addrsig_sym IFail
	.addrsig_sym IChoice
	.addrsig_sym IFailTwice
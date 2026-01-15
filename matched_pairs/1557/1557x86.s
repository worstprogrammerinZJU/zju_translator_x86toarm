	.text
	.p2align	4, 0x90                         # -- Begin function basicUnion
basicUnion:                             # @basicUnion
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	tocharset@PLT
	movq	-64(%rbp), %rax
	cmpq	ISCHARSET(%rip), %rax
	jne	.LBB0_3
# %bb.1:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	ISCHARSET(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	CHARSETINSTSIZE(%rip), %ecx
	leaq	-48(%rbp), %rsi
	callq	auxnew@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movl	ISet(%rip), %esi
	xorl	%edx, %edx
	callq	setinst@PLT
	movq	i(%rip), %rdi
	movq	-56(%rbp), %rax
	movq	i(%rip), %rcx
	movl	(%rax,%rcx,4), %esi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	i(%rip), %rcx
	orl	(%rax,%rcx,4), %esi
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	i(%rip), %rcx
	movl	%esi, (%rax,%rcx,4)
	callq	loopset@PLT
	movq	-72(%rbp), %rdi
	callq	correctset@PLT
	jmp	.LBB0_8
.LBB0_3:
	movq	-40(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	callq	exclusive@PLT
	cmpq	$0, %rax
	jne	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rdi
	callq	isheadfail@PLT
	cmpq	$0, %rax
	je	.LBB0_6
.LBB0_5:
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	addl	-24(%rbp), %ecx
	leaq	-48(%rbp), %rsi
	callq	auxnew@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	copypatt@PLT
	movq	-80(%rbp), %rdi
	movl	-20(%rbp), %esi
	addl	$1, %esi
	callq	check2test@PLT
	movl	-20(%rbp), %ecx
	movq	-80(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	%rdi, %rax
	addq	$8, %rax
	movq	%rax, -80(%rbp)
	movl	IJmp(%rip), %esi
	movl	-24(%rbp), %edx
	addl	$1, %edx
	callq	setinst@PLT
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	$2, %edx
	callq	addpatt@PLT
	jmp	.LBB0_7
.LBB0_6:
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	addl	$1, %ecx
	addl	-24(%rbp), %ecx
	leaq	-48(%rbp), %rsi
	callq	auxnew@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	movl	IChoice(%rip), %esi
	movl	-20(%rbp), %edx
	addl	$1, %edx
	addl	$1, %edx
	callq	setinst@PLT
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	copypatt@PLT
	movl	-20(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	movl	ICommit(%rip), %esi
	movl	-24(%rbp), %edx
	addl	$1, %edx
	callq	setinst@PLT
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	$2, %edx
	callq	addpatt@PLT
	movq	-88(%rbp), %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rcx, %rax
	shlq	$3, %rax
	addq	%rax, %rdi
	callq	optimizechoice@PLT
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:
	movq	-48(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ISCHARSET
	.p2align	3
ISCHARSET:
	.quad	0                               # 0x0
	.globl	CHARSETINSTSIZE
	.p2align	2
CHARSETINSTSIZE:
	.long	0                               # 0x0
	.globl	ISet
	.p2align	2
ISet:
	.long	0                               # 0x0
	.globl	i
	.p2align	3
i:
	.quad	0                               # 0x0
	.globl	IJmp
	.p2align	2
IJmp:
	.long	0                               # 0x0
	.globl	IChoice
	.p2align	2
IChoice:
	.long	0                               # 0x0
	.globl	ICommit
	.p2align	2
ICommit:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym basicUnion
	.addrsig_sym tocharset
	.addrsig_sym auxnew
	.addrsig_sym setinst
	.addrsig_sym loopset
	.addrsig_sym correctset
	.addrsig_sym exclusive
	.addrsig_sym isheadfail
	.addrsig_sym copypatt
	.addrsig_sym check2test
	.addrsig_sym addpatt
	.addrsig_sym optimizechoice
	.addrsig_sym ISCHARSET
	.addrsig_sym CHARSETINSTSIZE
	.addrsig_sym ISet
	.addrsig_sym i
	.addrsig_sym IJmp
	.addrsig_sym IChoice
	.addrsig_sym ICommit
	.text
	.p2align	4, 0x90                         # -- Begin function capture_aux
capture_aux:                            # @capture_aux
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	leaq	-20(%rbp), %rdx
	callq	getpatt@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	xorl	%esi, %esi
	leaq	-24(%rbp), %rdx
	callq	skipchecks@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	addl	$1, %esi
	callq	newpatt@PLT
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	getlabel@PLT
	movl	%eax, -52(%rbp)
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
	movl	IFullCapture(%rip), %esi
	movl	-52(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	setinstcap@PLT
	jmp	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	addl	$1, %esi
	addl	$1, %esi
	callq	newpatt@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	addq	$4, %rax
	movq	%rax, -72(%rbp)
	movl	IOpenCapture(%rip), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	getlabel@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movl	-76(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movl	-12(%rbp), %ecx
	xorl	%r8d, %r8d
	callq	setinstcap@PLT
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	$1, %edx
	callq	addpatt@PLT
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movl	ICloseCapture(%rip), %esi
	movl	Cclose(%rip), %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	callq	setinstcap@PLT
	movq	-64(%rbp), %rdi
	callq	optimizecaptures@PLT
.LBB0_3:
	movl	$1, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IFullCapture
	.p2align	2
IFullCapture:
	.long	0                               # 0x0
	.globl	IOpenCapture
	.p2align	2
IOpenCapture:
	.long	0                               # 0x0
	.globl	ICloseCapture
	.p2align	2
ICloseCapture:
	.long	0                               # 0x0
	.globl	Cclose
	.p2align	2
Cclose:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym capture_aux
	.addrsig_sym getpatt
	.addrsig_sym skipchecks
	.addrsig_sym newpatt
	.addrsig_sym getlabel
	.addrsig_sym addpatt
	.addrsig_sym setinstcap
	.addrsig_sym optimizecaptures
	.addrsig_sym IFullCapture
	.addrsig_sym IOpenCapture
	.addrsig_sym ICloseCapture
	.addrsig_sym Cclose
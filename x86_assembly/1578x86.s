	.text
	.p2align	4, 0x90                         # -- Begin function getpatt
getpatt:                                # @getpatt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	lua_type@PLT
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)                 # 8-byte Spill
	subl	$4, %eax
	ja	.LBB0_22
# %bb.26:
	movq	-72(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	leaq	-48(%rbp), %rdx
	callq	lua_tolstring@PLT
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	callq	newpatt@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	IChar(%rip), %esi
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rax,%rcx), %ecx
	xorl	%edx, %edx
	callq	setinstaux@PLT
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_2
.LBB0_5:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	lua_replace@PLT
	jmp	.LBB0_23
.LBB0_6:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	lua_tointeger@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB0_8
# %bb.7:
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	callq	newpatt@PLT
	movq	%rax, -32(%rbp)
	jmp	.LBB0_15
.LBB0_8:
	cmpl	$0, -60(%rbp)
	jle	.LBB0_10
# %bb.9:
	movq	-8(%rbp), %rdi
	movl	-60(%rbp), %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	any@PLT
	movq	%rax, -32(%rbp)
	jmp	.LBB0_14
.LBB0_10:
	xorl	%eax, %eax
	subl	-60(%rbp), %eax
	cmpl	UCHAR_MAX(%rip), %eax
	jg	.LBB0_12
# %bb.11:
	movq	-8(%rbp), %rdi
	movl	$2, %esi
	callq	newpatt@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	ITestAny(%rip), %esi
	xorl	%ecx, %ecx
	subl	-60(%rbp), %ecx
	movl	$2, %edx
	callq	setinstaux@PLT
	movq	-32(%rbp), %rdi
	addq	$4, %rdi
	movl	IFail(%rip), %esi
	xorl	%edx, %edx
	callq	setinst@PLT
	jmp	.LBB0_13
.LBB0_12:
	movl	$2, -64(%rbp)
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	subl	-60(%rbp), %esi
	subl	UCHAR_MAX(%rip), %esi
	movl	$3, %edx
	leaq	-64(%rbp), %rcx
	callq	any@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	ITestAny(%rip), %esi
	movl	-64(%rbp), %edx
	addl	$1, %edx
	movl	UCHAR_MAX(%rip), %ecx
	callq	setinstaux@PLT
	movq	-32(%rbp), %rdi
	addq	$4, %rdi
	movl	IChoice(%rip), %esi
	movl	-64(%rbp), %edx
	movl	UCHAR_MAX(%rip), %ecx
	callq	setinstaux@PLT
	movq	-32(%rbp), %rdi
	movslq	-64(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	IFailTwice(%rip), %esi
	xorl	%edx, %edx
	callq	setinst@PLT
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	lua_replace@PLT
	jmp	.LBB0_23
.LBB0_16:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	lua_toboolean@PLT
	cmpl	$0, %eax
	je	.LBB0_18
# %bb.17:
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	callq	newpatt@PLT
	movq	%rax, -32(%rbp)
	jmp	.LBB0_19
.LBB0_18:
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	newpatt@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	IFail(%rip), %esi
	xorl	%edx, %edx
	callq	setinst@PLT
.LBB0_19:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	lua_replace@PLT
	jmp	.LBB0_23
.LBB0_20:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	fix_l@PLT
	movq	%rax, -32(%rbp)
	jmp	.LBB0_23
.LBB0_21:
	movq	-8(%rbp), %rdi
	movl	$2, %esi
	callq	newpatt@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movl	IOpenCapture(%rip), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	value2fenv@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movl	-76(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movl	Cruntime(%rip), %ecx
	xorl	%r8d, %r8d
	callq	setinstcap@PLT
	movq	-32(%rbp), %rdi
	addq	$4, %rdi
	movl	ICloseRunTime(%rip), %esi
	movl	Cclose(%rip), %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	callq	setinstcap@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	lua_replace@PLT
	jmp	.LBB0_23
.LBB0_22:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	checkpattern@PLT
	movq	%rax, -32(%rbp)
.LBB0_23:
	cmpq	$0, -24(%rbp)
	je	.LBB0_25
# %bb.24:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	pattsize@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_25:
	movq	-32(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_21-.LJTI0_0
	.long	.LBB0_16-.LJTI0_0
                                        # -- End function
	.bss
	.globl	IChar
	.p2align	2
IChar:
	.long	0                               # 0x0
	.globl	UCHAR_MAX
	.p2align	2
UCHAR_MAX:
	.long	0                               # 0x0
	.globl	ITestAny
	.p2align	2
ITestAny:
	.long	0                               # 0x0
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
	.globl	IOpenCapture
	.p2align	2
IOpenCapture:
	.long	0                               # 0x0
	.globl	Cruntime
	.p2align	2
Cruntime:
	.long	0                               # 0x0
	.globl	ICloseRunTime
	.p2align	2
ICloseRunTime:
	.long	0                               # 0x0
	.globl	Cclose
	.p2align	2
Cclose:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getpatt
	.addrsig_sym lua_type
	.addrsig_sym lua_tolstring
	.addrsig_sym newpatt
	.addrsig_sym setinstaux
	.addrsig_sym lua_replace
	.addrsig_sym lua_tointeger
	.addrsig_sym any
	.addrsig_sym setinst
	.addrsig_sym lua_toboolean
	.addrsig_sym fix_l
	.addrsig_sym setinstcap
	.addrsig_sym value2fenv
	.addrsig_sym checkpattern
	.addrsig_sym pattsize
	.addrsig_sym IChar
	.addrsig_sym UCHAR_MAX
	.addrsig_sym ITestAny
	.addrsig_sym IFail
	.addrsig_sym IChoice
	.addrsig_sym IFailTwice
	.addrsig_sym IOpenCapture
	.addrsig_sym Cruntime
	.addrsig_sym ICloseRunTime
	.addrsig_sym Cclose
	.text
	.p2align	4, 0x90                         # -- Begin function matchtime_l
matchtime_l:                            # @matchtime_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	getpattl@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	addl	$1, %esi
	addl	$1, %esi
	callq	newpatt@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	LUA_TFUNCTION(%rip), %edx
	movl	$2, %esi
	callq	luaL_checktype@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	movl	IOpenCapture(%rip), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	movl	$2, %esi
	callq	value2fenv@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	-36(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movl	Cruntime(%rip), %ecx
	xorl	%r8d, %r8d
	callq	setinstcap@PLT
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	$1, %edx
	callq	addpatt@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	ICloseRunTime(%rip), %esi
	movl	Cclose(%rip), %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	callq	setinstcap@PLT
	movq	-24(%rbp), %rdi
	callq	optimizecaptures@PLT
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LUA_TFUNCTION
	.p2align	2
LUA_TFUNCTION:
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
	.addrsig_sym matchtime_l
	.addrsig_sym getpattl
	.addrsig_sym newpatt
	.addrsig_sym luaL_checktype
	.addrsig_sym setinstcap
	.addrsig_sym value2fenv
	.addrsig_sym addpatt
	.addrsig_sym optimizecaptures
	.addrsig_sym LUA_TFUNCTION
	.addrsig_sym IOpenCapture
	.addrsig_sym Cruntime
	.addrsig_sym ICloseRunTime
	.addrsig_sym Cclose
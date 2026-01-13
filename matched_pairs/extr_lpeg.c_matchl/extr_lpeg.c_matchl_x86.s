	.text
	.p2align	4, 0x90                         # -- Begin function matchl
matchl:                                 # @matchl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	IMAXCAPTURES(%rip), %eax
                                        # kill: def $rax killed $eax
	movq	%rsp, %rcx
	movq	%rcx, -24(%rbp)
	leaq	15(,%rax,4), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -104(%rbp)                # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	getpatt@PLT
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movl	SUBJIDX(%rip), %esi
	leaq	-48(%rbp), %rdx
	callq	luaL_checklstring@PLT
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	lua_gettop@PLT
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	callq	luaL_optinteger@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jle	.LBB0_5
# %bb.1:
	movq	-80(%rbp), %rax
	cmpq	-48(%rbp), %rax
	ja	.LBB0_3
# %bb.2:
	movq	-80(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	jmp	.LBB0_4
.LBB0_3:
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
.LBB0_4:
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	%rax, -120(%rbp)                # 8-byte Spill
	jmp	.LBB0_9
.LBB0_5:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	-80(%rbp), %rax
	cmpq	-48(%rbp), %rax
	ja	.LBB0_7
# %bb.6:
	movq	-48(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	-80(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	jmp	.LBB0_8
.LBB0_7:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	jmp	.LBB0_8
.LBB0_8:
	movq	-128(%rbp), %rax                # 8-byte Reload
	movq	%rax, -120(%rbp)                # 8-byte Spill
.LBB0_9:
	movq	-120(%rbp), %rax                # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rdi
	callq	lua_pushnil@PLT
	movq	-104(%rbp), %rsi                # 8-byte Reload
	movq	-16(%rbp), %rdi
	callq	lua_pushlightuserdata@PLT
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	lua_getfenv@PLT
	movq	-104(%rbp), %r9                 # 8-byte Reload
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rdx
	addq	-88(%rbp), %rdx
	movq	-64(%rbp), %rcx
	addq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movl	-68(%rbp), %eax
	subq	$16, %rsp
	movl	%eax, (%rsp)
	callq	match@PLT
	addq	$16, %rsp
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_11
# %bb.10:
	movq	-16(%rbp), %rdi
	callq	lua_pushnil@PLT
	movl	$1, -4(%rbp)
	movl	$1, -92(%rbp)
	jmp	.LBB0_12
.LBB0_11:
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-68(%rbp), %ecx
	callq	getcaptures@PLT
	movl	%eax, -4(%rbp)
	movl	$1, -92(%rbp)
.LBB0_12:
	movq	-24(%rbp), %rax
	movq	%rax, %rsp
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IMAXCAPTURES
	.p2align	2
IMAXCAPTURES:
	.long	0                               # 0x0
	.globl	SUBJIDX
	.p2align	2
SUBJIDX:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym matchl
	.addrsig_sym getpatt
	.addrsig_sym luaL_checklstring
	.addrsig_sym lua_gettop
	.addrsig_sym luaL_optinteger
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushlightuserdata
	.addrsig_sym lua_getfenv
	.addrsig_sym match
	.addrsig_sym getcaptures
	.addrsig_sym IMAXCAPTURES
	.addrsig_sym SUBJIDX
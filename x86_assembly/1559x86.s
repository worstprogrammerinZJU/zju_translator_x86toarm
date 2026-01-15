	.text
	.p2align	4, 0x90                         # -- Begin function capconst_l
capconst_l:                             # @capconst_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lua_gettop@PLT
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	newpatt@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	xorl	%edx, %edx
	callq	lua_createtable@PLT
	movl	$1, -16(%rbp)
	movl	$1, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	lua_isnil@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -32(%rbp)
	movl	%eax, %edi
	movl	IEmptyCaptureIdx(%rip), %esi
	movl	Cconst(%rip), %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	callq	setinstcap@PLT
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -32(%rbp)
	movl	%eax, %edi
	movl	IEmptyCaptureIdx(%rip), %esi
	movl	-16(%rbp), %edx
	movl	Cconst(%rip), %ecx
	xorl	%r8d, %r8d
	callq	setinstcap@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	lua_pushvalue@PLT
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_rawseti@PLT
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_7:
	movq	-8(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_setfenv@PLT
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IEmptyCaptureIdx
	.p2align	2
IEmptyCaptureIdx:
	.long	0                               # 0x0
	.globl	Cconst
	.p2align	2
Cconst:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym capconst_l
	.addrsig_sym lua_gettop
	.addrsig_sym newpatt
	.addrsig_sym lua_createtable
	.addrsig_sym lua_isnil
	.addrsig_sym setinstcap
	.addrsig_sym lua_pushvalue
	.addrsig_sym lua_rawseti
	.addrsig_sym lua_setfenv
	.addrsig_sym IEmptyCaptureIdx
	.addrsig_sym Cconst
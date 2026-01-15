	.text
	.p2align	4, 0x90                         # -- Begin function getcaptures
getcaptures:                            # @getcaptures
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movl	-28(%rbp), %edi
	callq	caplistidx@PLT
	movq	-104(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	callq	lua_touserdata@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	isclosecap@PLT
	cmpl	$0, %eax
	jne	.LBB0_5
# %bb.1:
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$0, -72(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -88(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	leaq	-96(%rbp), %rdi
	callq	pushcapture@PLT
	movq	%rax, %rcx
	movslq	-44(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -44(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-80(%rbp), %rdi
	callq	isclosecap@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.4:
	jmp	.LBB0_5
.LBB0_5:
	cmpl	$0, -44(%rbp)
	jne	.LBB0_7
# %bb.6:
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movl	%eax, %esi
	callq	lua_pushinteger@PLT
	movl	$1, -44(%rbp)
.LBB0_7:
	movl	-44(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getcaptures
	.addrsig_sym lua_touserdata
	.addrsig_sym caplistidx
	.addrsig_sym isclosecap
	.addrsig_sym pushcapture
	.addrsig_sym lua_pushinteger
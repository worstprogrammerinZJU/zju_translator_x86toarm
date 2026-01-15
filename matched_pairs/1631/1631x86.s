	.text
	.p2align	4, 0x90                         # -- Begin function tablecap
tablecap:                               # @tablecap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	callq	lua_newtable@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movl	%edi, %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	callq	isfullcap@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	$1, -4(%rbp)
	jmp	.LBB0_10
.LBB0_2:
	jmp	.LBB0_3
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	isclosecap@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_4
	jmp	.LBB0_9
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	pushcapture@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -24(%rbp)
	jle	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	xorl	%esi, %esi
	subl	%eax, %esi
	movl	-20(%rbp), %edx
	addl	-24(%rbp), %edx
	callq	lua_rawseti@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=2
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_3
.LBB0_9:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movl	$1, -4(%rbp)
.LBB0_10:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tablecap
	.addrsig_sym lua_newtable
	.addrsig_sym isfullcap
	.addrsig_sym isclosecap
	.addrsig_sym pushcapture
	.addrsig_sym lua_rawseti
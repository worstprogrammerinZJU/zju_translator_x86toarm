	.text
	.p2align	4, 0x90                         # -- Begin function match
match:                                  # @match
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	MAXBACK(%rip), %eax
	movl	%eax, %ecx
	movq	%rsp, %rax
	movq	%rax, -64(%rbp)
	leaq	(%rcx,%rcx,2), %rax
	leaq	15(,%rax,8), %rdx
	movabsq	$274877906928, %rax             # imm = 0x3FFFFFFFF0
	andq	%rax, %rdx
	movq	%rsp, %rax
	subq	%rdx, %rax
	movq	%rax, -184(%rbp)                # 8-byte Spill
	movq	%rax, %rsp
	movq	%rcx, -72(%rbp)
	movslq	MAXBACK(%rip), %rcx
	imulq	$24, %rcx, %rdx
	movq	%rax, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	movq	%rax, -88(%rbp)
	movl	IMAXCAPTURES(%rip), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	leaq	giveup(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	-32(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-88(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-88(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -88(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_50 Depth 2
                                        #     Child Loop BB0_78 Depth 2
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)                # 8-byte Spill
	subl	$28, %eax
	ja	.LBB0_107
# %bb.109:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-192(%rbp), %rax                # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_2:
	movq	-184(%rbp), %rcx                # 8-byte Reload
	movq	-88(%rbp), %rax
	addq	$24, %rcx
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	Cclose(%rip), %ecx
	movq	-56(%rbp), %rax
	movslq	-96(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 12(%rax)
	movq	-56(%rbp), %rax
	movslq	-96(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -108(%rbp)
	jmp	.LBB0_108
.LBB0_3:
	movq	-184(%rbp), %rax                # 8-byte Reload
	cmpq	%rax, -88(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	$0, -8(%rbp)
	movl	$1, -108(%rbp)
	jmp	.LBB0_108
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-184(%rbp), %rcx                # 8-byte Reload
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	%rcx, -88(%rbp)
	movb	%al, -193(%rbp)                 # 1-byte Spill
	jbe	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, -24(%rax)
	sete	%al
	movb	%al, -193(%rbp)                 # 1-byte Spill
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-193(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$-24, %rcx
	movq	%rcx, -88(%rbp)
	movq	-8(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_1
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -112(%rbp)
	movslq	-112(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_77
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -104(%rbp)
	movl	-112(%rbp), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -116(%rbp)
	movslq	-116(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -104(%rbp)
	movl	-116(%rbp), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	movq	-104(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jne	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_77
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
# %bb.19:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	movq	-104(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jne	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_25:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, -120(%rbp)
	movq	-104(%rbp), %rax
	movl	44(%rax), %edi
	movl	-120(%rbp), %esi
	callq	testchar@PLT
	cmpl	$0, %eax
	jne	.LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_77
.LBB0_27:                               #   in Loop: Header=BB0_1 Depth=1
	movl	CHARSETINSTSIZE(%rip), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
# %bb.28:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_29:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, -124(%rbp)
	movq	-104(%rbp), %rax
	movl	44(%rax), %edi
	movl	-124(%rbp), %esi
	callq	testchar@PLT
	cmpl	$0, %eax
	jne	.LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_1 Depth=1
	movl	CHARSETINSTSIZE(%rip), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB0_32:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_33:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, -128(%rbp)
	movq	-104(%rbp), %rax
	movl	44(%rax), %edi
	movl	-128(%rbp), %esi
	callq	testchar@PLT
	cmpl	$0, %eax
	je	.LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_77
.LBB0_36:                               #   in Loop: Header=BB0_1 Depth=1
	movl	CHARSETINSTSIZE(%rip), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
# %bb.37:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_38:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, -132(%rbp)
	movq	-104(%rbp), %rax
	movl	44(%rax), %edi
	movl	-132(%rbp), %esi
	callq	testchar@PLT
	cmpl	$0, %eax
	je	.LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_1 Depth=1
	movl	CHARSETINSTSIZE(%rip), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB0_42:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_43:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_44
.LBB0_44:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, -136(%rbp)
	movq	-104(%rbp), %rax
	movl	44(%rax), %edi
	movl	-136(%rbp), %esi
	callq	testchar@PLT
	cmpl	$0, %eax
	jne	.LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_48
.LBB0_46:                               #   in Loop: Header=BB0_44 Depth=2
	jmp	.LBB0_47
.LBB0_47:                               #   in Loop: Header=BB0_44 Depth=2
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_44
.LBB0_48:                               #   in Loop: Header=BB0_1 Depth=1
	movl	CHARSETINSTSIZE(%rip), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_1
.LBB0_49:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_50
.LBB0_50:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB0_55
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=2
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, -140(%rbp)
	movq	-104(%rbp), %rax
	movl	44(%rax), %edi
	movl	-140(%rbp), %esi
	callq	testchar@PLT
	cmpl	$0, %eax
	jne	.LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_55
.LBB0_53:                               #   in Loop: Header=BB0_50 Depth=2
	jmp	.LBB0_54
.LBB0_54:                               #   in Loop: Header=BB0_50 Depth=2
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_50
.LBB0_55:                               #   in Loop: Header=BB0_1 Depth=1
	movl	CHARSETINSTSIZE(%rip), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_1
.LBB0_56:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	-104(%rbp), %rcx
	movl	68(%rcx), %edi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	*%rax
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_77
.LBB0_58:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_1
.LBB0_59:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_1
.LBB0_60:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.LBB0_62
# %bb.61:
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	luaL_error@PLT
	movq	$0, -8(%rbp)
	movl	$1, -108(%rbp)
	jmp	.LBB0_108
.LBB0_62:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rsi
	xorl	%edi, %edi
	callq	dest@PLT
	movq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-32(%rbp), %rcx
	movq	-104(%rbp), %rax
	movslq	8(%rax), %rdx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rdx, %rax
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, (%rax)
	movl	-96(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-88(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_1
.LBB0_63:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.LBB0_65
# %bb.64:
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	luaL_error@PLT
	movq	$0, -8(%rbp)
	movl	$1, -108(%rbp)
	jmp	.LBB0_108
.LBB0_65:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	movq	-104(%rbp), %rcx
	addq	$24, %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-88(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_1
.LBB0_66:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-184(%rbp), %rcx                # 8-byte Reload
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	%rcx, -88(%rbp)
	movb	%al, -194(%rbp)                 # 1-byte Spill
	jbe	.LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, -24(%rax)
	setne	%al
	movb	%al, -194(%rbp)                 # 1-byte Spill
.LBB0_68:                               #   in Loop: Header=BB0_1 Depth=1
	movb	-194(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-88(%rbp), %rax
	addq	$-24, %rax
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_1
.LBB0_69:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-184(%rbp), %rcx                # 8-byte Reload
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	%rcx, -88(%rbp)
	movb	%al, -195(%rbp)                 # 1-byte Spill
	jbe	.LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, -24(%rax)
	setne	%al
	movb	%al, -195(%rbp)                 # 1-byte Spill
.LBB0_71:                               #   in Loop: Header=BB0_1 Depth=1
	movb	-195(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-32(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, -24(%rax)
	movl	-96(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, -16(%rax)
	movq	-104(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_1
.LBB0_72:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-184(%rbp), %rcx                # 8-byte Reload
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	%rcx, -88(%rbp)
	movb	%al, -196(%rbp)                 # 1-byte Spill
	jbe	.LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, -24(%rax)
	setne	%al
	movb	%al, -196(%rbp)                 # 1-byte Spill
.LBB0_74:                               #   in Loop: Header=BB0_1 Depth=1
	movb	-196(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$-24, %rcx
	movq	%rcx, -88(%rbp)
	movq	-24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_1
.LBB0_75:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-184(%rbp), %rax                # 8-byte Reload
	cmpq	%rax, -88(%rbp)
	seta	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-88(%rbp), %rax
	addq	$-24, %rax
	movq	%rax, -88(%rbp)
.LBB0_76:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_77
.LBB0_77:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_78
.LBB0_78:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-184(%rbp), %rax                # 8-byte Reload
	cmpq	%rax, -88(%rbp)
	seta	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$-24, %rcx
	movq	%rcx, -88(%rbp)
	movq	-24(%rax), %rax
	movq	%rax, -32(%rbp)
# %bb.79:                               #   in Loop: Header=BB0_78 Depth=2
	cmpq	$0, -32(%rbp)
	je	.LBB0_78
# %bb.80:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_1
.LBB0_81:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	lua_gettop@PLT
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movslq	-96(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	%rax, %rsi
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movl	16(%rbp), %r9d
	callq	runtimecap@PLT
	movl	%eax, -160(%rbp)
	movq	-16(%rbp), %rdi
	movl	-156(%rbp), %esi
	callq	lua_tointeger@PLT
	subl	$1, %eax
	movl	%eax, -164(%rbp)
	movq	-16(%rbp), %rdi
	callq	lua_gettop@PLT
	subl	-156(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$-1, -164(%rbp)
	jne	.LBB0_88
# %bb.82:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-156(%rbp), %esi
	callq	lua_toboolean@PLT
	cmpl	$0, %eax
	jne	.LBB0_84
# %bb.83:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-156(%rbp), %esi
	subl	$1, %esi
	callq	lua_settop@PLT
	jmp	.LBB0_77
.LBB0_84:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-156(%rbp), %esi
	callq	lua_isboolean@PLT
	cmpl	$0, %eax
	je	.LBB0_86
# %bb.85:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -164(%rbp)
.LBB0_86:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_87
.LBB0_87:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_88
.LBB0_88:                               #   in Loop: Header=BB0_1 Depth=1
	movslq	-164(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jl	.LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_1 Depth=1
	movslq	-164(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	luaL_error@PLT
.LBB0_91:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-164(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movl	-160(%rbp), %ecx
	movl	-96(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -96(%rbp)
	movq	-16(%rbp), %rdi
	movl	-156(%rbp), %esi
	callq	lua_remove@PLT
	cmpl	$0, -168(%rbp)
	jle	.LBB0_95
# %bb.92:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-168(%rbp), %eax
	addl	$1, %eax
	addl	-96(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	-92(%rbp), %eax
	jl	.LBB0_94
# %bb.93:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-96(%rbp), %edx
	movl	16(%rbp), %ecx
	callq	doublecap@PLT
	movq	%rax, -56(%rbp)
	movl	-96(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -92(%rbp)
.LBB0_94:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movslq	-96(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	%rax, %rsi
	movslq	-168(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rcx, %rax
	imulq	$24, %rax, %rax
	addq	%rax, %rsi
	addq	$-24, %rsi
	movl	-168(%rbp), %edx
	movl	-156(%rbp), %ecx
	callq	adddyncaptures@PLT
.LBB0_95:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_1
.LBB0_96:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)                # 8-byte Spill
	movq	-104(%rbp), %rdi
	callq	getoff@PLT
	movl	%eax, %ecx
	movq	-208(%rbp), %rax                # 8-byte Reload
	movslq	%ecx, %rdx
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -176(%rbp)
	cmpl	$0, -96(%rbp)
	setg	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-56(%rbp), %rax
	movl	-96(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	jne	.LBB0_99
# %bb.97:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-176(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	-96(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	cmpq	UCHAR_MAX(%rip), %rax
	jae	.LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-176(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	-96(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	-96(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 8(%rax)
	movq	-104(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_1
.LBB0_99:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movslq	-96(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	$1, 8(%rax)
	jmp	.LBB0_103
.LBB0_100:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movslq	-96(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	$1, 8(%rax)
	jmp	.LBB0_103
.LBB0_101:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movslq	-96(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	$0, 8(%rax)
	jmp	.LBB0_103
.LBB0_102:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rdi
	callq	getoff@PLT
	movl	%eax, %ecx
	addl	$1, %ecx
	movq	-56(%rbp), %rax
	movslq	-96(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 8(%rax)
.LBB0_103:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)                # 8-byte Spill
	movq	-104(%rbp), %rdi
	callq	getoff@PLT
	movq	-216(%rbp), %rcx                # 8-byte Reload
	movslq	%eax, %rdx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rdx, %rax
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movslq	-96(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rcx, (%rax)
	movq	-104(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	-96(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 16(%rax)
	movq	-104(%rbp), %rdi
	callq	getkind@PLT
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movslq	-96(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 12(%rax)
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	cmpl	-92(%rbp), %eax
	jl	.LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-96(%rbp), %edx
	movl	16(%rbp), %ecx
	callq	doublecap@PLT
	movq	%rax, -56(%rbp)
	movl	-96(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -92(%rbp)
.LBB0_105:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_1
.LBB0_106:
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)                # 8-byte Spill
	movl	16(%rbp), %edi
	callq	penvidx@PLT
	movq	-232(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	movq	-104(%rbp), %rax
	movl	12(%rax), %edx
	callq	lua_rawgeti@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	val2str@PLT
	movq	-224(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.2(%rip), %rsi
	movb	$0, %al
	callq	luaL_error@PLT
.LBB0_107:
	xorl	%edi, %edi
	callq	assert@PLT
	movq	$0, -8(%rbp)
	movl	$1, -108(%rbp)
.LBB0_108:
	movq	-64(%rbp), %rax
	movq	%rax, %rsp
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_33-.LJTI0_0
	.long	.LBB0_38-.LJTI0_0
	.long	.LBB0_29-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_49-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_25-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_69-.LJTI0_0
	.long	.LBB0_101-.LJTI0_0
	.long	.LBB0_106-.LJTI0_0
	.long	.LBB0_59-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_56-.LJTI0_0
	.long	.LBB0_102-.LJTI0_0
	.long	.LBB0_75-.LJTI0_0
	.long	.LBB0_76-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_100-.LJTI0_0
	.long	.LBB0_100-.LJTI0_0
	.long	.LBB0_66-.LJTI0_0
	.long	.LBB0_81-.LJTI0_0
	.long	.LBB0_96-.LJTI0_0
	.long	.LBB0_60-.LJTI0_0
	.long	.LBB0_15-.LJTI0_0
	.long	.LBB0_63-.LJTI0_0
	.long	.LBB0_72-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
                                        # -- End function
	.bss
	.globl	MAXBACK
	.p2align	2
MAXBACK:
	.long	0                               # 0x0
	.globl	IMAXCAPTURES
	.p2align	2
IMAXCAPTURES:
	.long	0                               # 0x0
	.section	.rodata,"a",@progbits
	.globl	giveup
	.p2align	3
giveup:
	.zero	24
	.bss
	.globl	Cclose
	.p2align	2
Cclose:
	.long	0                               # 0x0
	.globl	CHARSETINSTSIZE
	.p2align	2
CHARSETINSTSIZE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"too many pending calls/choices"
.L.str.1:
	.asciz	"invalid position returned by match-time capture"
	.bss
	.globl	UCHAR_MAX
	.p2align	3
UCHAR_MAX:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"reference to %s outside a grammar"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym match
	.addrsig_sym assert
	.addrsig_sym testchar
	.addrsig_sym luaL_error
	.addrsig_sym dest
	.addrsig_sym lua_gettop
	.addrsig_sym runtimecap
	.addrsig_sym lua_tointeger
	.addrsig_sym lua_toboolean
	.addrsig_sym lua_settop
	.addrsig_sym lua_isboolean
	.addrsig_sym lua_remove
	.addrsig_sym doublecap
	.addrsig_sym adddyncaptures
	.addrsig_sym getoff
	.addrsig_sym getkind
	.addrsig_sym lua_rawgeti
	.addrsig_sym penvidx
	.addrsig_sym val2str
	.addrsig_sym MAXBACK
	.addrsig_sym IMAXCAPTURES
	.addrsig_sym giveup
	.addrsig_sym Cclose
	.addrsig_sym CHARSETINSTSIZE
	.addrsig_sym UCHAR_MAX
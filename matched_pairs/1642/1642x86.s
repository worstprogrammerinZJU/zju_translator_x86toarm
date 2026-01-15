	.text
	.p2align	4, 0x90                         # -- Begin function verify
verify:                                 # @verify
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	MAXBACK(%rip), %eax
                                        # kill: def $rax killed $eax
	movq	%rsp, %rcx
	movq	%rcx, -56(%rbp)
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -96(%rbp)                 # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_37 Depth 2
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB0_49
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)                # 8-byte Spill
	subl	$27, %eax
	ja	.LBB0_48
# %bb.51:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax                # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movl	-68(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax
	cmpl	MAXBACK(%rip), %eax
	jl	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	luaL_error@PLT
	movl	%eax, -4(%rbp)
	movl	$1, -72(%rbp)
	jmp	.LBB0_50
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rsi
	xorl	%edi, %edi
	callq	dest@PLT
	movq	%rax, %rdx
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movslq	-68(%rbp), %rsi
	shlq	$4, %rsi
	movq	%rax, %rcx
	addq	%rsi, %rcx
	movq	%rdx, 8(%rcx)
	movl	-68(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -68(%rbp)
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	leaq	verify.dummy(%rip), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$136, 32(%rax)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-68(%rbp), %eax
	cmpl	MAXBACK(%rip), %eax
	jl	.LBB0_9
# %bb.8:
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	luaL_error@PLT
	movl	%eax, -4(%rbp)
	movl	$1, -72(%rbp)
	jmp	.LBB0_50
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movslq	-68(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rcx
	addq	%rdx, %rcx
	movq	$0, (%rcx)
	movq	-32(%rbp), %rcx
	addq	$24, %rcx
	movl	-68(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -68(%rbp)
	movslq	%edx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rcx, 8(%rax)
	jmp	.LBB0_29
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_36
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -76(%rbp)
.LBB0_13:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB0_19
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movslq	-76(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movslq	-76(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_17
# %bb.16:
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	val2str@PLT
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	luaL_error@PLT
	movl	%eax, -4(%rbp)
	movl	$1, -72(%rbp)
	jmp	.LBB0_50
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_13
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax
	cmpl	MAXBACK(%rip), %eax
	jl	.LBB0_21
# %bb.20:
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	luaL_error@PLT
	movl	%eax, -4(%rbp)
	movl	$1, -72(%rbp)
	jmp	.LBB0_50
.LBB0_21:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movslq	-68(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rcx
	addq	%rdx, %rcx
	movq	$0, (%rcx)
	movq	-32(%rbp), %rcx
	addq	$24, %rcx
	movl	-68(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -68(%rbp)
	movslq	%edx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	callq	getposition@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rax                # 8-byte Reload
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -68(%rbp)
	movb	%al, -121(%rbp)                 # 1-byte Spill
	jle	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 12(%rax)
	setg	%al
	movb	%al, -121(%rbp)                 # 1-byte Spill
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	movb	-121(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_29
.LBB0_25:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -68(%rbp)
	setg	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-32(%rbp), %rax
	cmpl	$0, 12(%rax)
	jle	.LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_29
.LBB0_27:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_28:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_29
.LBB0_29:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_30:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_36
.LBB0_31:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_35
# %bb.32:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$154, -16(%rcx)
	movb	%al, -122(%rbp)                 # 1-byte Spill
	jne	.LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$2, -12(%rax)
	sete	%al
	movb	%al, -122(%rbp)                 # 1-byte Spill
.LBB0_34:                               #   in Loop: Header=BB0_1 Depth=1
	movb	-122(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_35:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_36
.LBB0_36:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_37
.LBB0_37:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_39
# %bb.38:
	movl	$1, -4(%rbp)
	movl	$1, -72(%rbp)
	jmp	.LBB0_50
.LBB0_39:                               #   in Loop: Header=BB0_37 Depth=2
	jmp	.LBB0_40
.LBB0_40:                               #   in Loop: Header=BB0_37 Depth=2
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movslq	-68(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB0_37
# %bb.41:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movslq	-68(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_42:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	sizei@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_43:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_36
.LBB0_44:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	68(%rcx), %edi
	leaq	verify.dummy(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	*%rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_36
.LBB0_46:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_47:
	jmp	.LBB0_48
.LBB0_48:
	xorl	%edi, %edi
	callq	assert@PLT
	movl	$0, -4(%rbp)
	movl	$1, -72(%rbp)
	jmp	.LBB0_50
.LBB0_49:
	cmpl	$0, -68(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	$0, -4(%rbp)
	movl	$1, -72(%rbp)
.LBB0_50:
	movq	-56(%rbp), %rax
	movq	%rax, %rsp
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_30-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_42-.LJTI0_0
	.long	.LBB0_42-.LJTI0_0
	.long	.LBB0_30-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_25-.LJTI0_0
	.long	.LBB0_42-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_44-.LJTI0_0
	.long	.LBB0_42-.LJTI0_0
	.long	.LBB0_30-.LJTI0_0
	.long	.LBB0_31-.LJTI0_0
	.long	.LBB0_47-.LJTI0_0
	.long	.LBB0_42-.LJTI0_0
	.long	.LBB0_42-.LJTI0_0
	.long	.LBB0_22-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_42-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_30-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_22-.LJTI0_0
	.long	.LBB0_30-.LJTI0_0
                                        # -- End function
verify.dummy:
	.zero	1
	.bss
	.globl	MAXBACK
	.p2align	2
MAXBACK:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"too many pending calls/choices"
.L.str.1:
	.asciz	"%s is left recursive"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym verify
	.addrsig_sym luaL_error
	.addrsig_sym dest
	.addrsig_sym assert
	.addrsig_sym val2str
	.addrsig_sym getposition
	.addrsig_sym sizei
	.addrsig_sym verify.dummy
	.addrsig_sym MAXBACK
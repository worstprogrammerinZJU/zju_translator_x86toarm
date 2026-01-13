	.text
	.p2align	4, 0x90                         # -- Begin function stbi__vertical_flip
stbi__vertical_flip:                    # @stbi__vertical_flip
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8272, %rsp                     # imm = 0x2050
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movslq	-12(%rbp), %rax
	movslq	-20(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -8232(%rbp)
	movl	$0, -24(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-24(%rbp), %eax
	movl	-16(%rbp), %ecx
	sarl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_10
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8232(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	-32(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -8240(%rbp)
	movq	-8232(%rbp), %rax
	movl	-16(%rbp), %ecx
	subl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	-32(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -8248(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8256(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -8256(%rbp)
	je	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	cmpq	$8192, -8256(%rbp)              # imm = 0x2000
	jae	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-8256(%rbp), %rax
	movq	%rax, -8272(%rbp)               # 8-byte Spill
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$8192, %eax                     # imm = 0x2000
	movq	%rax, -8272(%rbp)               # 8-byte Spill
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-8272(%rbp), %rax               # 8-byte Reload
	movq	%rax, -8264(%rbp)
	leaq	-8224(%rbp), %rdi
	movq	-8240(%rbp), %rsi
	movq	-8264(%rbp), %rdx
	callq	memcpy@PLT
	movq	-8240(%rbp), %rdi
	movq	-8248(%rbp), %rsi
	movq	-8264(%rbp), %rdx
	callq	memcpy@PLT
	movq	-8248(%rbp), %rdi
	leaq	-8224(%rbp), %rsi
	movq	-8264(%rbp), %rdx
	callq	memcpy@PLT
	movq	-8264(%rbp), %rax
	shlq	$2, %rax
	addq	-8240(%rbp), %rax
	movq	%rax, -8240(%rbp)
	movq	-8264(%rbp), %rax
	shlq	$2, %rax
	addq	-8248(%rbp), %rax
	movq	%rax, -8248(%rbp)
	movq	-8264(%rbp), %rcx
	movq	-8256(%rbp), %rax
	subq	%rcx, %rax
	movq	%rax, -8256(%rbp)
	jmp	.LBB0_3
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_10:
	addq	$8272, %rsp                     # imm = 0x2050
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__vertical_flip
	.addrsig_sym memcpy
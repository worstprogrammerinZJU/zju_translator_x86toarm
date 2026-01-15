	.text
	.p2align	4, 0x90                         # -- Begin function checkrule
checkrule:                              # @checkrule
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	$0, -40(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_16
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	IPartialCommit(%rip), %rax
	jne	.LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, 8(%rax)
	jge	.LBB0_11
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	dest@PLT
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	IChoice(%rip), %rcx
	movb	%al, -45(%rbp)                  # 1-byte Spill
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	subl	$1, %esi
	callq	dest@PLT
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	sete	%al
	movb	%al, -45(%rbp)                  # 1-byte Spill
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-45(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	verify@PLT
	cmpl	$0, %eax
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	val2str@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	luaL_error@PLT
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	IOpenCall(%rip), %rax
	jne	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	callq	sizei@PLT
	movq	%rax, %rcx
	movslq	-36(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_16:
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	IRet(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movslq	-20(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	addq	$-16, %rcx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	verify@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IPartialCommit
	.p2align	3
IPartialCommit:
	.quad	0                               # 0x0
	.globl	IChoice
	.p2align	3
IChoice:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"possible infinite loop in %s"
	.bss
	.globl	IOpenCall
	.p2align	3
IOpenCall:
	.quad	0                               # 0x0
	.globl	IRet
	.p2align	3
IRet:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym checkrule
	.addrsig_sym dest
	.addrsig_sym assert
	.addrsig_sym verify
	.addrsig_sym luaL_error
	.addrsig_sym val2str
	.addrsig_sym sizei
	.addrsig_sym IPartialCommit
	.addrsig_sym IChoice
	.addrsig_sym IOpenCall
	.addrsig_sym IRet
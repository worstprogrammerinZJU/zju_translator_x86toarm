	.text
	.globl	rand_size_t                     # -- Begin function rand_size_t
	.p2align	4, 0x90
rand_size_t:                            # @rand_size_t
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movb	$0, %al
	callq	rand@PLT
	andl	$255, %eax
	cltq
	shlq	$56, %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	rand@PLT
	movl	%eax, %ecx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	andl	$255, %ecx
	movslq	%ecx, %rcx
	shlq	$48, %rcx
	orq	%rcx, %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	rand@PLT
	movl	%eax, %ecx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	andl	$255, %ecx
	movslq	%ecx, %rcx
	shlq	$40, %rcx
	orq	%rcx, %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	rand@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	andl	$255, %ecx
	movslq	%ecx, %rcx
	shlq	$32, %rcx
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	rand@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	andl	$255, %ecx
	movslq	%ecx, %rcx
	shlq	$24, %rcx
	orq	%rcx, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	rand@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	andl	$255, %ecx
	movslq	%ecx, %rcx
	shlq	$16, %rcx
	orq	%rcx, %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	rand@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax                 # 8-byte Reload
	andl	$255, %ecx
	movslq	%ecx, %rcx
	shlq	$8, %rcx
	orq	%rcx, %rax
	movq	%rax, -8(%rbp)                  # 8-byte Spill
	movb	$0, %al
	callq	rand@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax                  # 8-byte Reload
	andl	$255, %ecx
	movslq	%ecx, %rcx
	shlq	$0, %rcx
	orq	%rcx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand
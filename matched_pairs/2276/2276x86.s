	.text
	.p2align	4, 0x90                         # -- Begin function stbi__psd_info
stbi__psd_info:                         # @stbi__psd_info
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_2:
	cmpq	$0, -32(%rbp)
	jne	.LBB0_4
# %bb.3:
	leaq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_4:
	cmpq	$0, -40(%rbp)
	jne	.LBB0_6
# %bb.5:
	leaq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB0_6:
	movq	-16(%rbp), %rdi
	callq	stbi__get32be@PLT
	cmpl	$943870035, %eax                # imm = 0x38425053
	je	.LBB0_8
# %bb.7:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_19
.LBB0_8:
	movq	-16(%rbp), %rdi
	callq	stbi__get16be@PLT
	cmpl	$1, %eax
	je	.LBB0_10
# %bb.9:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_19
.LBB0_10:
	movq	-16(%rbp), %rdi
	movl	$6, %esi
	callq	stbi__skip@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get16be@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jl	.LBB0_12
# %bb.11:
	cmpl	$16, -44(%rbp)
	jle	.LBB0_13
.LBB0_12:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_19
.LBB0_13:
	movq	-16(%rbp), %rdi
	callq	stbi__get32be@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get32be@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get16be@PLT
	movl	%eax, -52(%rbp)
	cmpl	$8, -52(%rbp)
	je	.LBB0_16
# %bb.14:
	cmpl	$16, -52(%rbp)
	je	.LBB0_16
# %bb.15:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_19
.LBB0_16:
	movq	-16(%rbp), %rdi
	callq	stbi__get16be@PLT
	cmpl	$3, %eax
	je	.LBB0_18
# %bb.17:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_19
.LBB0_18:
	movq	-40(%rbp), %rax
	movl	$4, (%rax)
	movl	$1, -4(%rbp)
.LBB0_19:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__psd_info
	.addrsig_sym stbi__get32be
	.addrsig_sym stbi__rewind
	.addrsig_sym stbi__get16be
	.addrsig_sym stbi__skip
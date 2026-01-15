	.text
	.p2align	4, 0x90                         # -- Begin function stbi__float_postprocess
stbi__float_postprocess:                # @stbi__float_postprocess
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	cmpq	$0, stbi__vertically_flip_on_load(%rip)
	je	.LBB0_6
# %bb.1:
	cmpq	$0, -8(%rbp)
	je	.LBB0_6
# %bb.2:
	cmpl	$0, -36(%rbp)
	je	.LBB0_4
# %bb.3:
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
.LBB0_5:
	movl	-44(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movslq	-40(%rbp), %rax
	shlq	$2, %rax
	movl	%eax, %ecx
	callq	stbi__vertical_flip@PLT
.LBB0_6:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stbi__vertically_flip_on_load
	.p2align	3
stbi__vertically_flip_on_load:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__float_postprocess
	.addrsig_sym stbi__vertical_flip
	.addrsig_sym stbi__vertically_flip_on_load
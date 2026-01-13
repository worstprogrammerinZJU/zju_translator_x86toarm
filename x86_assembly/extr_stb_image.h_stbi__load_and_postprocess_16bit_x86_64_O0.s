	.text
	.p2align	4, 0x90                         # -- Begin function stbi__load_and_postprocess_16bit
stbi__load_and_postprocess_16bit:       # @stbi__load_and_postprocess_16bit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	leaq	-48(%rbp), %r9
	movl	$16, (%rsp)
	callq	stbi__load_main@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_13
.LBB0_2:
	cmpl	$16, -48(%rbp)
	je	.LBB0_7
# %bb.3:
	cmpl	$8, -48(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	STBI_ASSERT@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	cmpl	$0, -44(%rbp)
	jne	.LBB0_5
# %bb.4:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	jmp	.LBB0_6
.LBB0_5:
	movl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
.LBB0_6:
	movl	-64(%rbp), %edx                 # 4-byte Reload
	movl	-68(%rbp), %esi                 # 4-byte Reload
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movl	-84(%rbp), %ecx                 # 4-byte Reload
	callq	stbi__convert_8_to_16@PLT
	movq	%rax, -56(%rbp)
	movl	$16, -48(%rbp)
.LBB0_7:
	cmpq	$0, stbi__vertically_flip_on_load(%rip)
	je	.LBB0_12
# %bb.8:
	cmpl	$0, -44(%rbp)
	je	.LBB0_10
# %bb.9:
	movl	-44(%rbp), %eax
	movl	%eax, -88(%rbp)                 # 4-byte Spill
	jmp	.LBB0_11
.LBB0_10:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -88(%rbp)                 # 4-byte Spill
.LBB0_11:
	movl	-88(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movslq	-60(%rbp), %rax
	shlq	$2, %rax
	movl	%eax, %ecx
	callq	stbi__vertical_flip@PLT
.LBB0_12:
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_13:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
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
	.addrsig_sym stbi__load_and_postprocess_16bit
	.addrsig_sym stbi__load_main
	.addrsig_sym STBI_ASSERT
	.addrsig_sym stbi__convert_8_to_16
	.addrsig_sym stbi__vertical_flip
	.addrsig_sym stbi__vertically_flip_on_load
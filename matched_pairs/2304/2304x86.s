	.text
	.p2align	4, 0x90                         # -- Begin function stbi__zhuffman_decode
stbi__zhuffman_decode:                  # @stbi__zhuffman_decode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$16, (%rax)
	jge	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	stbi__fill_bits@PLT
.LBB0_2:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	andq	STBI__ZFAST_MASK(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB0_4
# %bb.3:
	movl	-28(%rbp), %eax
	sarl	$9, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	movq	%rcx, 8(%rax)
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	-28(%rbp), %eax
	andl	$511, %eax                      # imm = 0x1FF
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	stbi__zhuffman_decode_slowpath@PLT
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STBI__ZFAST_MASK
	.p2align	3
STBI__ZFAST_MASK:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__zhuffman_decode
	.addrsig_sym stbi__fill_bits
	.addrsig_sym stbi__zhuffman_decode_slowpath
	.addrsig_sym STBI__ZFAST_MASK
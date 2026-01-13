	.text
	.p2align	4, 0x90                         # -- Begin function stbi__jpeg_info_raw
stbi__jpeg_info_raw:                    # @stbi__jpeg_info_raw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	STBI__SCAN_header(%rip), %esi
	callq	stbi__decode_jpeg_header@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	cmpq	$0, -24(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_4:
	cmpq	$0, -32(%rbp)
	je	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_6:
	cmpq	$0, -40(%rbp)
	je	.LBB0_8
# %bb.7:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	movl	$1, %ecx
	movl	$3, %eax
	cmpl	$3, %edx
	cmovgel	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_8:
	movl	$1, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STBI__SCAN_header
	.p2align	2
STBI__SCAN_header:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_info_raw
	.addrsig_sym stbi__decode_jpeg_header
	.addrsig_sym stbi__rewind
	.addrsig_sym STBI__SCAN_header
	.text
	.p2align	4, 0x90                         # -- Begin function rebuild_filter_bank_with_compensation
rebuild_filter_bank_with_compensation:  # @rebuild_filter_bank_with_compensation
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_2:
	movq	-16(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, 72(%rcx)
	movb	%al, -41(%rbp)                  # 1-byte Spill
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	setne	%al
	xorb	$-1, %al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB0_4:
	movb	-41(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert0@PLT
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	movl	-36(%rbp), %esi
	addl	$1, %esi
	movq	-16(%rbp), %rax
	imull	16(%rax), %esi
	callq	av_calloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_6
# %bb.5:
	movl	ENOMEM(%rip), %edi
	callq	AVERROR@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_16
.LBB0_6:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	68(%rax), %edx
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movl	12(%rax), %r8d
	movl	-36(%rbp), %r9d
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movl	$1, %r11d
                                        # kill: def $cl killed $ecx
	shll	%cl, %r11d
	movl	-48(%rbp), %ecx                 # 4-byte Reload
	movq	-16(%rbp), %rax
	movl	60(%rax), %r10d
	movq	-16(%rbp), %rax
	movl	56(%rax), %eax
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	build_filter@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jge	.LBB0_8
# %bb.7:
	leaq	-24(%rbp), %rdi
	callq	av_freep@PLT
	movl	-40(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_16
.LBB0_8:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	imull	-36(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	imull	16(%rcx), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	subl	$1, %edx
	movq	-16(%rbp), %rax
	imull	16(%rax), %edx
	callq	memcpy@PLT
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	imull	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	16(%rcx), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	imull	16(%rcx), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	callq	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rsi
	cltd
	idivl	4(%rsi)
	imull	%eax, %ecx
	movl	INT32_MAX(%rip), %eax
	movl	$2, %esi
	cltd
	idivl	%esi
	movl	-52(%rbp), %edx                 # 4-byte Reload
	movl	%eax, %r8d
	leaq	-28(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	av_reduce@PLT
	cmpl	$0, %eax
	jne	.LBB0_10
# %bb.9:
	leaq	-24(%rbp), %rdi
	callq	av_freep@PLT
	movl	EINVAL(%rip), %edi
	callq	AVERROR@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_16
.LBB0_10:
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 24(%rax)
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 28(%rax)
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$1048576, 28(%rcx)              # imm = 0x100000
	movb	%al, -53(%rbp)                  # 1-byte Spill
	jge	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$1048576, 24(%rax)              # imm = 0x100000
	setl	%al
	movb	%al, -53(%rbp)                  # 1-byte Spill
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=1
	movb	-53(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_14
	jmp	.LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, 24(%rax)
	jmp	.LBB0_11
.LBB0_15:
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-16(%rbp), %rax
	movl	28(%rax), %eax
	movq	-16(%rbp), %rcx
	cltd
	idivl	24(%rcx)
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 36(%rax)
	movq	-16(%rbp), %rax
	movl	28(%rax), %eax
	movq	-16(%rbp), %rcx
	cltd
	idivl	24(%rcx)
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cltd
	idivl	4(%rcx)
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	imull	40(%rax), %ecx
	movl	%ecx, 40(%rax)
	movl	-36(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rdi
	addq	$48, %rdi
	callq	av_freep@PLT
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movl	$0, -4(%rbp)
.LBB0_16:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ENOMEM
	.p2align	2
ENOMEM:
	.long	0                               # 0x0
	.globl	INT32_MAX
	.p2align	2
INT32_MAX:
	.long	0                               # 0x0
	.globl	EINVAL
	.p2align	2
EINVAL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rebuild_filter_bank_with_compensation
	.addrsig_sym av_assert0
	.addrsig_sym av_calloc
	.addrsig_sym AVERROR
	.addrsig_sym build_filter
	.addrsig_sym av_freep
	.addrsig_sym memcpy
	.addrsig_sym av_reduce
	.addrsig_sym ENOMEM
	.addrsig_sym INT32_MAX
	.addrsig_sym EINVAL
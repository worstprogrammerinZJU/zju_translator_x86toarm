	.text
	.p2align	4, 0x90                         # -- Begin function quorem
quorem:                                 # @quorem
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_27
.LBB0_2:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movq	-80(%rbp), %rcx
	movl	(%rcx), %ecx
	addl	$1, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB0_14
# %bb.3:
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -72(%rbp)
	movl	(%rax), %eax
	imull	-60(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	sarl	$16, %eax
	movl	%eax, -88(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	-96(%rbp), %ecx
	andl	$65535, %ecx                    # imm = 0xFFFF
	subl	%ecx, %eax
	subl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	andl	$65536, %eax                    # imm = 0x10000
	sarl	$16, %eax
	movl	%eax, -84(%rbp)
	movl	-92(%rbp), %ecx
	andl	$65535, %ecx                    # imm = 0xFFFF
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, (%rax)
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jbe	.LBB0_4
# %bb.6:
	movq	-56(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_13
# %bb.7:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rcx
	addq	$-4, %rcx
	movq	%rcx, -56(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	-48(%rbp), %rcx
	movb	%al, -97(%rbp)                  # 1-byte Spill
	jbe	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, (%rax)
	setne	%al
	xorb	$-1, %al
	movb	%al, -97(%rbp)                  # 1-byte Spill
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	movb	-97(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_11
	jmp	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_8
.LBB0_12:
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	cmp@PLT
	cmpq	$0, %rax
	jl	.LBB0_26
# %bb.15:
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -72(%rbp)
	movl	(%rax), %eax
	addl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	sarl	$16, %eax
	movl	%eax, -88(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	-96(%rbp), %ecx
	andl	$65535, %ecx                    # imm = 0xFFFF
	subl	%ecx, %eax
	subl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	andl	$65536, %eax                    # imm = 0x10000
	sarl	$16, %eax
	movl	%eax, -84(%rbp)
	movl	-92(%rbp), %ecx
	andl	$65535, %ecx                    # imm = 0xFFFF
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, (%rax)
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jbe	.LBB0_16
# %bb.18:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_25
# %bb.19:
	jmp	.LBB0_20
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rcx
	addq	$-4, %rcx
	movq	%rcx, -56(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	-48(%rbp), %rcx
	movb	%al, -98(%rbp)                  # 1-byte Spill
	jbe	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, (%rax)
	setne	%al
	xorb	$-1, %al
	movb	%al, -98(%rbp)                  # 1-byte Spill
.LBB0_22:                               #   in Loop: Header=BB0_20 Depth=1
	movb	-98(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_23
	jmp	.LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_20
.LBB0_24:
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_25:
	jmp	.LBB0_26
.LBB0_26:
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_27:
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	FFFFFFFF
	.p2align	2
FFFFFFFF:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym quorem
	.addrsig_sym cmp
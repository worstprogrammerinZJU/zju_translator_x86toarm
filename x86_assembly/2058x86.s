	.text
	.p2align	4, 0x90                         # -- Begin function read_u32
read_u32:                               # @read_u32
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, errno(%rip)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$32, %eax
	jne	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$48, %eax
	jl	.LBB0_5
# %bb.4:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	$57, %eax
	cmpl	%ecx, %eax
	jge	.LBB0_6
.LBB0_5:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_20
.LBB0_6:
	movq	-24(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movl	$10, %edx
	callq	strtoumax@PLT
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_8
# %bb.7:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_20
.LBB0_8:
	cmpq	$0, errno(%rip)
	je	.LBB0_10
# %bb.9:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_20
.LBB0_10:
	cmpq	$0, -32(%rbp)
	jne	.LBB0_13
# %bb.11:
	movq	-48(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_13
# %bb.12:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_20
.LBB0_13:
	movq	-40(%rbp), %rax
	cmpq	UINT32_MAX(%rip), %rax
	jle	.LBB0_15
# %bb.14:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_20
.LBB0_15:
	cmpq	$0, -16(%rbp)
	je	.LBB0_17
# %bb.16:
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_17:
	cmpq	$0, -32(%rbp)
	je	.LBB0_19
# %bb.18:
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_19:
	movl	$0, -4(%rbp)
.LBB0_20:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	errno
	.p2align	3
errno:
	.quad	0                               # 0x0
	.globl	UINT32_MAX
	.p2align	3
UINT32_MAX:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_u32
	.addrsig_sym strtoumax
	.addrsig_sym errno
	.addrsig_sym UINT32_MAX
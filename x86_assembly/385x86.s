	.text
	.globl	forward_cost_layer              # -- Begin function forward_cost_layer
	.p2align	4, 0x90
forward_cost_layer:                     # @forward_cost_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_17
.LBB0_2:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	cmpq	MASKED(%rip), %rax
	jne	.LBB0_10
# %bb.3:
	movl	$0, -20(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdx                 # 8-byte Reload
	movl	-20(%rbp), %eax
	movl	8(%rdx), %ecx
	imull	12(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpq	SECRET_NUM(%rip), %rax
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movq	SECRET_NUM(%rip), %rdx
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_4
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	cmpq	SMOOTH(%rip), %rax
	jne	.LBB0_12
# %bb.11:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %edi
	imull	12(%rax), %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	32(%rax), %ecx
	movl	16(%rax), %r8d
	callq	smooth_l1_cpu@PLT
	jmp	.LBB0_16
.LBB0_12:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	cmpq	L1(%rip), %rax
	jne	.LBB0_14
# %bb.13:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %edi
	imull	12(%rax), %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	32(%rax), %ecx
	movl	16(%rax), %r8d
	callq	l1_cpu@PLT
	jmp	.LBB0_15
.LBB0_14:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %edi
	imull	12(%rax), %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	32(%rax), %ecx
	movl	16(%rax), %r8d
	callq	l2_cpu@PLT
.LBB0_15:
	jmp	.LBB0_16
.LBB0_16:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	16(%rax), %edi
	movl	8(%rax), %esi
	imull	12(%rax), %esi
	callq	sum_array@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	24(%rax), %rax
	movl	%ecx, (%rax)
.LBB0_17:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	MASKED
	.p2align	3
MASKED:
	.quad	0                               # 0x0
	.globl	SECRET_NUM
	.p2align	3
SECRET_NUM:
	.quad	0                               # 0x0
	.globl	SMOOTH
	.p2align	3
SMOOTH:
	.quad	0                               # 0x0
	.globl	L1
	.p2align	3
L1:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym smooth_l1_cpu
	.addrsig_sym l1_cpu
	.addrsig_sym l2_cpu
	.addrsig_sym sum_array
	.addrsig_sym MASKED
	.addrsig_sym SECRET_NUM
	.addrsig_sym SMOOTH
	.addrsig_sym L1
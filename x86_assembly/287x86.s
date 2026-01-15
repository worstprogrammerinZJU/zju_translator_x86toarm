	.text
	.p2align	4, 0x90                         # -- Begin function gen_const_array
gen_const_array:                        # @gen_const_array
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)                 # 8-byte Spill
	movq	%rdi, -64(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$1, -12(%rbp)
	movb	$0, %al
	callq	jv_array@PLT
	movl	%eax, %ecx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, -16(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_22
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	FORK(%rip), %rax
	jne	.LBB0_8
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	JUMP(%rip), %rax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	cmpl	$0, %eax
	jle	.LBB0_7
.LBB0_6:
	movl	$0, -12(%rbp)
	jmp	.LBB0_22
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_20
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -4(%rbp)
	je	.LBB0_14
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	LOADK(%rip), %rax
	jne	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	cmpq	JUMP(%rip), %rax
	je	.LBB0_13
# %bb.12:
	movl	$0, -12(%rbp)
	jmp	.LBB0_22
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rax
	movl	16(%rax), %edi
	callq	jv_copy@PLT
	movl	-76(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_array_append@PLT
	movl	%eax, -16(%rbp)
	jmp	.LBB0_19
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JUMP(%rip), %rax
	jne	.LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	LOADK(%rip), %rax
	je	.LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -4(%rbp)
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_22:
	cmpl	$0, -4(%rbp)
	je	.LBB0_28
# %bb.23:
	cmpl	$0, -12(%rbp)
	je	.LBB0_28
# %bb.24:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, 8(%rax)
	je	.LBB0_26
# %bb.25:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	LOADK(%rip), %rax
	jne	.LBB0_28
.LBB0_26:
	movl	-16(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	-8(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_28
# %bb.27:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	block_free@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movl	-16(%rbp), %esi
	callq	gen_const@PLT
	jmp	.LBB0_29
.LBB0_28:
	movl	-16(%rbp), %edi
	callq	jv_free@PLT
	leaq	-48(%rbp), %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-32(%rbp), %rcx
	movq	%rcx, 16(%rax)
.LBB0_29:
	movq	-64(%rbp), %rax                 # 8-byte Reload
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	FORK
	.p2align	3
FORK:
	.quad	0                               # 0x0
	.globl	JUMP
	.p2align	3
JUMP:
	.quad	0                               # 0x0
	.globl	LOADK
	.p2align	3
LOADK:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_const_array
	.addrsig_sym jv_array
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_array_append
	.addrsig_sym block_free
	.addrsig_sym gen_const
	.addrsig_sym jv_free
	.addrsig_sym FORK
	.addrsig_sym JUMP
	.addrsig_sym LOADK
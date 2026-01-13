	.text
	.globl	locfile_init                    # -- Begin function locfile_init
	.p2align	4, 0x90
locfile_init:                           # @locfile_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$48, %edi
	callq	jv_mem_alloc@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-16(%rbp), %rdi
	callq	jv_string@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 32(%rax)
	movl	-28(%rbp), %edi
	callq	jv_mem_alloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	memcpy@PLT
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-40(%rbp), %rax
	movl	$1, 8(%rax)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$10, %eax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 4(%rax)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movq	-40(%rbp), %rax
	movl	4(%rax), %esi
	addl	$1, %esi
	movl	$4, %edi
	callq	jv_mem_calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, (%rax)
	movl	$1, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_12
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$10, %eax
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-52(%rbp), %edx
	addl	$1, %edx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-48(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_7
.LBB0_12:
	movl	-28(%rbp), %edx
	addl	$1, %edx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movslq	4(%rcx), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_alloc
	.addrsig_sym jv_string
	.addrsig_sym memcpy
	.addrsig_sym jv_mem_calloc
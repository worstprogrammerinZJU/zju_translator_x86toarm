	.text
	.globl	ctbench_heap_insert             # -- Begin function ctbench_heap_insert
	.p2align	4, 0x90
ctbench_heap_insert:                    # @ctbench_heap_insert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %edx
	xorl	%r8d, %r8d
	movl	%edx, %edi
	movl	%r8d, %esi
	movl	%r8d, %ecx
	callq	make_job@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	xorl	%ecx, %ecx
	subl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movl	%ecx, 4(%rax)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	$0, -40(%rbp)
	movl	job_setpos(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	job_pri_less(%rip), %eax
	movl	%eax, -28(%rbp)
	movb	$0, %al
	callq	ctresettimer@PLT
	movl	$0, -20(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	leaq	-40(%rbp), %rdi
	callq	heapinsert@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movb	$0, %al
	callq	ctstoptimer@PLT
	movl	$0, -20(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	leaq	-40(%rbp), %rdi
	xorl	%esi, %esi
	callq	heapremove@PLT
	movl	%eax, %edi
	callq	job_free@PLT
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	movq	-40(%rbp), %rdi
	callq	free@PLT
	movq	-16(%rbp), %rdi
	callq	free@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	job_setpos
	.p2align	2
job_setpos:
	.long	0                               # 0x0
	.globl	job_pri_less
	.p2align	2
job_pri_less:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym make_job
	.addrsig_sym assert
	.addrsig_sym ctresettimer
	.addrsig_sym heapinsert
	.addrsig_sym ctstoptimer
	.addrsig_sym job_free
	.addrsig_sym heapremove
	.addrsig_sym free
	.addrsig_sym job_setpos
	.addrsig_sym job_pri_less
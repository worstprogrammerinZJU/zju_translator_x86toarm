	.text
	.globl	resize_route_layer              # -- Begin function resize_route_layer
	.p2align	4, 0x90
resize_route_layer:                     # @resize_route_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-56(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 24(%rax)
	movl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 32(%rax)
	movl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movl	%ecx, (%rax)
	movl	$1, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-60(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-72(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	32(%rax), %ecx
	movl	%ecx, 32(%rax)
	movl	-72(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movslq	-20(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-96(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jne	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-80(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	24(%rax), %rcx
	movq	%rcx, 24(%rax)
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-96(%rbp), %esi
	movq	-88(%rbp), %rdx
	movl	-56(%rbp), %ecx
	movq	-48(%rbp), %r8
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 52(%rax)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	56(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	56(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 80(%rax)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d %d, %d %d\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym realloc
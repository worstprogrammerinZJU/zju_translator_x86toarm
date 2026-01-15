	.text
	.p2align	4, 0x90                         # -- Begin function base64_decode_block_signed
base64_decode_block_signed:             # @base64_decode_block_signed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)                 # 8-byte Spill
	subl	$3, %eax
	ja	.LBB0_26
# %bb.28:
	movq	-72(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	jmp	.LBB0_2
.LBB0_2:
	jmp	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_5
# %bb.4:
	movq	-40(%rbp), %rax
	movl	$131, 4(%rax)
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_27
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -48(%rbp)
	movl	(%rax), %edi
	callq	base64_decode_value_signed@PLT
	movl	%eax, -60(%rbp)
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB0_3
# %bb.7:
	movl	-60(%rbp), %ecx
	andl	$63, %ecx
	shll	$2, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_11
# %bb.10:
	movq	-40(%rbp), %rax
	movl	$130, 4(%rax)
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_27
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -48(%rbp)
	movl	(%rax), %edi
	callq	base64_decode_value_signed@PLT
	movl	%eax, -60(%rbp)
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB0_9
# %bb.13:
	movl	-60(%rbp), %ecx
	andl	$48, %ecx
	sarl	$4, %ecx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, -56(%rbp)
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-60(%rbp), %ecx
	andl	$15, %ecx
	shll	$4, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_17
# %bb.16:
	movq	-40(%rbp), %rax
	movl	$129, 4(%rax)
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_27
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -48(%rbp)
	movl	(%rax), %edi
	callq	base64_decode_value_signed@PLT
	movl	%eax, -60(%rbp)
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB0_15
# %bb.19:
	movl	-60(%rbp), %ecx
	andl	$60, %ecx
	sarl	$2, %ecx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, -56(%rbp)
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-60(%rbp), %ecx
	andl	$3, %ecx
	shll	$6, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_20:
	jmp	.LBB0_21
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_23
# %bb.22:
	movq	-40(%rbp), %rax
	movl	$128, 4(%rax)
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_27
.LBB0_23:                               #   in Loop: Header=BB0_21 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -48(%rbp)
	movl	(%rax), %edi
	callq	base64_decode_value_signed@PLT
	movl	%eax, -60(%rbp)
# %bb.24:                               #   in Loop: Header=BB0_21 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB0_21
# %bb.25:
	movl	-60(%rbp), %ecx
	andl	$63, %ecx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, -56(%rbp)
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_1
.LBB0_26:
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
.LBB0_27:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_decode_block_signed
	.addrsig_sym base64_decode_value_signed
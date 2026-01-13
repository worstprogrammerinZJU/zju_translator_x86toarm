	.text
	.globl	stack_restore                   # -- Begin function stack_restore
	.p2align	4, 0x90
stack_restore:                          # @stack_restore
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	stack_pop_will_free@PLT
	cmpq	$0, %rax
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_2
	jmp	.LBB0_9
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	stack_pop_will_free@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	stack_pop@PLT
	movl	%eax, %edi
	callq	jv_free@PLT
	jmp	.LBB0_8
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	stack_pop_will_free@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	frame_pop@PLT
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%edi, %edi
	callq	assert@PLT
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_9:
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_11
# %bb.10:
	movq	$0, -8(%rbp)
	jmp	.LBB0_15
.LBB0_11:
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	stack_block@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	36(%rax), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	jne	.LBB0_13
# %bb.12:
	cmpl	$0, -36(%rbp)
	setge	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movl	36(%rax), %edi
	movl	-36(%rbp), %edx
	xorl	%esi, %esi
	callq	jv_array_slice@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 36(%rax)
	jmp	.LBB0_14
.LBB0_13:
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
.LBB0_14:
	movq	-16(%rbp), %rax
	movl	32(%rax), %edi
	callq	jv_free@PLT
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movl	$40, %edx
	callq	stack_pop_block@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_15:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stack_pop_will_free
	.addrsig_sym jv_free
	.addrsig_sym stack_pop
	.addrsig_sym frame_pop
	.addrsig_sym assert
	.addrsig_sym stack_block
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_slice
	.addrsig_sym stack_pop_block
	.addrsig_sym JV_KIND_ARRAY
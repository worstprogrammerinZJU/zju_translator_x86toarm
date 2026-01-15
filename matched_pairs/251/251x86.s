	.text
	.globl	block_bind_library              # -- Begin function block_bind_library
	.p2align	4, 0x90
block_bind_library:                     # @block_bind_library
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	OP_HAS_BINDING(%rip), %eax
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -44(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movq	-40(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, -92(%rbp)                 # 4-byte Spill
.LBB0_3:
	movl	-92(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %edi
	addl	$2, %edi
	addl	$1, %edi
	callq	jv_mem_alloc@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	cmpq	$0, -40(%rbp)
	je	.LBB0_6
# %bb.4:
	movq	-40(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_6
# %bb.5:
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	strcpy@PLT
	movq	-56(%rbp), %rdi
	movslq	-48(%rbp), %rax
	addq	%rax, %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcpy@PLT
	movl	-48(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -48(%rbp)
.LBB0_6:
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rdi
	callq	block_has_only_binders@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB0_12
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen@PLT
	movl	%eax, %edi
	addl	-48(%rbp), %edi
	addl	$1, %edi
	callq	jv_mem_alloc@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	strcpy@PLT
	movq	-88(%rbp), %rdi
	movslq	-48(%rbp), %rax
	addq	%rax, %rdi
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcpy@PLT
	movq	-64(%rbp), %rax
	movl	8(%rax), %edi
	callq	opcode_describe@PLT
	movl	(%rax), %eax
	movl	OP_HAS_VARIABLE(%rip), %ecx
	orl	OP_HAS_CONSTANT(%rip), %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	OP_HAS_VARIABLE(%rip), %eax
	orl	OP_HAS_BINDING(%rip), %eax
	movl	%eax, -68(%rbp)
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-64(%rbp), %rdi
	callq	inst_block@PLT
	movl	%eax, %edi
	movl	-68(%rbp), %edx
	movq	-24(%rbp), %rsi
	xorl	%ecx, %ecx
	callq	block_bind_subblock@PLT
	movq	%rax, %rcx
	movslq	-44(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -44(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-88(%rbp), %rdi
	callq	free@PLT
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_7
.LBB0_12:
	movq	-56(%rbp), %rdi
	callq	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	OP_HAS_BINDING
	.p2align	2
OP_HAS_BINDING:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"::"
	.bss
	.globl	OP_HAS_VARIABLE
	.p2align	2
OP_HAS_VARIABLE:
	.long	0                               # 0x0
	.globl	OP_HAS_CONSTANT
	.p2align	2
OP_HAS_CONSTANT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym jv_mem_alloc
	.addrsig_sym strcpy
	.addrsig_sym assert
	.addrsig_sym block_has_only_binders
	.addrsig_sym opcode_describe
	.addrsig_sym block_bind_subblock
	.addrsig_sym inst_block
	.addrsig_sym free
	.addrsig_sym OP_HAS_BINDING
	.addrsig_sym OP_HAS_VARIABLE
	.addrsig_sym OP_HAS_CONSTANT
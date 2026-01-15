	.text
	.globl	stack_save                      # -- Begin function stack_save
	.p2align	4, 0x90
stack_save:                             # @stack_save
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdx, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	movq	-16(%rbp), %rax
	movl	20(%rax), %esi
	movl	$32, %edx
	callq	stack_push_block@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	movq	-16(%rbp), %rax
	movl	20(%rax), %esi
	callq	stack_block@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	xorl	%eax, %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_3:
	movl	-36(%rbp), %ecx                 # 4-byte Reload
	movq	-32(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-8(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
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
	.addrsig_sym stack_push_block
	.addrsig_sym stack_block
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym JV_KIND_ARRAY
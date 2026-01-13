	.text
	.p2align	4, 0x90                         # -- Begin function read_initializer_elem
read_initializer_elem:                  # @read_initializer_elem
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	$61, %edi
	callq	next_token@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_ARRAY(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_STRUCT(%rip), %rax
	jne	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	read_initializer_list@PLT
	jmp	.LBB0_7
.LBB0_3:
	movl	$123, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	$1, %ecx
	callq	read_initializer_elem
	movl	$125, %edi
	callq	expect@PLT
	jmp	.LBB0_6
.LBB0_5:
	movb	$0, %al
	callq	read_assignment_expr@PLT
	movl	%eax, %edi
	callq	conv@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	callq	ensure_assignable@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	ast_init@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_ARRAY
	.p2align	3
KIND_ARRAY:
	.quad	0                               # 0x0
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_initializer_elem
	.addrsig_sym next_token
	.addrsig_sym read_initializer_list
	.addrsig_sym expect
	.addrsig_sym conv
	.addrsig_sym read_assignment_expr
	.addrsig_sym ensure_assignable
	.addrsig_sym vec_push
	.addrsig_sym ast_init
	.addrsig_sym KIND_ARRAY
	.addrsig_sym KIND_STRUCT
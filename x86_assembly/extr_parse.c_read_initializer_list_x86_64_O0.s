	.text
	.p2align	4, 0x90                         # -- Begin function read_initializer_list
read_initializer_list:                  # @read_initializer_list
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	is_string@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.1:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TSTRING(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movl	-20(%rbp), %ecx
	callq	assign_string@PLT
	jmp	.LBB0_13
.LBB0_3:
	movq	-32(%rbp), %rdi
	movl	$123, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.4:
	movb	$0, %al
	callq	peek@PLT
	movq	(%rax), %rax
	cmpq	TSTRING(%rip), %rax
	jne	.LBB0_6
# %bb.5:
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movl	-20(%rbp), %ecx
	callq	assign_string@PLT
	movl	$125, %edi
	callq	expect@PLT
	jmp	.LBB0_13
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	movq	-32(%rbp), %rdi
	callq	unget_token@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_ARRAY(%rip), %rax
	jne	.LBB0_9
# %bb.8:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	read_array_initializer@PLT
	jmp	.LBB0_13
.LBB0_9:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_STRUCT(%rip), %rax
	jne	.LBB0_11
# %bb.10:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	read_struct_initializer@PLT
	jmp	.LBB0_12
.LBB0_11:
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	make_array_type@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	read_array_initializer@PLT
.LBB0_12:
	jmp	.LBB0_13
.LBB0_13:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.quad	0                               # 0x0
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
	.addrsig_sym read_initializer_list
	.addrsig_sym get
	.addrsig_sym is_string
	.addrsig_sym assign_string
	.addrsig_sym is_keyword
	.addrsig_sym peek
	.addrsig_sym expect
	.addrsig_sym unget_token
	.addrsig_sym read_array_initializer
	.addrsig_sym read_struct_initializer
	.addrsig_sym make_array_type
	.addrsig_sym TSTRING
	.addrsig_sym KIND_ARRAY
	.addrsig_sym KIND_STRUCT
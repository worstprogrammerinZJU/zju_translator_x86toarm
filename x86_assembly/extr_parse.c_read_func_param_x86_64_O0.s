	.text
	.p2align	4, 0x90                         # -- Begin function read_func_param
read_func_param:                        # @read_func_param
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	type_int(%rip), %rax
	movq	%rax, -32(%rbp)
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, %edi
	callq	is_type@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	leaq	-24(%rbp), %rdi
	callq	read_decl_spec@PLT
	movq	%rax, -32(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	cmpl	$0, -20(%rbp)
	je	.LBB0_4
# %bb.3:
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, %edi
	callq	tok2s@PLT
	movl	-44(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	cmpl	$0, -20(%rbp)
	je	.LBB0_7
# %bb.6:
	movl	DECL_PARAM_TYPEONLY(%rip), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	jmp	.LBB0_8
.LBB0_7:
	movl	DECL_PARAM(%rip), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
.LBB0_8:
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movl	-68(%rbp), %ecx                 # 4-byte Reload
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	read_declarator@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_ARRAY(%rip), %rax
	jne	.LBB0_10
# %bb.9:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	make_ptr_type@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_13
.LBB0_10:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_FUNC(%rip), %rax
	jne	.LBB0_12
# %bb.11:
	movq	-40(%rbp), %rdi
	callq	make_ptr_type@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_13
.LBB0_12:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_13:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	type_int
	.p2align	3
type_int:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"type expected, but got %s"
	.bss
	.globl	DECL_PARAM_TYPEONLY
	.p2align	2
DECL_PARAM_TYPEONLY:
	.long	0                               # 0x0
	.globl	DECL_PARAM
	.p2align	2
DECL_PARAM:
	.long	0                               # 0x0
	.globl	KIND_ARRAY
	.p2align	3
KIND_ARRAY:
	.quad	0                               # 0x0
	.globl	KIND_FUNC
	.p2align	3
KIND_FUNC:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_func_param
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_decl_spec
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym read_declarator
	.addrsig_sym make_ptr_type
	.addrsig_sym type_int
	.addrsig_sym DECL_PARAM_TYPEONLY
	.addrsig_sym DECL_PARAM
	.addrsig_sym KIND_ARRAY
	.addrsig_sym KIND_FUNC
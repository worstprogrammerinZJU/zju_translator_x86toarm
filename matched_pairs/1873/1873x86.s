	.text
	.p2align	4, 0x90                         # -- Begin function read_declarator
read_declarator:                        # @read_declarator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$40, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.1:
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, %edi
	callq	is_type@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	read_declarator_func@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_14
.LBB0_3:
	movb	$0, %al
	callq	make_stub_type@PLT
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	read_declarator
	movq	%rax, -56(%rbp)
	movl	$41, %edi
	callq	expect@PLT
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	read_declarator_tail@PLT
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_14
.LBB0_4:
	movl	$42, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movb	$0, %al
	callq	skip_type_qualifiers@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	make_ptr_type@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	read_declarator
	movq	%rax, -8(%rbp)
	jmp	.LBB0_14
.LBB0_6:
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	jne	.LBB0_10
# %bb.7:
	movl	-36(%rbp), %eax
	cmpl	DECL_CAST(%rip), %eax
	jne	.LBB0_9
# %bb.8:
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-64(%rbp), %rdi
	callq	tok2s@PLT
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_9:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	read_declarator_tail@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_14
.LBB0_10:
	movl	-36(%rbp), %eax
	cmpl	DECL_BODY(%rip), %eax
	je	.LBB0_12
# %bb.11:
	movl	-36(%rbp), %eax
	cmpl	DECL_PARAM(%rip), %eax
	jne	.LBB0_13
.LBB0_12:
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	-64(%rbp), %rdi
	callq	tok2s@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.1(%rip), %rsi
	callq	errort@PLT
.LBB0_13:
	movq	-64(%rbp), %rdi
	callq	unget_token@PLT
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	read_declarator_tail@PLT
	movq	%rax, -8(%rbp)
.LBB0_14:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.globl	DECL_CAST
	.p2align	2
DECL_CAST:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"identifier is not expected, but got %s"
	.bss
	.globl	DECL_BODY
	.p2align	2
DECL_BODY:
	.long	0                               # 0x0
	.globl	DECL_PARAM
	.p2align	2
DECL_PARAM:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"identifier, ( or * are expected, but got %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_declarator
	.addrsig_sym next_token
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_declarator_func
	.addrsig_sym make_stub_type
	.addrsig_sym expect
	.addrsig_sym read_declarator_tail
	.addrsig_sym skip_type_qualifiers
	.addrsig_sym make_ptr_type
	.addrsig_sym get
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym unget_token
	.addrsig_sym TIDENT
	.addrsig_sym DECL_CAST
	.addrsig_sym DECL_BODY
	.addrsig_sym DECL_PARAM
	.text
	.p2align	4, 0x90                         # -- Begin function read_func_param_list
read_func_param_list:                   # @read_func_param_list
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movsbl	KVOID(%rip), %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.1:
	movl	$41, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	make_vector@PLT
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	callq	make_func_type@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_16
.LBB0_3:
	movq	-32(%rbp), %rdi
	movl	$41, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	make_vector@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	movl	$1, %ecx
	movl	%ecx, %edx
	callq	make_func_type@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_16
.LBB0_5:
	movq	-32(%rbp), %rdi
	callq	unget_token@PLT
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -40(%rbp)
	movsbl	KELLIPSIS(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.6:
	movq	-40(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_7:
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, %rdi
	callq	is_type@PLT
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.8:
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	callq	read_declarator_params@PLT
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-44(%rbp), %edx
	xorl	%ecx, %ecx
	callq	make_func_type@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_16
.LBB0_9:
	cmpq	$0, -16(%rbp)
	jne	.LBB0_11
# %bb.10:
	movq	-32(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	errort@PLT
.LBB0_11:
	movq	-16(%rbp), %rdi
	callq	read_declarator_params_oldstyle@PLT
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-92(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	movq	-64(%rbp), %rdi
	movl	type_int(%rip), %esi
	callq	vec_push@PLT
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_12
.LBB0_15:
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	make_func_type@PLT
	movq	%rax, -8(%rbp)
.LBB0_16:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KVOID
KVOID:
	.byte	0                               # 0x0
	.globl	KELLIPSIS
KELLIPSIS:
	.byte	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"at least one parameter is required before \"...\""
.L.str.1:
	.asciz	"invalid function definition"
	.bss
	.globl	type_int
	.p2align	2
type_int:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_func_param_list
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym next_token
	.addrsig_sym make_func_type
	.addrsig_sym make_vector
	.addrsig_sym unget_token
	.addrsig_sym peek
	.addrsig_sym errort
	.addrsig_sym is_type
	.addrsig_sym read_declarator_params
	.addrsig_sym read_declarator_params_oldstyle
	.addrsig_sym vec_len
	.addrsig_sym vec_push
	.addrsig_sym KVOID
	.addrsig_sym KELLIPSIS
	.addrsig_sym type_int
	.text
	.p2align	4, 0x90                         # -- Begin function is_funcdef
is_funcdef:                             # @is_funcdef
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	vec_push@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TEOF(%rip), %rax
	jne	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	movl	$59, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	jmp	.LBB0_16
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	is_type@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	movl	$40, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	skip_parentheses@PLT
	jmp	.LBB0_1
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	je	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, %rdi
	movl	$40, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	jne	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_13:
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	get@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
	movq	-8(%rbp), %rdi
	callq	skip_parentheses@PLT
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, %rdi
	movl	$123, %esi
	callq	is_keyword@PLT
	movq	%rax, %rcx
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -25(%rbp)                  # 1-byte Spill
	jne	.LBB0_15
# %bb.14:
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, %rdi
	callq	is_type@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB0_15:
	movb	-25(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
.LBB0_16:
	jmp	.LBB0_17
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	cmpq	$0, %rax
	jle	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movq	-8(%rbp), %rdi
	callq	vec_pop@PLT
	movl	%eax, %edi
	callq	unget_token@PLT
	jmp	.LBB0_17
.LBB0_19:
	movl	-12(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TEOF
	.p2align	3
TEOF:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"premature end of input"
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_funcdef
	.addrsig_sym make_vector
	.addrsig_sym get
	.addrsig_sym vec_push
	.addrsig_sym error
	.addrsig_sym is_keyword
	.addrsig_sym is_type
	.addrsig_sym skip_parentheses
	.addrsig_sym peek
	.addrsig_sym vec_len
	.addrsig_sym unget_token
	.addrsig_sym vec_pop
	.addrsig_sym TEOF
	.addrsig_sym TIDENT
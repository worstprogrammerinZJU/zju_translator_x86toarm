	.text
	.p2align	4, 0x90                         # -- Begin function read_struct_initializer_sub
read_struct_initializer_sub:            # @read_struct_initializer_sub
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movb	$0, %al
	callq	maybe_read_brace@PLT
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	callq	dict_keys@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movl	$125, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.2:
	cmpl	$0, -28(%rbp)
	jne	.LBB0_4
# %bb.3:
	movq	-56(%rbp), %rdi
	callq	unget_token@PLT
.LBB0_4:
	jmp	.LBB0_30
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi
	movl	$46, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi
	movl	$91, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -28(%rbp)
	jne	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -24(%rbp)
	jne	.LBB0_10
# %bb.9:
	movq	-56(%rbp), %rdi
	callq	unget_token@PLT
	jmp	.LBB0_30
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi
	movl	$46, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_22
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	je	.LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	-56(%rbp), %rdi
	callq	tok2s@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	movq	-64(%rbp), %rsi
	callq	dict_get@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movq	-56(%rbp), %rdi
	callq	tok2s@PLT
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.1(%rip), %rsi
	callq	errort@PLT
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	callq	dict_keys@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_17:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, -100(%rbp)                # 4-byte Spill
	movq	-40(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-100(%rbp), %eax                # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=2
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	%esi, %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	callq	vec_get@PLT
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_21
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	jmp	.LBB0_17
.LBB0_21:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -24(%rbp)
	jmp	.LBB0_25
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	unget_token@PLT
	movl	-44(%rbp), %eax
	movl	%eax, -104(%rbp)                # 4-byte Spill
	movq	-40(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-104(%rbp), %eax                # 4-byte Reload
	cmpl	%ecx, %eax
	jne	.LBB0_24
# %bb.23:
	jmp	.LBB0_28
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	%esi, %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	callq	vec_get@PLT
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	movq	-64(%rbp), %rsi
	callq	dict_get@PLT
	movq	%rax, -72(%rbp)
.LBB0_25:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	8(%rax), %rdx
	movl	-24(%rbp), %ecx
	callq	read_initializer_elem@PLT
	movb	$0, %al
	callq	maybe_skip_comma@PLT
	movl	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_27
# %bb.26:
	jmp	.LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_28:
	cmpl	$0, -28(%rbp)
	je	.LBB0_30
# %bb.29:
	movb	$0, %al
	callq	skip_to_brace@PLT
.LBB0_30:
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malformed desginated initializer: %s"
.L.str.1:
	.asciz	"field does not exist: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_struct_initializer_sub
	.addrsig_sym maybe_read_brace
	.addrsig_sym dict_keys
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym unget_token
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym dict_get
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym strcmp
	.addrsig_sym read_initializer_elem
	.addrsig_sym maybe_skip_comma
	.addrsig_sym skip_to_brace
	.addrsig_sym TIDENT
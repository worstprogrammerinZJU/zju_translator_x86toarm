	.text
	.p2align	4, 0x90                         # -- Begin function read_array_initializer_sub
read_array_initializer_sub:             # @read_array_initializer_sub
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movb	$0, %al
	callq	maybe_read_brace@PLT
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	cmpl	$0, -32(%rbp)
	movb	%al, -61(%rbp)                  # 1-byte Spill
	jne	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	setl	%al
	movb	%al, -61(%rbp)                  # 1-byte Spill
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-61(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_4
	jmp	.LBB0_22
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	$125, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.5:
	cmpl	$0, -28(%rbp)
	jne	.LBB0_7
# %bb.6:
	movq	-48(%rbp), %rdi
	callq	unget_token@PLT
.LBB0_7:
	jmp	.LBB0_25
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rdi
	movl	$46, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rdi
	movl	$91, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -28(%rbp)
	jne	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -24(%rbp)
	jne	.LBB0_13
# %bb.12:
	movq	-48(%rbp), %rdi
	callq	unget_token@PLT
	jmp	.LBB0_27
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rdi
	movl	$91, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_19
# %bb.14:                               #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -56(%rbp)
	movb	$0, %al
	callq	read_intexpr@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jl	.LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -32(%rbp)
	jne	.LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	$93, %edi
	callq	expect@PLT
	movl	$1, -24(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	unget_token@PLT
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-20(%rbp), %edx
	movl	-36(%rbp), %eax
	imull	-40(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %ecx
	callq	read_initializer_elem@PLT
	movb	$0, %al
	callq	maybe_skip_comma@PLT
	movl	$0, -24(%rbp)
# %bb.21:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_22:
	cmpl	$0, -28(%rbp)
	je	.LBB0_24
# %bb.23:
	movb	$0, %al
	callq	skip_to_brace@PLT
.LBB0_24:
	jmp	.LBB0_25
.LBB0_25:
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB0_27
# %bb.26:
	movl	-40(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-36(%rbp), %ecx
	imull	-40(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
.LBB0_27:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"array designator exceeds array bounds: %d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_array_initializer_sub
	.addrsig_sym maybe_read_brace
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym unget_token
	.addrsig_sym peek
	.addrsig_sym read_intexpr
	.addrsig_sym errort
	.addrsig_sym expect
	.addrsig_sym read_initializer_elem
	.addrsig_sym maybe_skip_comma
	.addrsig_sym skip_to_brace
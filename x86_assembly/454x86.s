	.text
	.globl	read_token                      # -- Begin function read_token
	.p2align	4, 0x90
read_token:                             # @read_token
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	read_expand@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	$35, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	read_directive@PLT
	jmp	.LBB0_1
.LBB0_5:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	MIN_CPP_TOKEN(%rip), %rax
	setl	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rdi
	callq	maybe_convert_keyword@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	MIN_CPP_TOKEN
	.p2align	3
MIN_CPP_TOKEN:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_expand
	.addrsig_sym is_keyword
	.addrsig_sym read_directive
	.addrsig_sym assert
	.addrsig_sym maybe_convert_keyword
	.addrsig_sym MIN_CPP_TOKEN
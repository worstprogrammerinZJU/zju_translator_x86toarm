	.text
	.p2align	4, 0x90                         # -- Begin function join_paths
join_paths:                             # @join_paths
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	make_buffer@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-24(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	vec_get@PLT
	movl	%eax, %edi
	callq	tok2s@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	buf_printf@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	buf_body@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym join_paths
	.addrsig_sym make_buffer
	.addrsig_sym vec_len
	.addrsig_sym buf_printf
	.addrsig_sym tok2s
	.addrsig_sym vec_get
	.addrsig_sym buf_body
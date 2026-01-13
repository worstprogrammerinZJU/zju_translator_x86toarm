	.text
	.p2align	4, 0x90                         # -- Begin function a2s_declinit
a2s_declinit:                           # @a2s_declinit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-36(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rdi
	callq	node2s@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" "
.L.str.1:
	.asciz	"%s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym a2s_declinit
	.addrsig_sym vec_len
	.addrsig_sym buf_printf
	.addrsig_sym vec_get
	.addrsig_sym node2s
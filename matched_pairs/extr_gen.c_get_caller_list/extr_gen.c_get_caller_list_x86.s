	.text
	.p2align	4, 0x90                         # -- Begin function get_caller_list
get_caller_list:                        # @get_caller_list
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, %al
	callq	make_buffer@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movl	functions(%rip), %edi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-16(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -12(%rbp)
	jle	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	functions(%rip), %edi
	movl	-12(%rbp), %esi
	callq	vec_get@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	callq	buf_write@PLT
	movq	-8(%rbp), %rdi
	callq	buf_body@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	functions
	.p2align	2
functions:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" -> "
.L.str.1:
	.asciz	"%s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_caller_list
	.addrsig_sym make_buffer
	.addrsig_sym vec_len
	.addrsig_sym buf_printf
	.addrsig_sym vec_get
	.addrsig_sym buf_write
	.addrsig_sym buf_body
	.addrsig_sym functions
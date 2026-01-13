	.text
	.p2align	4, 0x90                         # -- Begin function emit_data_addr
emit_data_addr:                         # @emit_data_addr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	subl	$128, %eax
	je	.LBB0_1
	jmp	.LBB0_5
.LBB0_5:
	movl	-28(%rbp), %eax                 # 4-byte Reload
	subl	$129, %eax
	je	.LBB0_2
	jmp	.LBB0_3
.LBB0_1:
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %esi
	addl	$1, %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-24(%rbp), %rdi
	callq	emit_label@PLT
	movq	-8(%rbp), %rax
	movl	24(%rax), %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %esi
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	xorl	%edx, %edx
	callq	do_emit_data@PLT
	movl	-12(%rbp), %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-24(%rbp), %rsi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_4
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_4
.LBB0_3:
	leaq	.L.str.2(%rip), %rdi
	callq	error@PLT
.LBB0_4:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".data %d"
.L.str.1:
	.asciz	".quad %s"
.L.str.2:
	.asciz	"internal error"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_data_addr
	.addrsig_sym make_label
	.addrsig_sym emit
	.addrsig_sym emit_label
	.addrsig_sym do_emit_data
	.addrsig_sym error
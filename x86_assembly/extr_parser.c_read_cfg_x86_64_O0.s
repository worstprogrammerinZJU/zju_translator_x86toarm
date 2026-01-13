	.text
	.globl	read_cfg                        # -- Begin function read_cfg
	.p2align	4, 0x90
read_cfg:                               # @read_cfg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	file_error@PLT
.LBB0_2:
	movl	$0, -28(%rbp)
	movb	$0, %al
	callq	make_list@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	fgetl@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB0_11
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	strip@PLT
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	testl	%eax, %eax
	je	.LBB0_6
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-52(%rbp), %eax                 # 4-byte Reload
	subl	$35, %eax
	je	.LBB0_6
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-52(%rbp), %eax                 # 4-byte Reload
	subl	$59, %eax
	je	.LBB0_6
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-52(%rbp), %eax                 # 4-byte Reload
	subl	$91, %eax
	jne	.LBB0_7
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$16, %edi
	callq	malloc@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	list_insert@PLT
	movb	$0, %al
	callq	make_list@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_10
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rdi
	callq	free@PLT
	jmp	.LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	callq	read_option@PLT
	cmpl	$0, %eax
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	stderr(%rip), %edi
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rcx
	leaq	.L.str.1(%rip), %rsi
	callq	fprintf@PLT
	movq	-24(%rbp), %rdi
	callq	free@PLT
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_11:
	movq	-16(%rbp), %rdi
	callq	fclose@PLT
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Config file error line %d, could parse: %s\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym make_list
	.addrsig_sym fgetl
	.addrsig_sym strip
	.addrsig_sym malloc
	.addrsig_sym list_insert
	.addrsig_sym free
	.addrsig_sym read_option
	.addrsig_sym fprintf
	.addrsig_sym fclose
	.addrsig_sym stderr
	.text
	.p2align	4, 0x90                         # -- Begin function read_number
read_number:                            # @read_number
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strpbrk@PLT
	movq	%rax, %rcx
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -21(%rbp)                  # 1-byte Spill
	jne	.LBB0_4
# %bb.1:
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$2, %edx
	callq	strncasecmp@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -22(%rbp)                  # 1-byte Spill
	je	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strpbrk@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -22(%rbp)                  # 1-byte Spill
.LBB0_3:
	movb	-22(%rbp), %al                  # 1-byte Reload
	movb	%al, -21(%rbp)                  # 1-byte Spill
.LBB0_4:
	movb	-21(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rdi
	callq	read_float@PLT
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jmp	.LBB0_7
.LBB0_6:
	movq	-8(%rbp), %rdi
	callq	read_int@PLT
	movq	%rax, -32(%rbp)                 # 8-byte Spill
.LBB0_7:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".pP"
.L.str.1:
	.asciz	"0x"
.L.str.2:
	.asciz	"eE"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_number
	.addrsig_sym strpbrk
	.addrsig_sym strncasecmp
	.addrsig_sym read_float
	.addrsig_sym read_int
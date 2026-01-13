	.text
	.globl	mkstemp                         # -- Begin function mkstemp
	.p2align	4, 0x90
mkstemp:                                # @mkstemp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, -16(%rbp)
	movl	$5, -20(%rbp)
	movq	-16(%rbp), %rdi
	addq	$1, %rdi
	callq	alloca@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	strcpy@PLT
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	strcpy@PLT
	movq	-8(%rbp), %rdi
	callq	mktemp@PLT
	movq	-8(%rbp), %rdi
	movl	O_CREAT(%rip), %esi
	orl	O_EXCL(%rip), %esi
	orl	O_RDWR(%rip), %esi
	movl	$384, %edx                      # imm = 0x180
	callq	open@PLT
	movl	%eax, -24(%rbp)
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$-1, -24(%rbp)
	movb	%al, -33(%rbp)                  # 1-byte Spill
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	setg	%al
	movb	%al, -33(%rbp)                  # 1-byte Spill
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-33(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_1
# %bb.5:
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	O_CREAT
	.p2align	2
O_CREAT:
	.long	0                               # 0x0
	.globl	O_EXCL
	.p2align	2
O_EXCL:
	.long	0                               # 0x0
	.globl	O_RDWR
	.p2align	2
O_RDWR:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym alloca
	.addrsig_sym assert
	.addrsig_sym strcpy
	.addrsig_sym mktemp
	.addrsig_sym open
	.addrsig_sym O_CREAT
	.addrsig_sym O_EXCL
	.addrsig_sym O_RDWR
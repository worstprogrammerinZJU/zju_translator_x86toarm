	.text
	.p2align	4, 0x90                         # -- Begin function stbi__hdr_gettoken
stbi__hdr_gettoken:                     # @stbi__hdr_gettoken
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movb	$0, -21(%rbp)
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movb	%al, -21(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	stbi__at_eof@PLT
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -22(%rbp)                  # 1-byte Spill
	jne	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-21(%rbp), %eax
	cmpl	$10, %eax
	setne	%al
	movb	%al, -22(%rbp)                  # 1-byte Spill
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-22(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_4
	jmp	.LBB0_12
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-21(%rbp), %dl
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -20(%rbp)
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movl	-20(%rbp), %eax
	movl	STBI__HDR_BUFLEN(%rip), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_11
# %bb.5:
	jmp	.LBB0_6
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	stbi__at_eof@PLT
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -23(%rbp)                  # 1-byte Spill
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	cmpl	$10, %eax
	setne	%al
	movb	%al, -23(%rbp)                  # 1-byte Spill
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	movb	-23(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_9
	jmp	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_6
.LBB0_10:
	jmp	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movb	%al, -21(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STBI__HDR_BUFLEN
	.p2align	2
STBI__HDR_BUFLEN:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__hdr_gettoken
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__at_eof
	.addrsig_sym STBI__HDR_BUFLEN
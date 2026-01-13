	.text
	.p2align	4, 0x90                         # -- Begin function stbi__shiftsigned
stbi__shiftsigned:                      # @stbi__shiftsigned
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	cmpl	$0, -8(%rbp)
	jge	.LBB0_2
# %bb.1:
	xorl	%ecx, %ecx
	subl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -4(%rbp)
	movb	%al, -13(%rbp)                  # 1-byte Spill
	jl	.LBB0_5
# %bb.4:
	cmpl	$256, -4(%rbp)                  # imm = 0x100
	setl	%al
	movb	%al, -13(%rbp)                  # 1-byte Spill
.LBB0_5:
	movb	-13(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	STBI_ASSERT@PLT
	movl	$8, %ecx
	subl	-12(%rbp), %ecx
	movl	-4(%rbp), %eax
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -4(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -12(%rbp)
	movb	%al, -14(%rbp)                  # 1-byte Spill
	jl	.LBB0_7
# %bb.6:
	cmpl	$8, -12(%rbp)
	setle	%al
	movb	%al, -14(%rbp)                  # 1-byte Spill
.LBB0_7:
	movb	-14(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	STBI_ASSERT@PLT
	movl	-4(%rbp), %eax
	movslq	-12(%rbp), %rdx
	leaq	stbi__shiftsigned.mul_table(%rip), %rcx
	imull	(%rcx,%rdx,4), %eax
	movslq	-12(%rbp), %rdx
	leaq	stbi__shiftsigned.shift_table(%rip), %rcx
	movl	(%rcx,%rdx,4), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.data
	.p2align	4
stbi__shiftsigned.mul_table:
	.long	0                               # 0x0
	.long	255                             # 0xff
	.long	85                              # 0x55
	.long	73                              # 0x49
	.long	17                              # 0x11
	.long	33                              # 0x21
	.long	65                              # 0x41
	.long	129                             # 0x81
	.long	1                               # 0x1
	.p2align	4
stbi__shiftsigned.shift_table:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	4                               # 0x4
	.long	6                               # 0x6
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__shiftsigned
	.addrsig_sym STBI_ASSERT
	.addrsig_sym stbi__shiftsigned.mul_table
	.addrsig_sym stbi__shiftsigned.shift_table
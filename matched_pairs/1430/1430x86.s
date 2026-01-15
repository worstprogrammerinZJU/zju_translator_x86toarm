	.text
	.p2align	4, 0x90                         # -- Begin function read_octal_char
read_octal_char:                        # @read_octal_char
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -12(%rbp)
	movb	$0, %al
	callq	nextoct@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	-12(%rbp), %eax
	shll	$3, %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	readc@PLT
	movl	%eax, %ecx
	movl	-16(%rbp), %eax                 # 4-byte Reload
	subl	$48, %ecx
	orl	%ecx, %eax
	movl	%eax, -12(%rbp)
	movb	$0, %al
	callq	nextoct@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	-12(%rbp), %eax
	shll	$3, %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	readc@PLT
	movl	%eax, %ecx
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$48, %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_octal_char
	.addrsig_sym nextoct
	.addrsig_sym readc
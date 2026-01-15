	.text
	.p2align	4, 0x90                         # -- Begin function stbi__bitreverse16
stbi__bitreverse16:                     # @stbi__bitreverse16
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$43690, %eax                    # imm = 0xAAAA
	sarl	$1, %eax
	movl	-4(%rbp), %ecx
	andl	$21845, %ecx                    # imm = 0x5555
	shll	$1, %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$52428, %eax                    # imm = 0xCCCC
	sarl	$2, %eax
	movl	-4(%rbp), %ecx
	andl	$13107, %ecx                    # imm = 0x3333
	shll	$2, %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$61680, %eax                    # imm = 0xF0F0
	sarl	$4, %eax
	movl	-4(%rbp), %ecx
	andl	$3855, %ecx                     # imm = 0xF0F
	shll	$4, %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$65280, %eax                    # imm = 0xFF00
	sarl	$8, %eax
	movl	-4(%rbp), %ecx
	andl	$255, %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__bitreverse16
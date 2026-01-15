	.text
	.p2align	4, 0x90                         # -- Begin function stbi__parse_uncompressed_block
stbi__parse_uncompressed_block:         # @stbi__parse_uncompressed_block
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$7, %eax
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	andl	$7, %esi
	callq	stbi__zreceive@PLT
.LBB0_2:
	movl	$0, -44(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	andl	$255, %ecx
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
	cltq
	movl	%ecx, -32(%rbp,%rax,4)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	sarl	$8, %ecx
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_3
.LBB0_5:
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	STBI_ASSERT@PLT
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, -44(%rbp)
	jge	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__zget8@PLT
	movl	%eax, %ecx
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
	cltq
	movl	%ecx, -32(%rbp,%rax,4)
	jmp	.LBB0_6
.LBB0_8:
	movl	-28(%rbp), %eax
	shll	$8, %eax
	addl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-20(%rbp), %eax
	shll	$8, %eax
	addl	-24(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	xorl	$65535, %ecx                    # imm = 0xFFFF
	cmpl	%ecx, %eax
	je	.LBB0_10
# %bb.9:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_10:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jle	.LBB0_12
# %bb.11:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_12:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jle	.LBB0_16
# %bb.13:
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movl	-36(%rbp), %edx
	callq	stbi__zexpand@PLT
	cmpl	$0, %eax
	jne	.LBB0_15
# %bb.14:
	movl	$0, -4(%rbp)
	jmp	.LBB0_17
.LBB0_15:
	jmp	.LBB0_16
.LBB0_16:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-36(%rbp), %edx
	callq	memcpy@PLT
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rax
	addq	8(%rax), %rcx
	movq	%rcx, 8(%rax)
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rax
	addq	24(%rax), %rcx
	movq	%rcx, 24(%rax)
	movl	$1, -4(%rbp)
.LBB0_17:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"zlib corrupt"
.L.str.1:
	.asciz	"Corrupt PNG"
.L.str.2:
	.asciz	"read past buffer"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__parse_uncompressed_block
	.addrsig_sym stbi__zreceive
	.addrsig_sym STBI_ASSERT
	.addrsig_sym stbi__zget8
	.addrsig_sym stbi__err
	.addrsig_sym stbi__zexpand
	.addrsig_sym memcpy
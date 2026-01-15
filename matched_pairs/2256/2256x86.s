	.text
	.p2align	4, 0x90                         # -- Begin function stbi__pic_load
stbi__pic_load:                         # @stbi__pic_load
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STBI_NOTUSED@PLT
	cmpq	$0, -40(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB0_2:
	movl	$0, -68(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$92, -68(%rbp)
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movq	-16(%rbp), %rdi
	callq	stbi__get16be@PLT
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get16be@PLT
	movl	%eax, -76(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__at_eof@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.7:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_8:
	movl	-72(%rbp), %edi
	movl	-76(%rbp), %esi
	movl	$4, %edx
	xorl	%ecx, %ecx
	callq	stbi__mad3sizes_valid@PLT
	cmpl	$0, %eax
	jne	.LBB0_10
# %bb.9:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_10:
	movq	-16(%rbp), %rdi
	callq	stbi__get32be@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get16be@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get16be@PLT
	movl	-72(%rbp), %edi
	movl	-76(%rbp), %esi
	movl	$4, %edx
	xorl	%ecx, %ecx
	callq	stbi__malloc_mad3@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	-72(%rbp), %edx
	imull	-76(%rbp), %edx
	shll	$2, %edx
	movl	$255, %esi
	callq	memset@PLT
	movq	-16(%rbp), %rdi
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %r8
	callq	stbi__pic_load_core@PLT
	cmpl	$0, %eax
	jne	.LBB0_12
# %bb.11:
	movq	-64(%rbp), %rdi
	callq	STBI_FREE@PLT
	movq	$0, -64(%rbp)
.LBB0_12:
	movl	-72(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-76(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	cmpl	$0, -44(%rbp)
	jne	.LBB0_14
# %bb.13:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
.LBB0_14:
	movq	-64(%rbp), %rdi
	movl	-44(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	$4, %esi
	callq	stbi__convert_format@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_15:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad file"
.L.str.1:
	.asciz	"file too short (pic header)"
.L.str.2:
	.asciz	"too large"
.L.str.3:
	.asciz	"PIC image too large to decode"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pic_load
	.addrsig_sym STBI_NOTUSED
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__get16be
	.addrsig_sym stbi__at_eof
	.addrsig_sym stbi__errpuc
	.addrsig_sym stbi__mad3sizes_valid
	.addrsig_sym stbi__get32be
	.addrsig_sym stbi__malloc_mad3
	.addrsig_sym memset
	.addrsig_sym stbi__pic_load_core
	.addrsig_sym STBI_FREE
	.addrsig_sym stbi__convert_format
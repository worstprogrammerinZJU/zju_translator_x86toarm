	.text
	.p2align	4, 0x90                         # -- Begin function stbi__pic_info
stbi__pic_info:                         # @stbi__pic_info
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_2:
	cmpq	$0, -32(%rbp)
	jne	.LBB0_4
# %bb.3:
	leaq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_4:
	cmpq	$0, -40(%rbp)
	jne	.LBB0_6
# %bb.5:
	leaq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB0_6:
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	stbi__pic_is4@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_23
.LBB0_8:
	movq	-16(%rbp), %rdi
	movl	$88, %esi
	callq	stbi__skip@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get16be@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get16be@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__at_eof@PLT
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.9:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_23
.LBB0_10:
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB0_13
# %bb.11:
	movq	-24(%rbp), %rcx
	movl	$268435456, %eax                # imm = 0x10000000
	cltd
	idivl	(%rcx)
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_13
# %bb.12:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_23
.LBB0_13:
	movq	-16(%rbp), %rdi
	movl	$8, %esi
	callq	stbi__skip@PLT
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movslq	-48(%rbp), %rax
	cmpq	$10, %rax
	jne	.LBB0_16
# %bb.15:
	movl	$0, -4(%rbp)
	jmp	.LBB0_23
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
	movslq	%eax, %rcx
	leaq	-224(%rbp), %rax
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -232(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, %ecx
	movq	-232(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movq	%rax, %rcx
	movq	-232(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, %ecx
	movq	-232(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-232(%rbp), %rax
	movl	4(%rax), %eax
	orl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__at_eof@PLT
	cmpq	$0, %rax
	je	.LBB0_18
# %bb.17:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_23
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=1
	movq	-232(%rbp), %rax
	cmpl	$8, (%rax)
	je	.LBB0_20
# %bb.19:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_23
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=1
	cmpl	$0, -52(%rbp)
	jne	.LBB0_14
# %bb.22:
	movl	-44(%rbp), %edx
	andl	$16, %edx
	movl	$3, %ecx
	movl	$4, %eax
	cmpl	$0, %edx
	cmovnel	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$1, -4(%rbp)
.LBB0_23:
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"S\200\3664"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pic_info
	.addrsig_sym stbi__pic_is4
	.addrsig_sym stbi__rewind
	.addrsig_sym stbi__skip
	.addrsig_sym stbi__get16be
	.addrsig_sym stbi__at_eof
	.addrsig_sym stbi__get8
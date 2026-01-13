	.text
	.p2align	4, 0x90                         # -- Begin function stbi__zexpand
stbi__zexpand:                          # @stbi__zexpand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_8
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -52(%rbp)
	movl	%eax, -48(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	addl	-28(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-48(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_3
.LBB0_5:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	STBI_REALLOC_SIZED@PLT
	movq	%rax, -40(%rbp)
	movl	-52(%rbp), %edi
	callq	STBI_NOTUSED@PLT
	cmpq	$0, -40(%rbp)
	jne	.LBB0_7
# %bb.6:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_8
.LBB0_7:
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rcx
	movslq	-44(%rbp), %rax
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rcx
	movslq	-48(%rbp), %rax
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movl	$1, -4(%rbp)
.LBB0_8:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"output buffer limit"
.L.str.1:
	.asciz	"Corrupt PNG"
.L.str.2:
	.asciz	"outofmem"
.L.str.3:
	.asciz	"Out of memory"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__zexpand
	.addrsig_sym stbi__err
	.addrsig_sym STBI_REALLOC_SIZED
	.addrsig_sym STBI_NOTUSED
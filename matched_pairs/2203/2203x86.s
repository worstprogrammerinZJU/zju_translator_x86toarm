	.text
	.p2align	4, 0x90                         # -- Begin function stbi__get_marker
stbi__get_marker:                       # @stbi__get_marker
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	STBI__MARKER_none(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	movq	STBI__MARKER_none(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_8
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	callq	stbi__get8@PLT
	movl	%eax, -20(%rbp)
	cmpl	$255, -20(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	STBI__MARKER_none(%rip), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_8
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$255, -20(%rbp)
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	callq	stbi__get8@PLT
	movl	%eax, -20(%rbp)
	jmp	.LBB0_5
.LBB0_7:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_8:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STBI__MARKER_none
	.p2align	3
STBI__MARKER_none:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__get_marker
	.addrsig_sym stbi__get8
	.addrsig_sym STBI__MARKER_none
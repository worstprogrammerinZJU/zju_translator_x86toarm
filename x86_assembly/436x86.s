	.text
	.p2align	4, 0x90                         # -- Begin function read_expand
read_expand:                            # @read_expand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	read_expand_newline@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TNEWLINE(%rip), %rax
	je	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_expand
	.addrsig_sym read_expand_newline
	.addrsig_sym TNEWLINE
	.text
	.globl	readc                           # -- Begin function readc
	.p2align	4, 0x90
readc:                                  # @readc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	get@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	EOF(%rip), %eax
	jne	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	files(%rip), %edi
	callq	vec_len@PLT
	cmpl	$1, %eax
	jne	.LBB0_4
# %bb.3:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_10
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	files(%rip), %edi
	callq	vec_pop@PLT
	movl	%eax, %edi
	callq	close_file@PLT
	jmp	.LBB0_1
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$92, -8(%rbp)
	je	.LBB0_7
# %bb.6:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	get@PLT
	movl	%eax, -12(%rbp)
	cmpl	$10, -12(%rbp)
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_9:
	movl	-12(%rbp), %edi
	callq	unreadc@PLT
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_10:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EOF
	.p2align	2
EOF:
	.long	0                               # 0x0
	.globl	files
	.p2align	2
files:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get
	.addrsig_sym vec_len
	.addrsig_sym close_file
	.addrsig_sym vec_pop
	.addrsig_sym unreadc
	.addrsig_sym EOF
	.addrsig_sym files
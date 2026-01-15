	.text
	.p2align	4, 0x90                         # -- Begin function hash
hash:                                   # @hash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movb	$-59, -9(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	movsbl	-9(%rbp), %eax
	xorl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -9(%rbp)
	movsbl	-9(%rbp), %eax
	imull	$16777619, %eax, %eax           # imm = 0x1000193
                                        # kill: def $al killed $al killed $eax
	movb	%al, -9(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movsbl	-9(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hash
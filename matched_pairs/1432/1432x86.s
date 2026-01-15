	.text
	.p2align	4, 0x90                         # -- Begin function read_rep2
read_rep2:                              # @read_rep2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	%r8b, %al
                                        # kill: def $dl killed $dl killed $edx
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, -9(%rbp)
	movl	%esi, -16(%rbp)
	movb	%dl, -17(%rbp)
	movl	%ecx, -24(%rbp)
	movb	%al, -25(%rbp)
	movsbl	-9(%rbp), %edi
	callq	next@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	-16(%rbp), %edi
	callq	make_keyword@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movsbl	-17(%rbp), %edi
	callq	next@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	movsbl	-25(%rbp), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
.LBB0_5:
	movl	-32(%rbp), %edi                 # 4-byte Reload
	callq	make_keyword@PLT
	movq	%rax, -8(%rbp)
.LBB0_6:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_rep2
	.addrsig_sym next
	.addrsig_sym make_keyword
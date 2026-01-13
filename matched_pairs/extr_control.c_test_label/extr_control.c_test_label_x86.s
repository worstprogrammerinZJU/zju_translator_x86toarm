	.text
	.p2align	4, 0x90                         # -- Begin function test_label
test_label:                             # @test_label
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
# %bb.1:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$1, %edi
	callq	expect@PLT
	movl	$0, -8(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB0_2
	jmp	.LBB0_4
.LBB0_2:
	jmp	.LBB0_3
.LBB0_3:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB0_4:
	movl	-8(%rbp), %esi
	xorl	%edi, %edi
	movl	%edi, -16(%rbp)                 # 4-byte Spill
	callq	expect@PLT
                                        # kill: def $ecx killed $eax
	movl	-16(%rbp), %eax                 # 4-byte Reload
	movl	$0, -12(%rbp)
                                        # kill: def $al killed $al killed $eax
	testb	%al, %al
	jne	.LBB0_5
	jmp	.LBB0_11
.LBB0_11:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	%al, %al
	jne	.LBB0_9
	jmp	.LBB0_12
.LBB0_12:
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_7
	jmp	.LBB0_10
.LBB0_5:
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_8
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	movl	-12(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -12(%rbp)
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	movl	-12(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -12(%rbp)
.LBB0_10:
	movl	-12(%rbp), %esi
	movl	$8, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_label
	.addrsig_sym expect
	.text
	.p2align	4, 0x90                         # -- Begin function nextoct
nextoct:                                # @nextoct
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, -4(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movl	$48, %ecx
	cmpl	-4(%rbp), %ecx
	movb	%al, -5(%rbp)                   # 1-byte Spill
	jg	.LBB0_2
# %bb.1:
	cmpl	$55, -4(%rbp)
	setle	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB0_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nextoct
	.addrsig_sym peek
	.text
	.p2align	4, 0x90                         # -- Begin function skip_string
skip_string:                            # @skip_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	readc@PLT
	movl	%eax, -4(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	EOF(%rip), %ecx
	movb	%al, -5(%rbp)                   # 1-byte Spill
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$34, -4(%rbp)
	setne	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-5(%rbp), %al                   # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_4
	jmp	.LBB0_8
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$92, -4(%rbp)
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	readc@PLT
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	readc@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_8:
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skip_string
	.addrsig_sym readc
	.addrsig_sym EOF
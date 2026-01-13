	.text
	.p2align	4, 0x90                         # -- Begin function skip_char
skip_char:                              # @skip_char
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	readc@PLT
	movsbl	%al, %eax
	cmpl	$92, %eax
	jne	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	readc@PLT
.LBB0_2:
	movb	$0, %al
	callq	readc@PLT
	movsbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	EOF(%rip), %ecx
	movb	%al, -5(%rbp)                   # 1-byte Spill
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	cmpl	$39, -4(%rbp)
	setne	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movb	-5(%rbp), %al                   # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movb	$0, %al
	callq	readc@PLT
	movsbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_7:
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
	.addrsig_sym skip_char
	.addrsig_sym readc
	.addrsig_sym EOF
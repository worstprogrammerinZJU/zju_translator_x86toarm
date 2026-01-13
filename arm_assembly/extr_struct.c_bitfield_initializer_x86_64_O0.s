	.text
	.p2align	4, 0x90                         # -- Begin function bitfield_initializer
bitfield_initializer:                   # @bitfield_initializer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$2, %edi
	movsbl	inittest(%rip), %esi
	callq	expect@PLT
	movl	$4, %edi
	movsbl	inittest+1(%rip), %esi
	callq	expect@PLT
	movb	.L__const.bitfield_initializer.x(%rip), %al
	movb	%al, -8(%rbp)
	movb	-8(%rbp), %al
	shlb	$4, %al
	sarb	$4, %al
	movl	$2, %edi
	movsbl	%al, %esi
	callq	expect@PLT
	movb	-8(%rbp), %al
	sarb	$4, %al
	movl	$4, %edi
	movsbl	%al, %esi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	inittest
inittest:
	.zero	2
	.section	.rodata,"a",@progbits
.L__const.bitfield_initializer.x:
	.byte	66                              # 0x42
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bitfield_initializer
	.addrsig_sym expect
	.addrsig_sym inittest
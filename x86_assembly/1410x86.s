	.text
	.p2align	4, 0x90                         # -- Begin function buffer_empty
buffer_empty:                           # @buffer_empty
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	buffers(%rip), %edi
	callq	vec_len@PLT
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$1, %ecx
	movb	%al, -1(%rbp)                   # 1-byte Spill
	jne	.LBB0_2
# %bb.1:
	movl	buffers(%rip), %edi
	callq	vec_head@PLT
	movl	%eax, %edi
	callq	vec_len@PLT
	cmpl	$0, %eax
	sete	%al
	movb	%al, -1(%rbp)                   # 1-byte Spill
.LBB0_2:
	movb	-1(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	buffers
	.p2align	2
buffers:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym buffer_empty
	.addrsig_sym vec_len
	.addrsig_sym vec_head
	.addrsig_sym buffers
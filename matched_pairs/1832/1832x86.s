	.text
	.p2align	4, 0x90                         # -- Begin function is_string
is_string:                              # @is_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	KIND_ARRAY(%rip), %rcx
	movb	%al, -9(%rbp)                   # 1-byte Spill
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_CHAR(%rip), %rax
	sete	%al
	movb	%al, -9(%rbp)                   # 1-byte Spill
.LBB0_2:
	movb	-9(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_ARRAY
	.p2align	3
KIND_ARRAY:
	.quad	0                               # 0x0
	.globl	KIND_CHAR
	.p2align	3
KIND_CHAR:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_string
	.addrsig_sym KIND_ARRAY
	.addrsig_sym KIND_CHAR
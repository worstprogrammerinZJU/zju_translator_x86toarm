	.text
	.p2align	4, 0x90                         # -- Begin function inst_is_binder
inst_is_binder:                         # @inst_is_binder
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	opcode_describe@PLT
	movl	(%rax), %ecx
	andl	-12(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-12(%rbp), %ecx
	movb	%al, -13(%rbp)                  # 1-byte Spill
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	MODULEMETA(%rip), %rax
	setne	%al
	movb	%al, -13(%rbp)                  # 1-byte Spill
.LBB0_2:
	movb	-13(%rbp), %al                  # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	MODULEMETA
	.p2align	3
MODULEMETA:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_is_binder
	.addrsig_sym opcode_describe
	.addrsig_sym MODULEMETA
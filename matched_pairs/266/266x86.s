	.text
	.globl	block_is_const_inf              # -- Begin function block_is_const_inf
	.p2align	4, 0x90
block_is_const_inf:                     # @block_is_const_inf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	block_is_single@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -9(%rbp)                   # 1-byte Spill
	je	.LBB0_4
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	LOADK(%rip), %rcx
	movb	%al, -9(%rbp)                   # 1-byte Spill
	jne	.LBB0_4
# %bb.2:
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	jv_get_kind@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	JV_KIND_NUMBER(%rip), %rcx
	movb	%al, -9(%rbp)                   # 1-byte Spill
	jne	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	jv_number_value@PLT
	movl	%eax, %edi
	callq	isinf@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -9(%rbp)                   # 1-byte Spill
.LBB0_4:
	movb	-9(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LOADK
	.p2align	3
LOADK:
	.quad	0                               # 0x0
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_is_single
	.addrsig_sym jv_get_kind
	.addrsig_sym isinf
	.addrsig_sym jv_number_value
	.addrsig_sym LOADK
	.addrsig_sym JV_KIND_NUMBER
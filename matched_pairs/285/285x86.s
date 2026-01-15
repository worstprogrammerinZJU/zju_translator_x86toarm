	.text
	.globl	gen_condbranch                  # -- Begin function gen_condbranch
	.p2align	4, 0x90
gen_condbranch:                         # @gen_condbranch
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movl	JUMP(%rip), %edi
	movl	-8(%rbp), %esi
	callq	gen_op_target@PLT
	movl	-12(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	BLOCK@PLT
	movl	%eax, -4(%rbp)
	movl	JUMP_F(%rip), %edi
	movl	-4(%rbp), %esi
	callq	gen_op_target@PLT
	movl	%eax, %edi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movb	$0, %al
	callq	BLOCK@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JUMP
	.p2align	2
JUMP:
	.long	0                               # 0x0
	.globl	JUMP_F
	.p2align	2
JUMP_F:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym BLOCK
	.addrsig_sym gen_op_target
	.addrsig_sym JUMP
	.addrsig_sym JUMP_F
	.text
	.globl	bytecode_operation_length       # -- Begin function bytecode_operation_length
	.p2align	4, 0x90
bytecode_operation_length:              # @bytecode_operation_length
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	opcode_describe@PLT
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	CALL_JQ(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TAIL_CALL_JQ(%rip), %rax
	jne	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	shlq	$1, %rcx
	movslq	-12(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -12(%rbp)
.LBB0_3:
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CALL_JQ
	.p2align	3
CALL_JQ:
	.quad	0                               # 0x0
	.globl	TAIL_CALL_JQ
	.p2align	3
TAIL_CALL_JQ:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym opcode_describe
	.addrsig_sym CALL_JQ
	.addrsig_sym TAIL_CALL_JQ
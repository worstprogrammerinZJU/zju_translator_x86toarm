	.text
	.globl	opcode_describe                 # -- Begin function opcode_describe
	.p2align	4, 0x90
opcode_describe:                        # @opcode_describe
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	cmpl	$0, %eax
	jl	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	cmpl	NUM_OPCODES(%rip), %eax
	jge	.LBB0_3
# %bb.2:
	movq	opcode_descriptions(%rip), %rax
	movq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	leaq	invalid_opcode_description(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB0_4:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	NUM_OPCODES
	.p2align	2
NUM_OPCODES:
	.long	0                               # 0x0
	.globl	opcode_descriptions
	.p2align	3
opcode_descriptions:
	.quad	0
	.section	.rodata,"a",@progbits
	.globl	invalid_opcode_description
	.p2align	2
invalid_opcode_description:
	.zero	4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym NUM_OPCODES
	.addrsig_sym opcode_descriptions
	.addrsig_sym invalid_opcode_description
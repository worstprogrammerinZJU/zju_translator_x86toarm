	.text
	.globl	jq_parse_library                # -- Begin function jq_parse_library
	.p2align	4, 0x90
jq_parse_library:                       # @jq_parse_library
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	jq_parse@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB0_2
# %bb.1:
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	block_has_main@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	movl	UNKNOWN_LOCATION(%rip), %esi
	leaq	.L.str(%rip), %rdx
	callq	locfile_locate@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	movl	OP_IS_CALL_PSEUDO(%rip), %esi
	callq	block_has_only_binders_and_imports@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	$0, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	UNKNOWN_LOCATION
	.p2align	2
UNKNOWN_LOCATION:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jq: error: library should only have function definitions, not a main expression"
	.bss
	.globl	OP_IS_CALL_PSEUDO
	.p2align	2
OP_IS_CALL_PSEUDO:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_parse
	.addrsig_sym block_has_main
	.addrsig_sym locfile_locate
	.addrsig_sym assert
	.addrsig_sym block_has_only_binders_and_imports
	.addrsig_sym UNKNOWN_LOCATION
	.addrsig_sym OP_IS_CALL_PSEUDO
	.text
	.p2align	4, 0x90                         # -- Begin function value
value:                                  # @value
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	JV_PARSE_STREAMING(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_8
# %bb.1:
	movq	-16(%rbp), %rax
	movl	24(%rax), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	jne	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	JV_LAST_VALUE(%rip), %rax
	jne	.LBB0_4
.LBB0_3:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_4:
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	jle	.LBB0_6
# %bb.5:
	movq	JV_LAST_VALUE(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	jmp	.LBB0_7
.LBB0_6:
	movq	JV_LAST_NONE(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
.LBB0_7:
	jmp	.LBB0_11
.LBB0_8:
	movq	-16(%rbp), %rax
	movl	24(%rax), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.9:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	movq	-16(%rbp), %rax
	movl	24(%rax), %edi
	callq	jv_free@PLT
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	$0, -8(%rbp)
.LBB0_12:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_PARSE_STREAMING
	.p2align	2
JV_PARSE_STREAMING:
	.long	0                               # 0x0
	.globl	JV_LAST_VALUE
	.p2align	3
JV_LAST_VALUE:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Expected separator between values"
	.bss
	.globl	JV_LAST_NONE
	.p2align	3
JV_LAST_NONE:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym value
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_free
	.addrsig_sym JV_PARSE_STREAMING
	.addrsig_sym JV_LAST_VALUE
	.addrsig_sym JV_LAST_NONE
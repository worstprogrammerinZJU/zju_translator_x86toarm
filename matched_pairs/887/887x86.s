	.text
	.p2align	4, 0x90                         # -- Begin function path_intact
path_intact:                            # @path_intact
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	callq	jv_copy@PLT
	movl	-24(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_identical@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movl	$1, -4(%rbp)
.LBB0_4:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym path_intact
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_identical
	.addrsig_sym jv_copy
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_ARRAY
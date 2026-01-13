	.text
	.p2align	4, 0x90                         # -- Begin function gen_slice_index
gen_slice_index:                        # @gen_slice_index
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movb	$0, %al
	callq	jv_object@PLT
	movl	%eax, %edi
	callq	gen_const@PLT
	movl	%eax, %edi
	callq	gen_subexp@PLT
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	gen_const@PLT
	movl	%eax, %edi
	callq	gen_subexp@PLT
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	gen_subexp@PLT
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movl	INSERT(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	gen_const@PLT
	movl	%eax, %edi
	callq	gen_subexp@PLT
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %edi
	callq	gen_subexp@PLT
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movl	INSERT(%rip), %edi
	callq	gen_op_simple@PLT
	movl	-52(%rbp), %edi                 # 4-byte Reload
	movl	-48(%rbp), %esi                 # 4-byte Reload
	movl	-44(%rbp), %edx                 # 4-byte Reload
	movl	-40(%rbp), %ecx                 # 4-byte Reload
	movl	-36(%rbp), %r8d                 # 4-byte Reload
	movl	-32(%rbp), %r9d                 # 4-byte Reload
	movl	%eax, (%rsp)
	movb	$0, %al
	callq	BLOCK@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movl	-16(%rbp), %edi
	callq	gen_op_simple@PLT
	movl	-28(%rbp), %edi                 # 4-byte Reload
	movl	-24(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	BLOCK@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"start"
	.bss
	.globl	INSERT
	.p2align	2
INSERT:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"end"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_slice_index
	.addrsig_sym BLOCK
	.addrsig_sym gen_subexp
	.addrsig_sym gen_const
	.addrsig_sym jv_object
	.addrsig_sym jv_string
	.addrsig_sym gen_op_simple
	.addrsig_sym INSERT
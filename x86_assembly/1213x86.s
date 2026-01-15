	.text
	.globl	jv_array_set                    # -- Begin function jv_array_set
	.p2align	4, 0x90
jv_array_set:                           # @jv_array_set
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-8(%rbp), %edi
	movl	JV_KIND_ARRAY(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	cmpl	$0, -12(%rbp)
	jge	.LBB0_2
# %bb.1:
	movl	-8(%rbp), %edi
	callq	jvp_array_length@PLT
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB0_2:
	cmpl	$0, -12(%rbp)
	jge	.LBB0_4
# %bb.3:
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	-16(%rbp), %edi
	callq	jv_free@PLT
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	-12(%rbp), %esi
	leaq	-8(%rbp), %rdi
	callq	jvp_array_write@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_free@PLT
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	2
JV_KIND_ARRAY:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Out of bounds negative array index"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_array_length
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym jvp_array_write
	.addrsig_sym JV_KIND_ARRAY
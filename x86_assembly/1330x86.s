	.text
	.globl	jv_getpath                      # -- Begin function jv_getpath
	.p2align	4, 0x90
jv_getpath:                             # @jv_getpath
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movl	-8(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_4:
	movl	-12(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movl	-12(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	jv_array_get@PLT
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	-24(%rbp), %edi                 # 4-byte Reload
	movq	%rax, %rdx
	movl	$1, %esi
	callq	jv_array_slice@PLT
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	jv_get@PLT
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	callq	jv_getpath
	movl	%eax, -4(%rbp)
.LBB0_7:
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
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Path must be specified as an array"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_getpath
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_array_get
	.addrsig_sym jv_array_slice
	.addrsig_sym jv_get
	.addrsig_sym JV_KIND_ARRAY
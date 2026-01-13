	.text
	.p2align	4, 0x90                         # -- Begin function f_string_implode
f_string_implode:                       # @f_string_implode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	-24(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	ret_error@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-20(%rbp), %edi
	callq	jv_string_implode@PLT
	movl	%eax, -4(%rbp)
.LBB0_3:
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
	.asciz	"implode input must be an array"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_string_implode
	.addrsig_sym jv_get_kind
	.addrsig_sym ret_error
	.addrsig_sym jv_string
	.addrsig_sym jv_string_implode
	.addrsig_sym JV_KIND_ARRAY
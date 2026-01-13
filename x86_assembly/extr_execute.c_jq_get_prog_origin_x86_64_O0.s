	.text
	.globl	jq_get_prog_origin              # -- Begin function jq_get_prog_origin
	.p2align	4, 0x90
jq_get_prog_origin:                     # @jq_get_prog_origin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	jq_get_attr@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"PROGRAM_ORIGIN"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_get_attr
	.addrsig_sym jv_string
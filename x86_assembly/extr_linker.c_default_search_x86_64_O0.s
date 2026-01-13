	.text
	.p2align	4, 0x90                         # -- Begin function default_search
default_search:                         # @default_search
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	JV_ARRAY@PLT
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	jq_get_lib_dirs@PLT
	movl	-24(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_array_concat@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	je	.LBB0_4
# %bb.3:
	movl	-20(%rbp), %edi
	callq	JV_ARRAY@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"."
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym default_search
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_free
	.addrsig_sym jv_array_concat
	.addrsig_sym JV_ARRAY
	.addrsig_sym jv_string
	.addrsig_sym jq_get_lib_dirs
	.addrsig_sym jv_get_kind
	.addrsig_sym JV_KIND_ARRAY
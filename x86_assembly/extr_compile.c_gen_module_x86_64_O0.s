	.text
	.globl	gen_module                      # -- Begin function gen_module
	.p2align	4, 0x90
gen_module:                             # @gen_module
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	MODULEMETA(%rip), %edi
	callq	inst_new@PLT
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	block_const@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_OBJECT(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	jv_object@PLT
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	-20(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	callq	jv_object_set@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_2:
	movl	-4(%rbp), %edi
	callq	block_free@PLT
	movq	-16(%rbp), %rdi
	callq	inst_block@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	MODULEMETA
	.p2align	2
MODULEMETA:
	.long	0                               # 0x0
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"metadata"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_new
	.addrsig_sym block_const
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_object_set
	.addrsig_sym jv_object
	.addrsig_sym jv_string
	.addrsig_sym block_free
	.addrsig_sym inst_block
	.addrsig_sym MODULEMETA
	.addrsig_sym JV_KIND_OBJECT
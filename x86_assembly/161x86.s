	.text
	.p2align	4, 0x90                         # -- Begin function f_keys
f_keys:                                 # @f_keys
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_OBJECT(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	jne	.LBB0_3
.LBB0_2:
	movl	-20(%rbp), %edi
	callq	jv_keys@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movl	-20(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	type_error@PLT
	movl	%eax, -4(%rbp)
.LBB0_4:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.quad	0                               # 0x0
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"has no keys"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_keys
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_keys
	.addrsig_sym type_error
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_ARRAY
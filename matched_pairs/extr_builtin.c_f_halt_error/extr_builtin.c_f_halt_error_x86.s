	.text
	.p2align	4, 0x90                         # -- Begin function f_halt_error
f_halt_error:                           # @f_halt_error
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movl	-20(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	type_error@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	jq_halt@PLT
	movb	$0, %al
	callq	jv_true@PLT
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"halt_error/1: number required"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_halt_error
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free
	.addrsig_sym type_error
	.addrsig_sym jq_halt
	.addrsig_sym jv_true
	.addrsig_sym JV_KIND_NUMBER
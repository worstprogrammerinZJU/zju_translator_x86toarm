	.text
	.p2align	4, 0x90                         # -- Begin function f_tonumber
f_tonumber:                             # @f_tonumber
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_8
.LBB0_2:
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_7
# %bb.3:
	movl	-20(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, %edi
	callq	jv_parse@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	je	.LBB0_5
# %bb.4:
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_6
.LBB0_5:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_8
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	movl	-20(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	type_error@PLT
	movl	%eax, -4(%rbp)
.LBB0_8:
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
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot be parsed as a number"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_tonumber
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_parse
	.addrsig_sym jv_string_value
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_free
	.addrsig_sym type_error
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JV_KIND_STRING
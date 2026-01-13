	.text
	.p2align	4, 0x90                         # -- Begin function check_object_key
check_object_key:                       # @check_object_key
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	block_is_const@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.1:
	movl	-8(%rbp), %edi
	callq	block_const_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	je	.LBB0_3
# %bb.2:
	movl	-8(%rbp), %edi
	callq	block_const_kind@PLT
	movq	%rax, %rdi
	callq	jv_kind_name@PLT
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	block_const@PLT
	movl	%eax, %edi
	leaq	-23(%rbp), %rsi
	movl	$15, %edx
	callq	jv_dump_string_trunc@PLT
	movl	-28(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rdi
	callq	jv_string_fmt@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movb	$0, %al
	callq	jv_invalid@PLT
	movl	%eax, -4(%rbp)
.LBB0_4:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cannot use %s (%s) as object key"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym check_object_key
	.addrsig_sym block_is_const
	.addrsig_sym block_const_kind
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_kind_name
	.addrsig_sym jv_dump_string_trunc
	.addrsig_sym block_const
	.addrsig_sym jv_invalid
	.addrsig_sym JV_KIND_STRING
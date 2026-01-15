	.text
	.p2align	4, 0x90                         # -- Begin function test_err_cb
test_err_cb:                            # @test_err_cb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movl	-12(%rbp), %edi
	movl	JV_PRINT_INVALID(%rip), %esi
	callq	jv_dump_string@PLT
	movl	%eax, -12(%rbp)
.LBB0_2:
	movl	-12(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, %rdi
	leaq	.L.str(%rip), %rsi
	movl	$9, %edx
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %edi
	callq	jv_string_value@PLT
	movl	-28(%rbp), %edi                 # 4-byte Reload
	movq	%rax, %rcx
	movl	$4, %esi
	leaq	.L.str.1(%rip), %rdx
	callq	snprintf@PLT
.LBB0_4:
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	movl	$10, %esi
	callq	strchr@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	movl	$10, %esi
	callq	strchr@PLT
	movb	$0, (%rax)
.LBB0_6:
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
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
	.globl	JV_PRINT_INVALID
	.p2align	2
JV_PRINT_INVALID:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jq: error"
.L.str.1:
	.asciz	"%s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_err_cb
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_dump_string
	.addrsig_sym strncmp
	.addrsig_sym jv_string_value
	.addrsig_sym snprintf
	.addrsig_sym strchr
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_PRINT_INVALID
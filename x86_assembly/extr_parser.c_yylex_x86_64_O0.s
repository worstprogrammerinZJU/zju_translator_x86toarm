	.text
	.globl	yylex                           # -- Begin function yylex
	.p2align	4, 0x90
yylex:                                  # @yylex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-52(%rbp), %edx
	callq	jq_yylex@PLT
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	LITERAL(%rip), %eax
	je	.LBB0_2
# %bb.1:
	movl	-56(%rbp), %eax
	cmpl	QQSTRING_TEXT(%rip), %eax
	jne	.LBB0_7
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	jne	.LBB0_7
# %bb.3:
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_invalid_get_msg@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	movl	-60(%rbp), %edi
	callq	jv_string_value@PLT
	movl	-64(%rbp), %edi                 # 4-byte Reload
	movq	%rax, %rsi
	callq	FAIL@PLT
	jmp	.LBB0_6
.LBB0_5:
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	leaq	.L.str(%rip), %rsi
	callq	FAIL@PLT
.LBB0_6:
	movl	-60(%rbp), %edi
	callq	jv_free@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_null@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_7:
	movl	-56(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LITERAL
	.p2align	2
LITERAL:
	.long	0                               # 0x0
	.globl	QQSTRING_TEXT
	.p2align	2
QQSTRING_TEXT:
	.long	0                               # 0x0
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Invalid literal"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_yylex
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym jv_copy
	.addrsig_sym jv_get_kind
	.addrsig_sym FAIL
	.addrsig_sym jv_string_value
	.addrsig_sym jv_free
	.addrsig_sym jv_null
	.addrsig_sym LITERAL
	.addrsig_sym QQSTRING_TEXT
	.addrsig_sym JV_KIND_STRING
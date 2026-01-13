	.text
	.p2align	4, 0x90                         # -- Begin function f_endswith
f_endswith:                             # @f_endswith
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	je	.LBB0_3
.LBB0_2:
	movl	-20(%rbp), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	movl	-24(%rbp), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	-68(%rbp), %edi                 # 4-byte Reload
	movl	-64(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	ret_error2@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_8
.LBB0_3:
	movl	-20(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -32(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movq	%rax, -48(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.LBB0_5
# %bb.4:
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	subq	-56(%rbp), %rax
	addq	%rax, %rdi
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	memcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_6
.LBB0_5:
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, -60(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movb	$0, %al
	callq	jv_true@PLT
	movl	%eax, -60(%rbp)
.LBB0_7:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_8:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
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
	.asciz	"endswith() requires string inputs"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_endswith
	.addrsig_sym jv_get_kind
	.addrsig_sym ret_error2
	.addrsig_sym jv_string
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym memcmp
	.addrsig_sym jv_false
	.addrsig_sym jv_true
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING
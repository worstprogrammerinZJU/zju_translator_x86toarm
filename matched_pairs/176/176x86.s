	.text
	.p2align	4, 0x90                         # -- Begin function f_multiply
f_multiply:                             # @f_multiply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %edi
	callq	jv_get_kind@PLT
	movq	%rax, -48(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movq	-40(%rbp), %rax
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_3
# %bb.1:
	movq	-48(%rbp), %rax
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movl	-24(%rbp), %edi
	callq	jv_number_value@PLT
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	movl	-28(%rbp), %edi
	callq	jv_number_value@PLT
	movl	-80(%rbp), %edi                 # 4-byte Reload
	imull	%eax, %edi
	callq	jv_number@PLT
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movl	-28(%rbp), %edi
	callq	jv_free@PLT
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_20
.LBB0_3:
	movq	-40(%rbp), %rax
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_5
# %bb.4:
	movq	-48(%rbp), %rax
	cmpq	JV_KIND_NUMBER(%rip), %rax
	je	.LBB0_7
.LBB0_5:
	movq	-40(%rbp), %rax
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_16
# %bb.6:
	movq	-48(%rbp), %rax
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_16
.LBB0_7:
	movl	-24(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rax
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_9
# %bb.8:
	movl	-28(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB0_9:
	movl	-56(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movq	%rax, -72(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-60(%rbp), %edi
	callq	jv_number_value@PLT
	subl	$1, %eax
	movl	%eax, -64(%rbp)
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -64(%rbp)
	jle	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	movl	-56(%rbp), %edi
	callq	jv_string_value@PLT
	movl	-84(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movq	-72(%rbp), %rdx
	callq	jv_string_append_buf@PLT
	movl	%eax, -76(%rbp)
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_10
.LBB0_13:
	movl	-60(%rbp), %edi
	callq	jv_free@PLT
	cmpl	$0, -64(%rbp)
	jge	.LBB0_15
# %bb.14:
	movl	-56(%rbp), %edi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_null@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_20
.LBB0_15:
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_20
.LBB0_16:
	movq	-40(%rbp), %rax
	cmpq	JV_KIND_OBJECT(%rip), %rax
	jne	.LBB0_19
# %bb.17:
	movq	-48(%rbp), %rax
	cmpq	JV_KIND_OBJECT(%rip), %rax
	jne	.LBB0_19
# %bb.18:
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	callq	jv_object_merge_recursive@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_20
.LBB0_19:
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	leaq	.L.str(%rip), %rdx
	callq	type_error2@PLT
	movl	%eax, -4(%rbp)
.LBB0_20:
	movl	-4(%rbp), %eax
	addq	$96, %rsp
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
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot be multiplied"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_multiply
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free
	.addrsig_sym jv_number
	.addrsig_sym jv_number_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym jv_string_append_buf
	.addrsig_sym jv_string_value
	.addrsig_sym jv_null
	.addrsig_sym jv_object_merge_recursive
	.addrsig_sym type_error2
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_KIND_OBJECT
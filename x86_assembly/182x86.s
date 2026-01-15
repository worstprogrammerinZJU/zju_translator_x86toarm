	.text
	.p2align	4, 0x90                         # -- Begin function f_rtrimstr
f_rtrimstr:                             # @f_rtrimstr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	-20(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movl	-24(%rbp), %edi
	callq	jv_copy@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	-32(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	f_endswith@PLT
	movl	%eax, %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_TRUE(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movl	-20(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movl	-24(%rbp), %edi
	callq	jv_string_length_bytes@PLT
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movl	-44(%rbp), %edi                 # 4-byte Reload
	subq	%rax, %rsi
	callq	jv_string_sized@PLT
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_TRUE
	.p2align	3
JV_KIND_TRUE:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_rtrimstr
	.addrsig_sym jv_get_kind
	.addrsig_sym f_endswith
	.addrsig_sym jv_copy
	.addrsig_sym jv_string_sized
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_TRUE
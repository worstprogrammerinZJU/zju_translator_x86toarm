	.text
	.p2align	4, 0x90                         # -- Begin function put_buf
put_buf:                                # @put_buf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	jv_string_append_buf@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	$1, %esi
	callq	fwrite@PLT
.LBB0_3:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CP_UTF8
	.p2align	2
CP_UTF8:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym put_buf
	.addrsig_sym jv_string_append_buf
	.addrsig_sym fwrite
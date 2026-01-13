	.text
	.p2align	4, 0x90                         # -- Begin function jvp_object_new
jvp_object_new:                         # @jvp_object_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -4(%rbp)
	movb	%al, -37(%rbp)                  # 1-byte Spill
	jle	.LBB0_2
# %bb.1:
	movl	-4(%rbp), %eax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	sete	%al
	movb	%al, -37(%rbp)                  # 1-byte Spill
.LBB0_2:
	movb	-37(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movslq	-4(%rbp), %rax
	shlq	$2, %rax
	addq	$24, %rax
	movl	-4(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movl	%eax, %edi
	callq	jv_mem_alloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, -20(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movl	%ecx, (%rax)
	movq	JV_NULL(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	$0, 16(%rax)
	movq	JV_NULL(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	%rcx, 8(%rax)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-4(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	-4(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	$-1, (%rax,%rcx,4)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_7
.LBB0_10:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	movl	JVP_FLAGS_OBJECT(%rip), %edx
	movl	%edx, (%rcx)
	movq	$0, 8(%rcx)
	movl	$0, 16(%rcx)
	movl	-4(%rbp), %edx
	movl	%edx, 20(%rcx)
	movq	-16(%rbp), %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, 24(%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_NULL
	.p2align	3
JV_NULL:
	.quad	0
	.globl	JVP_FLAGS_OBJECT
	.p2align	2
JVP_FLAGS_OBJECT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_new
	.addrsig_sym assert
	.addrsig_sym jv_mem_alloc
	.addrsig_sym JV_NULL
	.addrsig_sym JVP_FLAGS_OBJECT
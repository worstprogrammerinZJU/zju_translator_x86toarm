	.text
	.globl	base64_encode_block             # -- Begin function base64_encode_block
	.p2align	4, 0x90
base64_encode_block:                    # @base64_encode_block
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -65(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -72(%rbp)                 # 4-byte Spill
	subl	$128, %eax
	je	.LBB0_8
	jmp	.LBB0_13
.LBB0_13:
	movl	-72(%rbp), %eax                 # 4-byte Reload
	subl	$129, %eax
	je	.LBB0_5
	jmp	.LBB0_14
.LBB0_14:
	movl	-72(%rbp), %eax                 # 4-byte Reload
	subl	$130, %eax
	je	.LBB0_2
	jmp	.LBB0_11
.LBB0_1:
	jmp	.LBB0_2
.LBB0_2:
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_4
# %bb.3:
	movb	-65(%rbp), %cl
	movq	-40(%rbp), %rax
	movb	%cl, (%rax)
	movq	-40(%rbp), %rax
	movl	$130, 4(%rax)
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_12
.LBB0_4:
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	(%rax), %al
	movb	%al, -66(%rbp)
	movsbl	-66(%rbp), %eax
	andl	$252, %eax
	sarl	$2, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -65(%rbp)
	movsbl	-65(%rbp), %edi
	callq	base64_encode_value@PLT
	movb	%al, %cl
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%cl, (%rax)
	movsbl	-66(%rbp), %eax
	andl	$3, %eax
	shll	$4, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -65(%rbp)
.LBB0_5:
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_7
# %bb.6:
	movb	-65(%rbp), %cl
	movq	-40(%rbp), %rax
	movb	%cl, (%rax)
	movq	-40(%rbp), %rax
	movl	$129, 4(%rax)
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_12
.LBB0_7:
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	(%rax), %al
	movb	%al, -66(%rbp)
	movsbl	-66(%rbp), %ecx
	andl	$240, %ecx
	sarl	$4, %ecx
	movsbl	-65(%rbp), %eax
	orl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -65(%rbp)
	movsbl	-65(%rbp), %edi
	callq	base64_encode_value@PLT
	movb	%al, %cl
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%cl, (%rax)
	movsbl	-66(%rbp), %eax
	andl	$15, %eax
	shll	$2, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -65(%rbp)
.LBB0_8:
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_10
# %bb.9:
	movb	-65(%rbp), %cl
	movq	-40(%rbp), %rax
	movb	%cl, (%rax)
	movq	-40(%rbp), %rax
	movl	$128, 4(%rax)
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_12
.LBB0_10:
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	(%rax), %al
	movb	%al, -66(%rbp)
	movsbl	-66(%rbp), %ecx
	andl	$192, %ecx
	sarl	$6, %ecx
	movsbl	-65(%rbp), %eax
	orl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -65(%rbp)
	movsbl	-65(%rbp), %edi
	callq	base64_encode_value@PLT
	movb	%al, %cl
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%cl, (%rax)
	movsbl	-66(%rbp), %eax
	andl	$63, %eax
	sarl	$0, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -65(%rbp)
	movsbl	-65(%rbp), %edi
	callq	base64_encode_value@PLT
	movb	%al, %cl
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB0_1
.LBB0_11:
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
.LBB0_12:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_encode_value
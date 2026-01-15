	.text
	.p2align	4, 0x90                         # -- Begin function stbi__hdr_info
stbi__hdr_info:                         # @stbi__hdr_info
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	STBI__HDR_BUFLEN(%rip), %eax
                                        # kill: def $rax killed $eax
	movq	%rsp, %rcx
	movq	%rcx, -48(%rbp)
	movq	%rax, %rdx
	addq	$15, %rdx
	andq	$-16, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -88(%rbp)                 # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -56(%rbp)
	movl	$0, -68(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_2:
	cmpq	$0, -32(%rbp)
	jne	.LBB0_4
# %bb.3:
	leaq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_4:
	cmpq	$0, -40(%rbp)
	jne	.LBB0_6
# %bb.5:
	leaq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB0_6:
	movq	-16(%rbp), %rdi
	callq	stbi__hdr_test@PLT
	cmpq	$0, %rax
	jne	.LBB0_8
# %bb.7:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	movl	$1, -76(%rbp)
	jmp	.LBB0_24
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rsi                 # 8-byte Reload
	movq	-16(%rbp), %rdi
	callq	stbi__hdr_gettoken@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	jne	.LBB0_11
# %bb.10:
	jmp	.LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-64(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$1, -68(%rbp)
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_9
.LBB0_14:
	cmpl	$0, -68(%rbp)
	jne	.LBB0_16
# %bb.15:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	movl	$1, -76(%rbp)
	jmp	.LBB0_24
.LBB0_16:
	movq	-88(%rbp), %rsi                 # 8-byte Reload
	movq	-16(%rbp), %rdi
	callq	stbi__hdr_gettoken@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$3, %edx
	callq	strncmp@PLT
	cmpq	$0, %rax
	je	.LBB0_18
# %bb.17:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	movl	$1, -76(%rbp)
	jmp	.LBB0_24
.LBB0_18:
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movl	$10, %edx
	callq	strtol@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$32, %eax
	jne	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_19
.LBB0_21:
	movq	-64(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	movl	$3, %edx
	callq	strncmp@PLT
	cmpq	$0, %rax
	je	.LBB0_23
# %bb.22:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	movl	$1, -76(%rbp)
	jmp	.LBB0_24
.LBB0_23:
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	movl	$3, (%rax)
	movl	$1, -4(%rbp)
	movl	$1, -76(%rbp)
.LBB0_24:
	movq	-48(%rbp), %rax
	movq	%rax, %rsp
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STBI__HDR_BUFLEN
	.p2align	2
STBI__HDR_BUFLEN:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"FORMAT=32-bit_rle_rgbe"
.L.str.1:
	.asciz	"-Y "
.L.str.2:
	.asciz	"+X "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__hdr_info
	.addrsig_sym stbi__hdr_test
	.addrsig_sym stbi__rewind
	.addrsig_sym stbi__hdr_gettoken
	.addrsig_sym strcmp
	.addrsig_sym strncmp
	.addrsig_sym strtol
	.addrsig_sym STBI__HDR_BUFLEN
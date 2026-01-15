	.text
	.p2align	4, 0x90                         # -- Begin function stbi_write_bmp_core
stbi_write_bmp_core:                    # @stbi_write_bmp_core
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$216, %rsp
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	imull	$3, %eax, %eax
	andl	$3, %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movq	-56(%rbp), %r15
	movl	-60(%rbp), %r14d
	imull	$3, -36(%rbp), %r11d
	addl	-60(%rbp), %r11d
	imull	-40(%rbp), %r11d
	addl	$54, %r11d
	movl	-36(%rbp), %r10d
	movl	-40(%rbp), %eax
	movl	$4294967295, %edx               # imm = 0xFFFFFFFF
	xorl	%esi, %esi
	leaq	.L.str(%rip), %rbx
	movl	%edx, %esi
	movl	$1, (%rsp)
	movq	%r15, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movl	$66, 40(%rsp)
	movl	$77, 48(%rsp)
	movl	%r11d, 56(%rsp)
	movl	$0, 64(%rsp)
	movl	$0, 72(%rsp)
	movl	$54, 80(%rsp)
	movl	$40, 88(%rsp)
	movl	%r10d, 96(%rsp)
	movl	%eax, 104(%rsp)
	movl	$1, 112(%rsp)
	movl	$24, 120(%rsp)
	movl	$0, 128(%rsp)
	movl	$0, 136(%rsp)
	movl	$0, 144(%rsp)
	movl	$0, 152(%rsp)
	movl	$0, 160(%rsp)
	movl	$0, 168(%rsp)
	callq	stbiw__outfile@PLT
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"11 4 22 44 44 22 444444"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi_write_bmp_core
	.addrsig_sym stbiw__outfile
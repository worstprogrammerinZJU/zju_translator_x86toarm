	.text
	.globl	fexpectf                        # -- Begin function fexpectf
	.p2align	4, 0x90
fexpectf:                               # @fexpectf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movss	%xmm1, -20(%rbp)
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	-20(%rbp), %xmm0
	jne	.LBB0_2
	jp	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	printfail@PLT
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-20(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_3:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s:%d: %f expected, but got %f\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printfail
	.addrsig_sym printf
	.addrsig_sym exit
	.text
	.globl	write_utf8                      # -- Begin function write_utf8
	.p2align	4, 0x90
write_utf8:                             # @write_utf8
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$128, -12(%rbp)
	jge	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	buf_write@PLT
	jmp	.LBB0_9
.LBB0_2:
	cmpl	$2048, -12(%rbp)                # imm = 0x800
	jge	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	sarl	$6, %esi
	orl	$192, %esi
	callq	buf_write@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	andl	$63, %esi
	orl	$128, %esi
	callq	buf_write@PLT
	jmp	.LBB0_9
.LBB0_4:
	cmpl	$65536, -12(%rbp)               # imm = 0x10000
	jge	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	sarl	$12, %esi
	orl	$224, %esi
	callq	buf_write@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	sarl	$6, %esi
	andl	$63, %esi
	orl	$128, %esi
	callq	buf_write@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	andl	$63, %esi
	orl	$128, %esi
	callq	buf_write@PLT
	jmp	.LBB0_9
.LBB0_6:
	cmpl	$2097152, -12(%rbp)             # imm = 0x200000
	jge	.LBB0_8
# %bb.7:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	sarl	$18, %esi
	orl	$240, %esi
	callq	buf_write@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	sarl	$12, %esi
	andl	$63, %esi
	orl	$128, %esi
	callq	buf_write@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	sarl	$6, %esi
	andl	$63, %esi
	orl	$128, %esi
	callq	buf_write@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	andl	$63, %esi
	orl	$128, %esi
	callq	buf_write@PLT
	jmp	.LBB0_9
.LBB0_8:
	movl	-12(%rbp), %esi
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_9:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid UCS character: \\U%08x"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym buf_write
	.addrsig_sym error
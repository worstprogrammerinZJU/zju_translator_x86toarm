	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function fill_truth_captcha
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	fill_truth_captcha
	.p2align	4, 0x90
fill_truth_captcha:                     # @fill_truth_captcha
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	$47, %esi
	callq	strrchr@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rdi
	callq	strlen@PLT
	movl	-48(%rbp), %ecx                 # 4-byte Reload
	movl	%eax, %edx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	%edx, %ecx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-12(%rbp), %ecx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	jge	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$46, %eax
	setne	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-41(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_9
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	callq	alphanum_to_int@PLT
	movl	%eax, -40(%rbp)
	cmpl	$35, -40(%rbp)
	jle	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	leaq	.L.str(%rip), %rdi
	movsbl	(%rax,%rcx), %esi
	callq	printf@PLT
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %ecx
	imull	NUMCHARS(%rip), %ecx
	addl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax,%rcx,4)
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %ecx
	imull	NUMCHARS(%rip), %ecx
	addl	NUMCHARS(%rip), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax,%rcx,4)
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_10
.LBB0_13:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Bad %c\n"
	.bss
	.globl	NUMCHARS
	.p2align	2
NUMCHARS:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strrchr
	.addrsig_sym strlen
	.addrsig_sym alphanum_to_int
	.addrsig_sym printf
	.addrsig_sym NUMCHARS
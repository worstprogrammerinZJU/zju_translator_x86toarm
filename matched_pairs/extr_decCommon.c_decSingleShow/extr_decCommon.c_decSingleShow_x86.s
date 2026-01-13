	.text
	.globl	decFloatShow                    # -- Begin function decFloatShow
	.p2align	4, 0x90
decFloatShow:                           # @decFloatShow
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	DECBYTES(%rip), %edx
	movl	%edx, %eax
	addl	$3, %eax
	testl	%edx, %edx
	movl	%edx, %ecx
	cmovsl	%eax, %ecx
	sarl	$2, %ecx
                                        # implicit-def: $rax
	movl	%ecx, %eax
                                        # implicit-def: $rcx
	movl	%edx, %ecx
	leal	1(%rax,%rcx,2), %eax
                                        # kill: def $rax killed $eax
	movq	%rsp, %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, %rdx
	addq	$15, %rdx
	andq	$-16, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -64(%rbp)                 # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -32(%rbp)
	movl	DECSTRING(%rip), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, %rdx
	addq	$15, %rdx
	andq	$-16, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -56(%rbp)                 # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -40(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	DECBYTES(%rip), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movslq	-48(%rbp), %rax
	addq	%rax, %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	leaq	.L.str(%rip), %rsi
	callq	sprintf@PLT
	movl	-48(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	$4, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movslq	-48(%rbp), %rax
	addq	%rax, %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcpy@PLT
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movq	-8(%rbp), %rdi
	callq	decFloatToString@PLT
	movq	-64(%rbp), %rdx                 # 8-byte Reload
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	leaq	.L.str.2(%rip), %rdi
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rsp
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECBYTES
	.p2align	2
DECBYTES:
	.long	0                               # 0x0
	.globl	DECSTRING
	.p2align	2
DECSTRING:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%02x"
.L.str.1:
	.asciz	" "
.L.str.2:
	.asciz	">%s> %s [big-endian]  %s\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sprintf
	.addrsig_sym strcpy
	.addrsig_sym decFloatToString
	.addrsig_sym printf
	.addrsig_sym DECBYTES
	.addrsig_sym DECSTRING
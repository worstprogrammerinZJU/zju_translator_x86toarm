	.text
	.p2align	4, 0x90                         # -- Begin function stbi__process_scan_header
stbi__process_scan_header:              # @stbi__process_scan_header
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	stbi__get16be@PLT
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	stbi__get8@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	cmpl	$1, (%rax)
	jl	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jg	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	(%rcx), %eax
	jle	.LBB0_4
.LBB0_3:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_37
.LBB0_4:
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	shll	$1, %ecx
	addl	$6, %ecx
	cmpl	%ecx, %eax
	je	.LBB0_6
# %bb.5:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_37
.LBB0_6:
	movl	$0, -20(%rbp)
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_22
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
	movl	$0, -32(%rbp)
.LBB0_9:                                #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movslq	-32(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_14
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=2
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_9
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	(%rcx), %eax
	jne	.LBB0_16
# %bb.15:
	movl	$0, -4(%rbp)
	jmp	.LBB0_37
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-36(%rbp), %ecx
	sarl	$4, %ecx
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movslq	-32(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movslq	-32(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$3, 4(%rax)
	jle	.LBB0_18
# %bb.17:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_37
.LBB0_18:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-36(%rbp), %ecx
	andl	$15, %ecx
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movslq	-32(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movslq	-32(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$3, 8(%rax)
	jle	.LBB0_20
# %bb.19:
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_37
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.21:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_7
.LBB0_22:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	stbi__get8@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	stbi__get8@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %ecx
	sarl	$4, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 24(%rax)
	movl	-40(%rbp), %ecx
	andl	$15, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB0_30
# %bb.23:
	movq	-16(%rbp), %rax
	cmpl	$63, 16(%rax)
	jg	.LBB0_28
# %bb.24:
	movq	-16(%rbp), %rax
	cmpl	$63, 20(%rax)
	jg	.LBB0_28
# %bb.25:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	20(%rcx), %eax
	jg	.LBB0_28
# %bb.26:
	movq	-16(%rbp), %rax
	cmpl	$13, 24(%rax)
	jg	.LBB0_28
# %bb.27:
	movq	-16(%rbp), %rax
	cmpl	$13, 28(%rax)
	jle	.LBB0_29
.LBB0_28:
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_37
.LBB0_29:
	jmp	.LBB0_36
.LBB0_30:
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_32
# %bb.31:
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_37
.LBB0_32:
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB0_34
# %bb.33:
	movq	-16(%rbp), %rax
	cmpl	$0, 28(%rax)
	je	.LBB0_35
.LBB0_34:
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_37
.LBB0_35:
	movq	-16(%rbp), %rax
	movl	$63, 20(%rax)
.LBB0_36:
	movl	$1, -4(%rbp)
.LBB0_37:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad SOS component count"
.L.str.1:
	.asciz	"Corrupt JPEG"
.L.str.2:
	.asciz	"bad SOS len"
.L.str.3:
	.asciz	"bad DC huff"
.L.str.4:
	.asciz	"bad AC huff"
.L.str.5:
	.asciz	"bad SOS"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__process_scan_header
	.addrsig_sym stbi__get16be
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__err
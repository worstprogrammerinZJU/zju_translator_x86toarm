	.text
	.p2align	4, 0x90                         # -- Begin function stbi__process_gif_raster
stbi__process_gif_raster:               # @stbi__process_gif_raster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, -28(%rbp)
	cmpl	$12, -28(%rbp)
	jle	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_42
.LBB0_2:
	movl	-28(%rbp), %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -68(%rbp)
	movl	$1, -40(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -36(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-36(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movl	$-1, (%rax)
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-36(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 4(%rax)
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-36(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 8(%rax)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movl	-68(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -52(%rbp)
	movl	$-1, -56(%rbp)
	movl	$0, -32(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB0_13
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, -32(%rbp)
	jne	.LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.LBB0_11
# %bb.10:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_42
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	orl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_41
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-60(%rbp), %eax
	andl	-48(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-44(%rbp), %ecx
	movl	-60(%rbp), %eax
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -60(%rbp)
	movl	-44(%rbp), %ecx
	movl	-64(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movl	-84(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jne	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-68(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -52(%rbp)
	movl	$-1, -56(%rbp)
	movl	$0, -40(%rbp)
	jmp	.LBB0_40
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-84(%rbp), %eax
	movl	-68(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_20
# %bb.16:
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	stbi__skip@PLT
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, %eax
	jle	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	stbi__skip@PLT
	jmp	.LBB0_17
.LBB0_19:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_42
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-84(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jg	.LBB0_37
# %bb.21:                               #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB0_23
# %bb.22:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_42
.LBB0_23:                               #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, -56(%rbp)
	jl	.LBB0_30
# %bb.24:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-52(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movslq	%ecx, %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	cmpl	$8192, -52(%rbp)                # imm = 0x2000
	jle	.LBB0_26
# %bb.25:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_42
.LBB0_26:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-56(%rbp), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-56(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-84(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -88(%rbp)                 # 4-byte Spill
	jmp	.LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-84(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	movl	%eax, -88(%rbp)                 # 4-byte Spill
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-88(%rbp), %ecx                 # 4-byte Reload
	movq	-80(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB0_33
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-84(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB0_32
# %bb.31:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_42
.LBB0_32:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_33
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	stbi__out_gif_code@PLT
	movl	-52(%rbp), %eax
	andl	-48(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB0_36
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	cmpl	$4095, -52(%rbp)                # imm = 0xFFF
	jg	.LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_38
.LBB0_37:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_42
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_39
.LBB0_39:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_40
.LBB0_40:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_41
.LBB0_41:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_7
.LBB0_42:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"no clear code"
.L.str.1:
	.asciz	"Corrupt GIF"
.L.str.2:
	.asciz	"too many codes"
.L.str.3:
	.asciz	"illegal code in raster"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__process_gif_raster
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__skip
	.addrsig_sym stbi__errpuc
	.addrsig_sym stbi__out_gif_code
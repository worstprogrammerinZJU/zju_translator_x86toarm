	.text
	.p2align	4, 0x90                         # -- Begin function stbi__bmp_parse_header
stbi__bmp_parse_header:                 # @stbi__bmp_parse_header
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	cmpl	$66, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	cmpl	$77, %eax
	je	.LBB0_3
.LBB0_2:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_50
.LBB0_3:
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 4(%rax)
	cmpl	$12, -28(%rbp)
	je	.LBB0_9
# %bb.4:
	cmpl	$40, -28(%rbp)
	je	.LBB0_9
# %bb.5:
	cmpl	$56, -28(%rbp)
	je	.LBB0_9
# %bb.6:
	cmpl	$108, -28(%rbp)
	je	.LBB0_9
# %bb.7:
	cmpl	$124, -28(%rbp)
	je	.LBB0_9
# %bb.8:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_50
.LBB0_9:
	cmpl	$12, -28(%rbp)
	jne	.LBB0_11
# %bb.10:
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	jmp	.LBB0_12
.LBB0_11:
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
.LBB0_12:
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	cmpl	$1, %eax
	je	.LBB0_14
# %bb.13:
	leaq	.L.str.4(%rip), %rsi
	movq	%rsi, %rdi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_50
.LBB0_14:
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 20(%rax)
	cmpl	$12, -28(%rbp)
	je	.LBB0_49
# %bb.15:
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -32(%rbp)
	cmpl	$1, -32(%rbp)
	je	.LBB0_17
# %bb.16:
	cmpl	$2, -32(%rbp)
	jne	.LBB0_18
.LBB0_17:
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_50
.LBB0_18:
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	cmpl	$40, -28(%rbp)
	je	.LBB0_20
# %bb.19:
	cmpl	$56, -28(%rbp)
	jne	.LBB0_38
.LBB0_20:
	cmpl	$56, -28(%rbp)
	jne	.LBB0_22
# %bb.21:
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
.LBB0_22:
	movq	-24(%rbp), %rax
	cmpl	$16, 20(%rax)
	je	.LBB0_24
# %bb.23:
	movq	-24(%rbp), %rax
	cmpl	$32, 20(%rax)
	jne	.LBB0_37
.LBB0_24:
	cmpl	$0, -32(%rbp)
	jne	.LBB0_29
# %bb.25:
	movq	-24(%rbp), %rax
	cmpl	$32, 20(%rax)
	jne	.LBB0_27
# %bb.26:
	movq	-24(%rbp), %rax
	movl	$16711680, 4(%rax)              # imm = 0xFF0000
	movq	-24(%rbp), %rax
	movl	$65280, 8(%rax)                 # imm = 0xFF00
	movq	-24(%rbp), %rax
	movl	$255, 12(%rax)
	movq	-24(%rbp), %rax
	movl	$-16777216, 16(%rax)            # imm = 0xFF000000
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	jmp	.LBB0_28
.LBB0_27:
	movq	-24(%rbp), %rax
	movl	$31744, 4(%rax)                 # imm = 0x7C00
	movq	-24(%rbp), %rax
	movl	$992, 8(%rax)                   # imm = 0x3E0
	movq	-24(%rbp), %rax
	movl	$31, 12(%rax)
.LBB0_28:
	jmp	.LBB0_36
.LBB0_29:
	cmpl	$3, -32(%rbp)
	jne	.LBB0_34
# %bb.30:
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jne	.LBB0_33
# %bb.31:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-24(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jne	.LBB0_33
# %bb.32:
	leaq	.L.str.4(%rip), %rsi
	movq	%rsi, %rdi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_50
.LBB0_33:
	jmp	.LBB0_35
.LBB0_34:
	leaq	.L.str.4(%rip), %rsi
	movq	%rsi, %rdi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_50
.LBB0_35:
	jmp	.LBB0_36
.LBB0_36:
	jmp	.LBB0_37
.LBB0_37:
	jmp	.LBB0_48
.LBB0_38:
	cmpl	$108, -28(%rbp)
	je	.LBB0_41
# %bb.39:
	cmpl	$124, -28(%rbp)
	je	.LBB0_41
# %bb.40:
	leaq	.L.str.4(%rip), %rsi
	movq	%rsi, %rdi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_50
.LBB0_41:
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movl	$0, -36(%rbp)
.LBB0_42:                               # =>This Inner Loop Header: Depth=1
	cmpl	$12, -36(%rbp)
	jge	.LBB0_45
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
# %bb.44:                               #   in Loop: Header=BB0_42 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_42
.LBB0_45:
	cmpl	$124, -28(%rbp)
	jne	.LBB0_47
# %bb.46:
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get32le@PLT
.LBB0_47:
	jmp	.LBB0_48
.LBB0_48:
	jmp	.LBB0_49
.LBB0_49:
	movl	$1, %eax
	movq	%rax, -8(%rbp)
.LBB0_50:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"not BMP"
.L.str.1:
	.asciz	"Corrupt BMP"
.L.str.2:
	.asciz	"unknown BMP"
.L.str.3:
	.asciz	"BMP type not supported: unknown"
.L.str.4:
	.asciz	"bad BMP"
.L.str.5:
	.asciz	"BMP RLE"
.L.str.6:
	.asciz	"BMP type not supported: RLE"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__bmp_parse_header
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__errpuc
	.addrsig_sym stbi__get32le
	.addrsig_sym stbi__get16le
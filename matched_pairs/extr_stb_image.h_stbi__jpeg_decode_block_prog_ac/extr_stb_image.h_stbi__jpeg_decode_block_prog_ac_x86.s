	.text
	.p2align	4, 0x90                         # -- Begin function stbi__jpeg_decode_block_prog_ac
stbi__jpeg_decode_block_prog_ac:        # @stbi__jpeg_decode_block_prog_ac
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_74
.LBB0_2:
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_23
# %bb.3:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 20(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB0_74
.LBB0_5:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpl	$16, 28(%rax)
	jge	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__grow_buffer_unsafe@PLT
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	movl	$32, %ecx
	subl	FAST_BITS(%rip), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	FAST_BITS(%rip), %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	subl	$1, %ecx
	andl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	movl	-60(%rbp), %eax
	sarl	$4, %eax
	andl	$15, %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-60(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	movl	%ecx, 32(%rax)
	movl	-64(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, 28(%rax)
	movq	stbi__jpeg_dezigzag(%rip), %rax
	movl	-44(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -52(%rbp)
	movl	-60(%rbp), %eax
	sarl	$8, %eax
	movl	-48(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movw	%ax, %dx
	movq	-24(%rbp), %rax
	movl	-52(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movw	%dx, (%rax,%rcx,2)
	jmp	.LBB0_20
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	stbi__jpeg_huff_decode@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jge	.LBB0_12
# %bb.11:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_74
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-68(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -64(%rbp)
	movl	-68(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -60(%rbp)
	cmpl	$0, -64(%rbp)
	jne	.LBB0_18
# %bb.13:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$15, -60(%rbp)
	jge	.LBB0_17
# %bb.14:
	movl	-60(%rbp), %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 20(%rax)
	cmpl	$0, -60(%rbp)
	je	.LBB0_16
# %bb.15:
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	stbi__jpeg_get_bits@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movslq	20(%rax), %rcx
	addq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, 20(%rax)
.LBB0_16:
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 20(%rax)
	jmp	.LBB0_22
.LBB0_17:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-44(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-60(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	stbi__jpeg_dezigzag(%rip), %rax
	movl	-44(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdi
	movl	-64(%rbp), %esi
	callq	stbi__extend_receive@PLT
	movl	-48(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movw	%ax, %dx
	movq	-24(%rbp), %rax
	movl	-52(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movw	%dx, (%rax,%rcx,2)
.LBB0_19:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jle	.LBB0_6
.LBB0_22:
	jmp	.LBB0_73
.LBB0_23:
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
                                        # kill: def $ax killed $ax killed $eax
	movw	%ax, -70(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB0_38
# %bb.24:
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 20(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jg	.LBB0_37
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=1
	movq	-24(%rbp), %rax
	movq	stbi__jpeg_dezigzag(%rip), %rcx
	movslq	-44(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movswl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_35
# %bb.27:                               #   in Loop: Header=BB0_25 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__jpeg_get_bit@PLT
	cmpq	$0, %rax
	je	.LBB0_34
# %bb.28:                               #   in Loop: Header=BB0_25 Depth=1
	movq	-80(%rbp), %rax
	movswl	(%rax), %eax
	movswl	-70(%rbp), %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	jne	.LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_25 Depth=1
	movq	-80(%rbp), %rax
	movswl	(%rax), %eax
	cmpl	$0, %eax
	jle	.LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_25 Depth=1
	movswl	-70(%rbp), %edx
	movq	-80(%rbp), %rax
	movswl	(%rax), %ecx
	addl	%edx, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	%cx, (%rax)
	jmp	.LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_25 Depth=1
	movswl	-70(%rbp), %edx
	movq	-80(%rbp), %rax
	movswl	(%rax), %ecx
	subl	%edx, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	%cx, (%rax)
.LBB0_32:                               #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_33
.LBB0_33:                               #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_34
.LBB0_34:                               #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_35
.LBB0_35:                               #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_36
.LBB0_36:                               #   in Loop: Header=BB0_25 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_25
.LBB0_37:
	jmp	.LBB0_72
.LBB0_38:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
.LBB0_39:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_55 Depth 2
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	stbi__jpeg_huff_decode@PLT
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jge	.LBB0_41
# %bb.40:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_74
.LBB0_41:                               #   in Loop: Header=BB0_39 Depth=1
	movl	-92(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -88(%rbp)
	movl	-92(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -84(%rbp)
	cmpl	$0, -88(%rbp)
	jne	.LBB0_48
# %bb.42:                               #   in Loop: Header=BB0_39 Depth=1
	cmpl	$15, -84(%rbp)
	jge	.LBB0_46
# %bb.43:                               #   in Loop: Header=BB0_39 Depth=1
	movl	-84(%rbp), %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 20(%rax)
	cmpl	$0, -84(%rbp)
	je	.LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_39 Depth=1
	movq	-16(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	stbi__jpeg_get_bits@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movslq	20(%rax), %rcx
	addq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, 20(%rax)
.LBB0_45:                               #   in Loop: Header=BB0_39 Depth=1
	movl	$64, -84(%rbp)
	jmp	.LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_39 Depth=1
	jmp	.LBB0_47
.LBB0_47:                               #   in Loop: Header=BB0_39 Depth=1
	jmp	.LBB0_54
.LBB0_48:                               #   in Loop: Header=BB0_39 Depth=1
	cmpl	$1, -88(%rbp)
	je	.LBB0_50
# %bb.49:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_74
.LBB0_50:                               #   in Loop: Header=BB0_39 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__jpeg_get_bit@PLT
	cmpq	$0, %rax
	je	.LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_39 Depth=1
	movswl	-70(%rbp), %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_39 Depth=1
	movswl	-70(%rbp), %ecx
	xorl	%eax, %eax
	subl	%ecx, %eax
	movl	%eax, -88(%rbp)
.LBB0_53:                               #   in Loop: Header=BB0_39 Depth=1
	jmp	.LBB0_54
.LBB0_54:                               #   in Loop: Header=BB0_39 Depth=1
	jmp	.LBB0_55
.LBB0_55:                               #   Parent Loop BB0_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jg	.LBB0_69
# %bb.56:                               #   in Loop: Header=BB0_55 Depth=2
	movq	-24(%rbp), %rax
	movq	stbi__jpeg_dezigzag(%rip), %rcx
	movl	-44(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -44(%rbp)
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movswl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_65
# %bb.57:                               #   in Loop: Header=BB0_55 Depth=2
	movq	-16(%rbp), %rdi
	callq	stbi__jpeg_get_bit@PLT
	cmpq	$0, %rax
	je	.LBB0_64
# %bb.58:                               #   in Loop: Header=BB0_55 Depth=2
	movq	-104(%rbp), %rax
	movswl	(%rax), %eax
	movswl	-70(%rbp), %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	jne	.LBB0_63
# %bb.59:                               #   in Loop: Header=BB0_55 Depth=2
	movq	-104(%rbp), %rax
	movswl	(%rax), %eax
	cmpl	$0, %eax
	jle	.LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_55 Depth=2
	movswl	-70(%rbp), %edx
	movq	-104(%rbp), %rax
	movswl	(%rax), %ecx
	addl	%edx, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	%cx, (%rax)
	jmp	.LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_55 Depth=2
	movswl	-70(%rbp), %edx
	movq	-104(%rbp), %rax
	movswl	(%rax), %ecx
	subl	%edx, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	%cx, (%rax)
.LBB0_62:                               #   in Loop: Header=BB0_55 Depth=2
	jmp	.LBB0_63
.LBB0_63:                               #   in Loop: Header=BB0_55 Depth=2
	jmp	.LBB0_64
.LBB0_64:                               #   in Loop: Header=BB0_55 Depth=2
	jmp	.LBB0_68
.LBB0_65:                               #   in Loop: Header=BB0_55 Depth=2
	cmpl	$0, -84(%rbp)
	jne	.LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_39 Depth=1
	movl	-88(%rbp), %eax
	movw	%ax, %cx
	movq	-104(%rbp), %rax
	movw	%cx, (%rax)
	jmp	.LBB0_69
.LBB0_67:                               #   in Loop: Header=BB0_55 Depth=2
	movl	-84(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -84(%rbp)
.LBB0_68:                               #   in Loop: Header=BB0_55 Depth=2
	jmp	.LBB0_55
.LBB0_69:                               #   in Loop: Header=BB0_39 Depth=1
	jmp	.LBB0_70
.LBB0_70:                               #   in Loop: Header=BB0_39 Depth=1
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jle	.LBB0_39
# %bb.71:
	jmp	.LBB0_72
.LBB0_72:
	jmp	.LBB0_73
.LBB0_73:
	movl	$1, -4(%rbp)
.LBB0_74:
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"can't merge dc and ac"
.L.str.1:
	.asciz	"Corrupt JPEG"
	.bss
	.globl	FAST_BITS
	.p2align	2
FAST_BITS:
	.long	0                               # 0x0
	.globl	stbi__jpeg_dezigzag
	.p2align	3
stbi__jpeg_dezigzag:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"bad huffman code"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_decode_block_prog_ac
	.addrsig_sym stbi__err
	.addrsig_sym stbi__grow_buffer_unsafe
	.addrsig_sym stbi__jpeg_huff_decode
	.addrsig_sym stbi__jpeg_get_bits
	.addrsig_sym stbi__extend_receive
	.addrsig_sym stbi__jpeg_get_bit
	.addrsig_sym FAST_BITS
	.addrsig_sym stbi__jpeg_dezigzag
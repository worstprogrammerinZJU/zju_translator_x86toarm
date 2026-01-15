	.text
	.p2align	4, 0x90                         # -- Begin function load_jpeg_image
load_jpeg_image:                        # @load_jpeg_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$384, %rsp                      # imm = 0x180
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, (%rax)
	cmpl	$0, -44(%rbp)
	jl	.LBB0_2
# %bb.1:
	cmpl	$4, -44(%rbp)
	jle	.LBB0_3
.LBB0_2:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_139
.LBB0_3:
	movq	-16(%rbp), %rdi
	callq	stbi__decode_jpeg_image@PLT
	cmpl	$0, %eax
	jne	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rdi
	callq	stbi__cleanup_jpeg@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_139
.LBB0_5:
	cmpl	$0, -44(%rbp)
	je	.LBB0_7
# %bb.6:
	movl	-44(%rbp), %eax
	movl	%eax, -348(%rbp)                # 4-byte Spill
	jmp	.LBB0_8
.LBB0_7:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %edx
	movl	$1, %eax
	movl	$3, %ecx
	cmpl	$3, %edx
	cmovgel	%ecx, %eax
	movl	%eax, -348(%rbp)                # 4-byte Spill
.LBB0_8:
	movl	-348(%rbp), %eax                # 4-byte Reload
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$3, (%rcx)
	movb	%al, -349(%rbp)                 # 1-byte Spill
	jne	.LBB0_14
# %bb.9:
	movq	-16(%rbp), %rcx
	movb	$1, %al
	cmpl	$3, (%rcx)
	movb	%al, -350(%rbp)                 # 1-byte Spill
	je	.LBB0_13
# %bb.10:
	movq	-16(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, 8(%rcx)
	movb	%al, -351(%rbp)                 # 1-byte Spill
	jne	.LBB0_12
# %bb.11:
	movq	-16(%rbp), %rax
	cmpl	$0, 56(%rax)
	setne	%al
	xorb	$-1, %al
	movb	%al, -351(%rbp)                 # 1-byte Spill
.LBB0_12:
	movb	-351(%rbp), %al                 # 1-byte Reload
	movb	%al, -350(%rbp)                 # 1-byte Spill
.LBB0_13:
	movb	-350(%rbp), %al                 # 1-byte Reload
	movb	%al, -349(%rbp)                 # 1-byte Spill
.LBB0_14:
	movb	-349(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$3, (%rax)
	jne	.LBB0_18
# %bb.15:
	cmpl	$3, -48(%rbp)
	jge	.LBB0_18
# %bb.16:
	cmpl	$0, -56(%rbp)
	jne	.LBB0_18
# %bb.17:
	movl	$1, -52(%rbp)
	jmp	.LBB0_19
.LBB0_18:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
.LBB0_19:
	movl	$0, -60(%rbp)
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB0_41
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	-272(%rbp), %rax
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -280(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %edi
	addl	$3, %edi
	callq	stbi__malloc@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movslq	-60(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movslq	-60(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB0_23
# %bb.22:
	movq	-16(%rbp), %rdi
	callq	stbi__cleanup_jpeg@PLT
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_139
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movslq	-60(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	cltd
	idivl	8(%rcx)
	movl	%eax, %ecx
	movq	-280(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movslq	-60(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	cltd
	idivl	12(%rcx)
	movl	%eax, %ecx
	movq	-280(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-280(%rbp), %rax
	movl	4(%rax), %ecx
	sarl	$1, %ecx
	movq	-280(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %eax
	movq	-280(%rbp), %rcx
	addl	(%rcx), %eax
	subl	$1, %eax
	movq	-280(%rbp), %rcx
	cltd
	idivl	(%rcx)
	movl	%eax, %ecx
	movq	-280(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-280(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movslq	-60(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	32(%rax), %ecx
	movq	-280(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-280(%rbp), %rax
	movl	%ecx, 36(%rax)
	movq	-280(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-280(%rbp), %rax
	cmpl	$1, 4(%rax)
	jne	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-280(%rbp), %rax
	movq	resample_row_1@GOTPCREL(%rip), %rcx
	movq	%rcx, 24(%rax)
	jmp	.LBB0_39
.LBB0_26:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-280(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-280(%rbp), %rax
	cmpl	$2, 4(%rax)
	jne	.LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-280(%rbp), %rax
	movq	stbi__resample_row_v_2@GOTPCREL(%rip), %rcx
	movq	%rcx, 24(%rax)
	jmp	.LBB0_38
.LBB0_29:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-280(%rbp), %rax
	cmpl	$2, (%rax)
	jne	.LBB0_32
# %bb.30:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-280(%rbp), %rax
	cmpl	$1, 4(%rax)
	jne	.LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-280(%rbp), %rax
	movq	stbi__resample_row_h_2@GOTPCREL(%rip), %rcx
	movq	%rcx, 24(%rax)
	jmp	.LBB0_37
.LBB0_32:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-280(%rbp), %rax
	cmpl	$2, (%rax)
	jne	.LBB0_35
# %bb.33:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-280(%rbp), %rax
	cmpl	$2, 4(%rax)
	jne	.LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-280(%rbp), %rax
	movq	%rcx, 24(%rax)
	jmp	.LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-280(%rbp), %rax
	movq	stbi__resample_row_generic@GOTPCREL(%rip), %rcx
	movq	%rcx, 24(%rax)
.LBB0_36:                               #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_37
.LBB0_37:                               #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_38
.LBB0_38:                               #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_39
.LBB0_39:                               #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_40
.LBB0_40:                               #   in Loop: Header=BB0_20 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_20
.LBB0_41:
	movl	-48(%rbp), %edi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %esi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %edx
	movl	$1, %ecx
	callq	stbi__malloc_mad3@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_43
# %bb.42:
	movq	-16(%rbp), %rdi
	callq	stbi__cleanup_jpeg@PLT
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_139
.LBB0_43:
	movl	$0, -68(%rbp)
.LBB0_44:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_46 Depth 2
                                        #     Child Loop BB0_63 Depth 2
                                        #     Child Loop BB0_72 Depth 2
                                        #     Child Loop BB0_78 Depth 2
                                        #     Child Loop BB0_86 Depth 2
                                        #     Child Loop BB0_95 Depth 2
                                        #     Child Loop BB0_100 Depth 2
                                        #     Child Loop BB0_108 Depth 2
                                        #     Child Loop BB0_115 Depth 2
                                        #     Child Loop BB0_121 Depth 2
                                        #     Child Loop BB0_126 Depth 2
	movl	-68(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB0_136
# %bb.45:                               #   in Loop: Header=BB0_44 Depth=1
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	imull	4(%rdx), %ecx
	imull	-68(%rbp), %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -288(%rbp)
	movl	$0, -60(%rbp)
.LBB0_46:                               #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB0_59
# %bb.47:                               #   in Loop: Header=BB0_46 Depth=2
	movslq	-60(%rbp), %rcx
	leaq	-272(%rbp), %rax
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movl	8(%rax), %eax
	movq	-296(%rbp), %rcx
	movl	4(%rcx), %ecx
	sarl	$1, %ecx
	cmpl	%ecx, %eax
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -300(%rbp)
	movq	-296(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -368(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movslq	-60(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)                # 8-byte Spill
	cmpl	$0, -300(%rbp)
	je	.LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_46 Depth=2
	movq	-296(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -372(%rbp)                # 4-byte Spill
	jmp	.LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_46 Depth=2
	movq	-296(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -372(%rbp)                # 4-byte Spill
.LBB0_50:                               #   in Loop: Header=BB0_46 Depth=2
	movl	-372(%rbp), %eax                # 4-byte Reload
	movl	%eax, -376(%rbp)                # 4-byte Spill
	cmpl	$0, -300(%rbp)
	je	.LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_46 Depth=2
	movq	-296(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -380(%rbp)                # 4-byte Spill
	jmp	.LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_46 Depth=2
	movq	-296(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -380(%rbp)                # 4-byte Spill
.LBB0_53:                               #   in Loop: Header=BB0_46 Depth=2
	movq	-368(%rbp), %rax                # 8-byte Reload
	movl	-376(%rbp), %esi                # 4-byte Reload
	movq	-360(%rbp), %rdi                # 8-byte Reload
	movl	-380(%rbp), %edx                # 4-byte Reload
	movq	-296(%rbp), %rcx
	movl	12(%rcx), %ecx
	movq	-296(%rbp), %r8
	movl	(%r8), %r8d
	callq	*%rax
	movq	%rax, %rcx
	movslq	-60(%rbp), %rax
	movq	%rcx, -112(%rbp,%rax,8)
	movq	-296(%rbp), %rcx
	movl	8(%rcx), %eax
	addl	$1, %eax
	movl	%eax, 8(%rcx)
	movq	-296(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jl	.LBB0_57
# %bb.54:                               #   in Loop: Header=BB0_46 Depth=2
	movq	-296(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-296(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-296(%rbp), %rax
	movl	%ecx, 36(%rax)
	movq	-296(%rbp), %rcx
	movq	16(%rcx), %rax
	addq	$1, %rax
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movslq	-60(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	cmpq	16(%rcx), %rax
	jge	.LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_46 Depth=2
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movslq	-60(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	24(%rax), %rdx
	movq	-296(%rbp), %rax
	movslq	32(%rax), %rcx
	addq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, 32(%rax)
.LBB0_56:                               #   in Loop: Header=BB0_46 Depth=2
	jmp	.LBB0_57
.LBB0_57:                               #   in Loop: Header=BB0_46 Depth=2
	jmp	.LBB0_58
.LBB0_58:                               #   in Loop: Header=BB0_46 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_46
.LBB0_59:                               #   in Loop: Header=BB0_44 Depth=1
	cmpl	$3, -48(%rbp)
	jl	.LBB0_92
# %bb.60:                               #   in Loop: Header=BB0_44 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$3, (%rax)
	jne	.LBB0_69
# %bb.61:                               #   in Loop: Header=BB0_44 Depth=1
	cmpl	$0, -56(%rbp)
	je	.LBB0_67
# %bb.62:                               #   in Loop: Header=BB0_44 Depth=1
	movl	$0, -64(%rbp)
.LBB0_63:                               #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB0_66
# %bb.64:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-312(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %ecx
	movq	-288(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-104(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %ecx
	movq	-288(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-96(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %ecx
	movq	-288(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-288(%rbp), %rax
	movl	$255, 12(%rax)
	movl	-48(%rbp), %ecx
	movq	-288(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -288(%rbp)
# %bb.65:                               #   in Loop: Header=BB0_63 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_63
.LBB0_66:                               #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_68
.LBB0_67:                               #   in Loop: Header=BB0_44 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-288(%rbp), %rdi
	movq	-312(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	32(%r8), %r8
	movl	4(%r8), %r8d
	movl	-48(%rbp), %r9d
	callq	*%rax
.LBB0_68:                               #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_91
.LBB0_69:                               #   in Loop: Header=BB0_44 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$4, (%rax)
	jne	.LBB0_85
# %bb.70:                               #   in Loop: Header=BB0_44 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_76
# %bb.71:                               #   in Loop: Header=BB0_44 Depth=1
	movl	$0, -64(%rbp)
.LBB0_72:                               #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB0_75
# %bb.73:                               #   in Loop: Header=BB0_72 Depth=2
	movq	-88(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -316(%rbp)
	movq	-112(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %edi
	movl	-316(%rbp), %esi
	callq	stbi__blinn_8x8@PLT
	movl	%eax, %ecx
	movq	-288(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-104(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %edi
	movl	-316(%rbp), %esi
	callq	stbi__blinn_8x8@PLT
	movl	%eax, %ecx
	movq	-288(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-96(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %edi
	movl	-316(%rbp), %esi
	callq	stbi__blinn_8x8@PLT
	movl	%eax, %ecx
	movq	-288(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-288(%rbp), %rax
	movl	$255, 12(%rax)
	movl	-48(%rbp), %ecx
	movq	-288(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -288(%rbp)
# %bb.74:                               #   in Loop: Header=BB0_72 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_72
.LBB0_75:                               #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_84
.LBB0_76:                               #   in Loop: Header=BB0_44 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$2, 8(%rax)
	jne	.LBB0_82
# %bb.77:                               #   in Loop: Header=BB0_44 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-288(%rbp), %rdi
	movq	-312(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	32(%r8), %r8
	movl	4(%r8), %r8d
	movl	-48(%rbp), %r9d
	callq	*%rax
	movl	$0, -64(%rbp)
.LBB0_78:                               #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB0_81
# %bb.79:                               #   in Loop: Header=BB0_78 Depth=2
	movq	-88(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -320(%rbp)
	movq	-288(%rbp), %rax
	movl	$255, %edi
	subl	(%rax), %edi
	movl	-320(%rbp), %esi
	callq	stbi__blinn_8x8@PLT
	movl	%eax, %ecx
	movq	-288(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-288(%rbp), %rax
	movl	$255, %edi
	subl	4(%rax), %edi
	movl	-320(%rbp), %esi
	callq	stbi__blinn_8x8@PLT
	movl	%eax, %ecx
	movq	-288(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-288(%rbp), %rax
	movl	$255, %edi
	subl	8(%rax), %edi
	movl	-320(%rbp), %esi
	callq	stbi__blinn_8x8@PLT
	movl	%eax, %ecx
	movq	-288(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-48(%rbp), %ecx
	movq	-288(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -288(%rbp)
# %bb.80:                               #   in Loop: Header=BB0_78 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_78
.LBB0_81:                               #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_83
.LBB0_82:                               #   in Loop: Header=BB0_44 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-288(%rbp), %rdi
	movq	-312(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	32(%r8), %r8
	movl	4(%r8), %r8d
	movl	-48(%rbp), %r9d
	callq	*%rax
.LBB0_83:                               #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_84
.LBB0_84:                               #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_90
.LBB0_85:                               #   in Loop: Header=BB0_44 Depth=1
	movl	$0, -64(%rbp)
.LBB0_86:                               #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB0_89
# %bb.87:                               #   in Loop: Header=BB0_86 Depth=2
	movq	-312(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %ecx
	movq	-288(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-288(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-288(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-288(%rbp), %rax
	movl	$255, 12(%rax)
	movl	-48(%rbp), %ecx
	movq	-288(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -288(%rbp)
# %bb.88:                               #   in Loop: Header=BB0_86 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_86
.LBB0_89:                               #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_90
.LBB0_90:                               #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_91
.LBB0_91:                               #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_134
.LBB0_92:                               #   in Loop: Header=BB0_44 Depth=1
	cmpl	$0, -56(%rbp)
	je	.LBB0_105
# %bb.93:                               #   in Loop: Header=BB0_44 Depth=1
	cmpl	$1, -48(%rbp)
	jne	.LBB0_99
# %bb.94:                               #   in Loop: Header=BB0_44 Depth=1
	movl	$0, -64(%rbp)
.LBB0_95:                               #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB0_98
# %bb.96:                               #   in Loop: Header=BB0_95 Depth=2
	movq	-112(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %edi
	movq	-104(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %esi
	movq	-96(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %edx
	callq	stbi__compute_y@PLT
	movl	%eax, %ecx
	movq	-288(%rbp), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, -288(%rbp)
	movl	%ecx, (%rax)
# %bb.97:                               #   in Loop: Header=BB0_95 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_95
.LBB0_98:                               #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_104
.LBB0_99:                               #   in Loop: Header=BB0_44 Depth=1
	movl	$0, -64(%rbp)
.LBB0_100:                              #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB0_103
# %bb.101:                              #   in Loop: Header=BB0_100 Depth=2
	movq	-112(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %edi
	movq	-104(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %esi
	movq	-96(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %edx
	callq	stbi__compute_y@PLT
	movl	%eax, %ecx
	movq	-288(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-288(%rbp), %rax
	movl	$255, 4(%rax)
# %bb.102:                              #   in Loop: Header=BB0_100 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movq	-288(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -288(%rbp)
	jmp	.LBB0_100
.LBB0_103:                              #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_104
.LBB0_104:                              #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_133
.LBB0_105:                              #   in Loop: Header=BB0_44 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$4, (%rax)
	jne	.LBB0_112
# %bb.106:                              #   in Loop: Header=BB0_44 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_112
# %bb.107:                              #   in Loop: Header=BB0_44 Depth=1
	movl	$0, -64(%rbp)
.LBB0_108:                              #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB0_111
# %bb.109:                              #   in Loop: Header=BB0_108 Depth=2
	movq	-88(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -324(%rbp)
	movq	-112(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %edi
	movl	-324(%rbp), %esi
	callq	stbi__blinn_8x8@PLT
	movl	%eax, -328(%rbp)
	movq	-104(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %edi
	movl	-324(%rbp), %esi
	callq	stbi__blinn_8x8@PLT
	movl	%eax, -332(%rbp)
	movq	-96(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %edi
	movl	-324(%rbp), %esi
	callq	stbi__blinn_8x8@PLT
	movl	%eax, -336(%rbp)
	movl	-328(%rbp), %edi
	movl	-332(%rbp), %esi
	movl	-336(%rbp), %edx
	callq	stbi__compute_y@PLT
	movl	%eax, %ecx
	movq	-288(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-288(%rbp), %rax
	movl	$255, 4(%rax)
	movl	-48(%rbp), %ecx
	movq	-288(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -288(%rbp)
# %bb.110:                              #   in Loop: Header=BB0_108 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_108
.LBB0_111:                              #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_132
.LBB0_112:                              #   in Loop: Header=BB0_44 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$4, (%rax)
	jne	.LBB0_119
# %bb.113:                              #   in Loop: Header=BB0_44 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$2, 8(%rax)
	jne	.LBB0_119
# %bb.114:                              #   in Loop: Header=BB0_44 Depth=1
	movl	$0, -64(%rbp)
.LBB0_115:                              #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB0_118
# %bb.116:                              #   in Loop: Header=BB0_115 Depth=2
	movq	-112(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	$255, %edi
	subl	(%rax,%rcx,4), %edi
	movq	-88(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %esi
	callq	stbi__blinn_8x8@PLT
	movl	%eax, %ecx
	movq	-288(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-288(%rbp), %rax
	movl	$255, 4(%rax)
	movl	-48(%rbp), %ecx
	movq	-288(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -288(%rbp)
# %bb.117:                              #   in Loop: Header=BB0_115 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_115
.LBB0_118:                              #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_131
.LBB0_119:                              #   in Loop: Header=BB0_44 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -344(%rbp)
	cmpl	$1, -48(%rbp)
	jne	.LBB0_125
# %bb.120:                              #   in Loop: Header=BB0_44 Depth=1
	movl	$0, -64(%rbp)
.LBB0_121:                              #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB0_124
# %bb.122:                              #   in Loop: Header=BB0_121 Depth=2
	movq	-344(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %edx
	movq	-288(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	%edx, (%rax,%rcx,4)
# %bb.123:                              #   in Loop: Header=BB0_121 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_121
.LBB0_124:                              #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_130
.LBB0_125:                              #   in Loop: Header=BB0_44 Depth=1
	movl	$0, -64(%rbp)
.LBB0_126:                              #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB0_129
# %bb.127:                              #   in Loop: Header=BB0_126 Depth=2
	movq	-344(%rbp), %rax
	movl	-64(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movl	(%rax,%rcx,4), %ecx
	movq	-288(%rbp), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, -288(%rbp)
	movl	%ecx, (%rax)
	movq	-288(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -288(%rbp)
	movl	$255, (%rax)
# %bb.128:                              #   in Loop: Header=BB0_126 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_126
.LBB0_129:                              #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_130
.LBB0_130:                              #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_131
.LBB0_131:                              #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_132
.LBB0_132:                              #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_133
.LBB0_133:                              #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_134
.LBB0_134:                              #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_135
.LBB0_135:                              #   in Loop: Header=BB0_44 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_44
.LBB0_136:
	movq	-16(%rbp), %rdi
	callq	stbi__cleanup_jpeg@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.LBB0_138
# %bb.137:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %edx
	movl	$1, %ecx
	movl	$3, %eax
	cmpl	$3, %edx
	cmovgel	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_138:
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_139:
	movq	-8(%rbp), %rax
	addq	$384, %rsp                      # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad req_comp"
.L.str.1:
	.asciz	"Internal error"
.L.str.2:
	.asciz	"outofmem"
.L.str.3:
	.asciz	"Out of memory"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_jpeg_image
	.addrsig_sym stbi__errpuc
	.addrsig_sym stbi__decode_jpeg_image
	.addrsig_sym stbi__cleanup_jpeg
	.addrsig_sym stbi__malloc
	.addrsig_sym resample_row_1
	.addrsig_sym stbi__resample_row_v_2
	.addrsig_sym stbi__resample_row_h_2
	.addrsig_sym stbi__resample_row_generic
	.addrsig_sym stbi__malloc_mad3
	.addrsig_sym stbi__blinn_8x8
	.addrsig_sym stbi__compute_y
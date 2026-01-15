	.text
	.p2align	4, 0x90                         # -- Begin function stbi_write_tga_core
stbi_write_tga_core:                    # @stbi_write_tga_core
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp                      # imm = 0x108
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	%r8, -80(%rbp)
	movb	$1, %al
	cmpl	$2, -68(%rbp)
	movb	%al, -155(%rbp)                 # 1-byte Spill
	je	.LBB0_2
# %bb.1:
	cmpl	$4, -68(%rbp)
	sete	%al
	movb	%al, -155(%rbp)                 # 1-byte Spill
.LBB0_2:
	movb	-155(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	je	.LBB0_4
# %bb.3:
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -160(%rbp)                # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	movl	-68(%rbp), %eax
	movl	%eax, -160(%rbp)                # 4-byte Spill
.LBB0_5:
	movl	-160(%rbp), %eax                # 4-byte Reload
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %edx
	movl	$2, %eax
	movl	$3, %ecx
	cmpl	$2, %edx
	cmovll	%ecx, %eax
	movl	%eax, -92(%rbp)
	cmpl	$0, -64(%rbp)
	jl	.LBB0_7
# %bb.6:
	cmpl	$0, -60(%rbp)
	jge	.LBB0_8
.LBB0_7:
	movl	$0, -44(%rbp)
	jmp	.LBB0_53
.LBB0_8:
	cmpl	$0, stbi_write_tga_with_rle(%rip)
	jne	.LBB0_10
# %bb.9:
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-68(%rbp), %r9d
	movq	-80(%rbp), %r13
	movl	-84(%rbp), %r12d
	movl	-92(%rbp), %r14d
	movl	-60(%rbp), %ebx
	movl	-64(%rbp), %r11d
	movl	-88(%rbp), %r10d
	addl	-84(%rbp), %r10d
	shll	$3, %r10d
	movl	-84(%rbp), %eax
	shll	$3, %eax
	movl	$4294967295, %edx               # imm = 0xFFFFFFFF
	xorl	%esi, %esi
	leaq	.L.str(%rip), %r15
	movl	%edx, %esi
	movl	$0, (%rsp)
	movq	%r13, 8(%rsp)
	movl	%r12d, 16(%rsp)
	movl	$0, 24(%rsp)
	movq	%r15, 32(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	%r14d, 56(%rsp)
	movl	$0, 64(%rsp)
	movl	$0, 72(%rsp)
	movl	$0, 80(%rsp)
	movl	$0, 88(%rsp)
	movl	$0, 96(%rsp)
	movl	%ebx, 104(%rsp)
	movl	%r11d, 112(%rsp)
	movl	%r10d, 120(%rsp)
	movl	%eax, 128(%rsp)
	callq	stbiw__outfile@PLT
	movl	%eax, -44(%rbp)
	jmp	.LBB0_53
.LBB0_10:
	movq	-56(%rbp), %rdi
	movl	-92(%rbp), %r8d
	addl	$8, %r8d
	movl	-60(%rbp), %ebx
	movl	-64(%rbp), %r11d
	movl	-88(%rbp), %r10d
	addl	-84(%rbp), %r10d
	shll	$3, %r10d
	movl	-84(%rbp), %eax
	shll	$3, %eax
	leaq	.L.str(%rip), %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, 32(%rsp)
	movl	%r11d, 40(%rsp)
	movl	%r10d, 48(%rsp)
	movl	%eax, 56(%rsp)
	callq	stbiw__writef@PLT
	cmpq	$0, stbi__flip_vertically_on_write(%rip)
	je	.LBB0_12
# %bb.11:
	movl	$0, -100(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	$1, -112(%rbp)
	jmp	.LBB0_13
.LBB0_12:
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -100(%rbp)
	movl	$-1, -108(%rbp)
	movl	$-1, -112(%rbp)
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_20 Depth 3
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_42 Depth 3
	movl	-100(%rbp), %eax
	cmpl	-108(%rbp), %eax
	je	.LBB0_51
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	movq	-80(%rbp), %rax
	movl	-100(%rbp), %ecx
	imull	-60(%rbp), %ecx
	imull	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movl	$0, -96(%rbp)
.LBB0_16:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_20 Depth 3
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_42 Depth 3
	movl	-96(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB0_49
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	movq	-120(%rbp), %rax
	movl	-96(%rbp), %ecx
	imull	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movl	$1, -140(%rbp)
	movl	$1, -124(%rbp)
	movl	-96(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_40
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	movq	-136(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	-96(%rbp), %eax
	addl	$1, %eax
	imull	-68(%rbp), %eax
	cltq
	addq	%rax, %rsi
	movl	-68(%rbp), %edx
	callq	memcmp@PLT
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	je	.LBB0_29
# %bb.19:                               #   in Loop: Header=BB0_16 Depth=2
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-96(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -104(%rbp)
.LBB0_20:                               #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-104(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-60(%rbp), %ecx
	movb	%al, -161(%rbp)                 # 1-byte Spill
	jge	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=3
	cmpl	$128, -124(%rbp)
	setl	%al
	movb	%al, -161(%rbp)                 # 1-byte Spill
.LBB0_22:                               #   in Loop: Header=BB0_20 Depth=3
	movb	-161(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_23
	jmp	.LBB0_28
.LBB0_23:                               #   in Loop: Header=BB0_20 Depth=3
	movq	-152(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	-104(%rbp), %eax
	imull	-68(%rbp), %eax
	cltq
	addq	%rax, %rsi
	movl	-68(%rbp), %edx
	callq	memcmp@PLT
	cmpl	$0, %eax
	je	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=3
	movl	-68(%rbp), %ecx
	movq	-152(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_16 Depth=2
	movl	-124(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB0_28
.LBB0_26:                               #   in Loop: Header=BB0_20 Depth=3
	jmp	.LBB0_27
.LBB0_27:                               #   in Loop: Header=BB0_20 Depth=3
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB0_20
.LBB0_28:                               #   in Loop: Header=BB0_16 Depth=2
	jmp	.LBB0_39
.LBB0_29:                               #   in Loop: Header=BB0_16 Depth=2
	movl	-96(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -104(%rbp)
.LBB0_30:                               #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-104(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-60(%rbp), %ecx
	movb	%al, -162(%rbp)                 # 1-byte Spill
	jge	.LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=3
	cmpl	$128, -124(%rbp)
	setl	%al
	movb	%al, -162(%rbp)                 # 1-byte Spill
.LBB0_32:                               #   in Loop: Header=BB0_30 Depth=3
	movb	-162(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_33
	jmp	.LBB0_38
.LBB0_33:                               #   in Loop: Header=BB0_30 Depth=3
	movq	-136(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	-104(%rbp), %eax
	imull	-68(%rbp), %eax
	cltq
	addq	%rax, %rsi
	movl	-68(%rbp), %edx
	callq	memcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_30 Depth=3
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_16 Depth=2
	jmp	.LBB0_38
.LBB0_36:                               #   in Loop: Header=BB0_30 Depth=3
	jmp	.LBB0_37
.LBB0_37:                               #   in Loop: Header=BB0_30 Depth=3
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB0_30
.LBB0_38:                               #   in Loop: Header=BB0_16 Depth=2
	jmp	.LBB0_39
.LBB0_39:                               #   in Loop: Header=BB0_16 Depth=2
	jmp	.LBB0_40
.LBB0_40:                               #   in Loop: Header=BB0_16 Depth=2
	cmpl	$0, -140(%rbp)
	je	.LBB0_46
# %bb.41:                               #   in Loop: Header=BB0_16 Depth=2
	movl	-124(%rbp), %edi
	subl	$1, %edi
	callq	STBIW_UCHAR@PLT
	movb	%al, -153(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	movl	(%rcx), %edi
	leaq	-153(%rbp), %rsi
	movl	$1, %edx
	callq	*%rax
	movl	$0, -104(%rbp)
.LBB0_42:                               #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-104(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB0_45
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=3
	movq	-56(%rbp), %rdi
	movl	-68(%rbp), %edx
	movl	-84(%rbp), %ecx
	movq	-136(%rbp), %r9
	movl	-104(%rbp), %eax
	imull	-68(%rbp), %eax
	cltq
	addq	%rax, %r9
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	xorl	%r8d, %r8d
	callq	stbiw__write_pixel@PLT
# %bb.44:                               #   in Loop: Header=BB0_42 Depth=3
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB0_42
.LBB0_45:                               #   in Loop: Header=BB0_16 Depth=2
	jmp	.LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_16 Depth=2
	movl	-124(%rbp), %edi
	subl	$129, %edi
	callq	STBIW_UCHAR@PLT
	movb	%al, -154(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	movl	(%rcx), %edi
	leaq	-154(%rbp), %rsi
	movl	$1, %edx
	callq	*%rax
	movq	-56(%rbp), %rdi
	movl	-68(%rbp), %edx
	movl	-84(%rbp), %ecx
	movq	-136(%rbp), %r9
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	xorl	%r8d, %r8d
	callq	stbiw__write_pixel@PLT
.LBB0_47:                               #   in Loop: Header=BB0_16 Depth=2
	jmp	.LBB0_48
.LBB0_48:                               #   in Loop: Header=BB0_16 Depth=2
	movl	-124(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB0_16
.LBB0_49:                               #   in Loop: Header=BB0_14 Depth=1
	jmp	.LBB0_50
.LBB0_50:                               #   in Loop: Header=BB0_14 Depth=1
	movl	-112(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB0_14
.LBB0_51:
	jmp	.LBB0_52
.LBB0_52:
	movl	$1, -44(%rbp)
.LBB0_53:
	movl	-44(%rbp), %eax
	addq	$264, %rsp                      # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stbi_write_tga_with_rle
	.p2align	2
stbi_write_tga_with_rle:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"111 221 2222 11"
	.bss
	.globl	stbi__flip_vertically_on_write
	.p2align	3
stbi__flip_vertically_on_write:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi_write_tga_core
	.addrsig_sym stbiw__outfile
	.addrsig_sym stbiw__writef
	.addrsig_sym memcmp
	.addrsig_sym STBIW_UCHAR
	.addrsig_sym stbiw__write_pixel
	.addrsig_sym stbi_write_tga_with_rle
	.addrsig_sym stbi__flip_vertically_on_write
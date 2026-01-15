	.text
	.p2align	4, 0x90                         # -- Begin function stbi__jpeg_decode_block
stbi__jpeg_decode_block:                # @stbi__jpeg_decode_block
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$16, (%rax)
	jge	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	stbi__grow_buffer_unsafe@PLT
.LBB0_2:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	stbi__jpeg_huff_decode@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jge	.LBB0_4
# %bb.3:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_23
.LBB0_4:
	movq	-24(%rbp), %rdi
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset@PLT
	cmpl	$0, -68(%rbp)
	je	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	stbi__extend_receive@PLT
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	jmp	.LBB0_7
.LBB0_6:
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	jmp	.LBB0_7
.LBB0_7:
	movl	-92(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-52(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-52(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-60(%rbp), %eax
	movq	16(%rbp), %rcx
	imull	(%rcx), %eax
	movw	%ax, %cx
	movq	-24(%rbp), %rax
	movw	%cx, (%rax)
	movl	$1, -64(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpl	$16, (%rax)
	jge	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__grow_buffer_unsafe@PLT
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
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
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-80(%rbp), %eax
	sarl	$4, %eax
	andl	$15, %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-80(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	movl	%ecx, 4(%rax)
	movl	-84(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movq	stbi__jpeg_dezigzag(%rip), %rax
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -64(%rbp)
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -72(%rbp)
	movl	-80(%rbp), %eax
	sarl	$8, %eax
	movq	16(%rbp), %rcx
	movl	-72(%rbp), %edx
                                        # kill: def $rdx killed $edx
	imull	(%rcx,%rdx,4), %eax
	movw	%ax, %dx
	movq	-24(%rbp), %rax
	movl	-72(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movw	%dx, (%rax,%rcx,2)
	jmp	.LBB0_20
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	stbi__jpeg_huff_decode@PLT
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	jge	.LBB0_14
# %bb.13:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_23
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-88(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -84(%rbp)
	movl	-88(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_8 Depth=1
	cmpl	$240, -88(%rbp)
	je	.LBB0_17
# %bb.16:
	jmp	.LBB0_22
.LBB0_17:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-64(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-80(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	stbi__jpeg_dezigzag(%rip), %rax
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -64(%rbp)
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	stbi__extend_receive@PLT
	movq	16(%rbp), %rcx
	movl	-72(%rbp), %edx
                                        # kill: def $rdx killed $edx
	imull	(%rcx,%rdx,4), %eax
	movw	%ax, %dx
	movq	-24(%rbp), %rax
	movl	-72(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movw	%dx, (%rax,%rcx,2)
.LBB0_19:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_8 Depth=1
	cmpl	$64, -64(%rbp)
	jl	.LBB0_8
.LBB0_22:
	movl	$1, -4(%rbp)
.LBB0_23:
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad huffman code"
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_decode_block
	.addrsig_sym stbi__grow_buffer_unsafe
	.addrsig_sym stbi__jpeg_huff_decode
	.addrsig_sym stbi__err
	.addrsig_sym memset
	.addrsig_sym stbi__extend_receive
	.addrsig_sym FAST_BITS
	.addrsig_sym stbi__jpeg_dezigzag
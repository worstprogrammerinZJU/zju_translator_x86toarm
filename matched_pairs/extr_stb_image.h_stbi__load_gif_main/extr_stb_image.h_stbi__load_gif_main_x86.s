	.text
	.p2align	4, 0x90                         # -- Begin function stbi__load_gif_main
stbi__load_gif_main:                    # @stbi__load_gif_main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__gif_test@PLT
	cmpq	$0, %rax
	je	.LBB0_25
# %bb.1:
	movl	$0, -60(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	cmpq	$0, -24(%rbp)
	je	.LBB0_3
# %bb.2:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.LBB0_3:
	jmp	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movl	16(%rbp), %ecx
	movq	-88(%rbp), %r8
	leaq	-112(%rbp), %rsi
	callq	stbi__gif_load_next@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	$0, -72(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_19
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-112(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-108(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-112(%rbp), %eax
	imull	-108(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -116(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-80(%rbp), %rdi
	movl	-60(%rbp), %esi
	imull	-116(%rbp), %esi
	callq	STBI_REALLOC@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movslq	-60(%rbp), %rax
	shlq	$2, %rax
	movl	%eax, %esi
	callq	STBI_REALLOC@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_10:                               #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_4 Depth=1
	movl	-60(%rbp), %edi
	imull	-116(%rbp), %edi
	callq	stbi__malloc@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_4 Depth=1
	movslq	-60(%rbp), %rax
	shlq	$2, %rax
	movl	%eax, %edi
	callq	stbi__malloc@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
	movq	-80(%rbp), %rdi
	movl	-60(%rbp), %eax
	subl	$1, %eax
	imull	-116(%rbp), %eax
	cltq
	addq	%rax, %rdi
	movq	-72(%rbp), %rsi
	movl	-116(%rbp), %edx
	callq	memcpy@PLT
	cmpl	$2, -60(%rbp)
	jl	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_4 Depth=1
	movq	-80(%rbp), %rax
	movl	-116(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_4 Depth=1
	movl	-104(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movl	%edx, (%rax,%rcx,4)
.LBB0_18:                               #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_4 Depth=1
	cmpq	$0, -72(%rbp)
	jne	.LBB0_4
# %bb.21:
	movl	-92(%rbp), %edi
	callq	STBI_FREE@PLT
	movl	-96(%rbp), %edi
	callq	STBI_FREE@PLT
	movl	-100(%rbp), %edi
	callq	STBI_FREE@PLT
	cmpl	$0, 16(%rbp)
	je	.LBB0_24
# %bb.22:
	cmpl	$4, 16(%rbp)
	je	.LBB0_24
# %bb.23:
	movq	-80(%rbp), %rdi
	movl	16(%rbp), %edx
	movl	-60(%rbp), %ecx
	imull	-112(%rbp), %ecx
	movl	-108(%rbp), %r8d
	movl	$4, %esi
	callq	stbi__convert_format@PLT
	movq	%rax, -80(%rbp)
.LBB0_24:
	movl	-60(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_25:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
.LBB0_26:
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"not GIF"
.L.str.1:
	.asciz	"Image was not as a gif type."
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__load_gif_main
	.addrsig_sym stbi__gif_test
	.addrsig_sym memset
	.addrsig_sym stbi__gif_load_next
	.addrsig_sym STBI_REALLOC
	.addrsig_sym stbi__malloc
	.addrsig_sym memcpy
	.addrsig_sym STBI_FREE
	.addrsig_sym stbi__convert_format
	.addrsig_sym stbi__errpuc
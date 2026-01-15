	.text
	.p2align	4, 0x90                         # -- Begin function stbi__decode_jpeg_header
stbi__decode_jpeg_header:               # @stbi__decode_jpeg_header
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, (%rax)
	movl	STBI__MARKER_none(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get_marker@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edi
	callq	stbi__SOI@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_2:
	movl	-20(%rbp), %eax
	cmpl	STBI__SCAN_type(%rip), %eax
	jne	.LBB0_4
# %bb.3:
	movl	$1, -4(%rbp)
	jmp	.LBB0_17
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	stbi__get_marker@PLT
	movl	%eax, -24(%rbp)
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	movl	-24(%rbp), %edi
	callq	stbi__SOF@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_14
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	stbi__process_marker@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:
	movl	$0, -4(%rbp)
	jmp	.LBB0_17
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__get_marker@PLT
	movl	%eax, -24(%rbp)
.LBB0_9:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	STBI__MARKER_none(%rip), %eax
	jne	.LBB0_13
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__at_eof@PLT
	cmpq	$0, %rax
	je	.LBB0_12
# %bb.11:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-16(%rbp), %rdi
	callq	stbi__get_marker@PLT
	movl	%eax, -24(%rbp)
	jmp	.LBB0_9
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_5
.LBB0_14:
	movl	-24(%rbp), %edi
	callq	stbi__SOF_progressive@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	stbi__process_frame_header@PLT
	cmpl	$0, %eax
	jne	.LBB0_16
# %bb.15:
	movl	$0, -4(%rbp)
	jmp	.LBB0_17
.LBB0_16:
	movl	$1, -4(%rbp)
.LBB0_17:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STBI__MARKER_none
	.p2align	2
STBI__MARKER_none:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"no SOI"
.L.str.1:
	.asciz	"Corrupt JPEG"
	.bss
	.globl	STBI__SCAN_type
	.p2align	2
STBI__SCAN_type:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"no SOF"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__decode_jpeg_header
	.addrsig_sym stbi__get_marker
	.addrsig_sym stbi__SOI
	.addrsig_sym stbi__err
	.addrsig_sym stbi__SOF
	.addrsig_sym stbi__process_marker
	.addrsig_sym stbi__at_eof
	.addrsig_sym stbi__SOF_progressive
	.addrsig_sym stbi__process_frame_header
	.addrsig_sym STBI__MARKER_none
	.addrsig_sym STBI__SCAN_type
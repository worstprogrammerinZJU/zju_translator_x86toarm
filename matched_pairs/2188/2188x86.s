	.text
	.p2align	4, 0x90                         # -- Begin function stbi__decode_jpeg_image
stbi__decode_jpeg_image:                # @stbi__decode_jpeg_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, -20(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	$0, (%rax)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rdi
	movl	STBI__SCAN_load(%rip), %esi
	callq	stbi__decode_jpeg_header@PLT
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:
	movl	$0, -4(%rbp)
	jmp	.LBB0_35
.LBB0_6:
	movq	-16(%rbp), %rdi
	callq	stbi__get_marker@PLT
	movl	%eax, -20(%rbp)
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	movl	-20(%rbp), %edi
	callq	stbi__EOI@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_8
	jmp	.LBB0_32
.LBB0_8:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-20(%rbp), %edi
	callq	stbi__SOS@PLT
	cmpq	$0, %rax
	je	.LBB0_21
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__process_scan_header@PLT
	cmpl	$0, %eax
	jne	.LBB0_11
# %bb.10:
	movl	$0, -4(%rbp)
	jmp	.LBB0_35
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__parse_entropy_coded_data@PLT
	cmpl	$0, %eax
	jne	.LBB0_13
# %bb.12:
	movl	$0, -4(%rbp)
	jmp	.LBB0_35
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	STBI__MARKER_none(%rip), %rax
	jne	.LBB0_20
# %bb.14:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	stbi__at_eof@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_16
	jmp	.LBB0_19
.LBB0_16:                               #   in Loop: Header=BB0_15 Depth=2
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -24(%rbp)
	cmpl	$255, -24(%rbp)
	jne	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	stbi__get8@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	jmp	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=2
	jmp	.LBB0_15
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_31
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-20(%rbp), %edi
	callq	stbi__DNL@PLT
	cmpq	$0, %rax
	je	.LBB0_27
# %bb.22:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	stbi__get16be@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	stbi__get16be@PLT
	movq	%rax, -40(%rbp)
	cmpl	$4, -28(%rbp)
	je	.LBB0_24
# %bb.23:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_35
.LBB0_24:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	(%rcx), %rax
	je	.LBB0_26
# %bb.25:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_35
.LBB0_26:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_30
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	stbi__process_marker@PLT
	cmpl	$0, %eax
	jne	.LBB0_29
# %bb.28:
	movl	$0, -4(%rbp)
	jmp	.LBB0_35
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_30
.LBB0_30:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_31
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__get_marker@PLT
	movl	%eax, -20(%rbp)
	jmp	.LBB0_7
.LBB0_32:
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_34
# %bb.33:
	movq	-16(%rbp), %rdi
	callq	stbi__jpeg_finish@PLT
.LBB0_34:
	movl	$1, -4(%rbp)
.LBB0_35:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STBI__SCAN_load
	.p2align	2
STBI__SCAN_load:
	.long	0                               # 0x0
	.globl	STBI__MARKER_none
	.p2align	3
STBI__MARKER_none:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad DNL len"
.L.str.1:
	.asciz	"Corrupt JPEG"
.L.str.2:
	.asciz	"bad DNL height"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__decode_jpeg_image
	.addrsig_sym stbi__decode_jpeg_header
	.addrsig_sym stbi__get_marker
	.addrsig_sym stbi__EOI
	.addrsig_sym stbi__SOS
	.addrsig_sym stbi__process_scan_header
	.addrsig_sym stbi__parse_entropy_coded_data
	.addrsig_sym stbi__at_eof
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__DNL
	.addrsig_sym stbi__get16be
	.addrsig_sym stbi__err
	.addrsig_sym stbi__process_marker
	.addrsig_sym stbi__jpeg_finish
	.addrsig_sym STBI__SCAN_load
	.addrsig_sym STBI__MARKER_none
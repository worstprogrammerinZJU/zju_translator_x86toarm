	.text
	.globl	save_image_options              # -- Begin function save_image_options
	.p2align	4, 0x90
save_image_options:                     # @save_image_options
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$320, %rsp                      # imm = 0x140
	leaq	16(%rbp), %rax
	movq	%rax, -320(%rbp)                # 8-byte Spill
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	cmpq	PNG(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	leaq	-288(%rbp), %rdi
	movq	-8(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	callq	sprintf@PLT
	jmp	.LBB0_12
.LBB0_2:
	movq	-16(%rbp), %rax
	cmpq	BMP(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	leaq	-288(%rbp), %rdi
	movq	-8(%rbp), %rdx
	leaq	.L.str.1(%rip), %rsi
	callq	sprintf@PLT
	jmp	.LBB0_11
.LBB0_4:
	movq	-16(%rbp), %rax
	cmpq	TGA(%rip), %rax
	jne	.LBB0_6
# %bb.5:
	leaq	-288(%rbp), %rdi
	movq	-8(%rbp), %rdx
	leaq	.L.str.2(%rip), %rsi
	callq	sprintf@PLT
	jmp	.LBB0_10
.LBB0_6:
	movq	-16(%rbp), %rax
	cmpq	JPG(%rip), %rax
	jne	.LBB0_8
# %bb.7:
	leaq	-288(%rbp), %rdi
	movq	-8(%rbp), %rdx
	leaq	.L.str.3(%rip), %rsi
	callq	sprintf@PLT
	jmp	.LBB0_9
.LBB0_8:
	leaq	-288(%rbp), %rdi
	movq	-8(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	callq	sprintf@PLT
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	movq	-320(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	$1, %esi
	callq	calloc@PLT
	movq	%rax, -296(%rbp)
	movl	$0, -304(%rbp)
.LBB0_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	movq	-320(%rbp), %rcx                # 8-byte Reload
	movl	-304(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_20
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movl	$0, -300(%rbp)
.LBB0_15:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-320(%rbp), %rdx                # 8-byte Reload
	movl	-300(%rbp), %eax
	movl	(%rdx), %ecx
	imull	4(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	movq	-320(%rbp), %rsi                # 8-byte Reload
	movq	16(%rsi), %rax
	movl	-300(%rbp), %ecx
	movl	-304(%rbp), %edx
	imull	(%rsi), %edx
	imull	4(%rsi), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	imull	$255, (%rax,%rcx,4), %eax
	movb	%al, %dl
	movq	-296(%rbp), %rax
	movl	-300(%rbp), %ecx
	imull	8(%rsi), %ecx
	addl	-304(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	movl	-300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	jmp	.LBB0_15
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	jmp	.LBB0_13
.LBB0_20:
	movl	$0, -308(%rbp)
	movq	-16(%rbp), %rax
	cmpq	PNG(%rip), %rax
	jne	.LBB0_22
# %bb.21:
	movq	-320(%rbp), %rax                # 8-byte Reload
	leaq	-288(%rbp), %rdi
	movl	(%rax), %esi
	movl	4(%rax), %edx
	movl	8(%rax), %ecx
	movq	-296(%rbp), %r8
	movl	(%rax), %r9d
	imull	8(%rax), %r9d
	callq	stbi_write_png@PLT
	movl	%eax, -308(%rbp)
	jmp	.LBB0_31
.LBB0_22:
	movq	-16(%rbp), %rax
	cmpq	BMP(%rip), %rax
	jne	.LBB0_24
# %bb.23:
	movq	-320(%rbp), %rax                # 8-byte Reload
	leaq	-288(%rbp), %rdi
	movl	(%rax), %esi
	movl	4(%rax), %edx
	movl	8(%rax), %ecx
	movq	-296(%rbp), %r8
	callq	stbi_write_bmp@PLT
	movl	%eax, -308(%rbp)
	jmp	.LBB0_30
.LBB0_24:
	movq	-16(%rbp), %rax
	cmpq	TGA(%rip), %rax
	jne	.LBB0_26
# %bb.25:
	movq	-320(%rbp), %rax                # 8-byte Reload
	leaq	-288(%rbp), %rdi
	movl	(%rax), %esi
	movl	4(%rax), %edx
	movl	8(%rax), %ecx
	movq	-296(%rbp), %r8
	callq	stbi_write_tga@PLT
	movl	%eax, -308(%rbp)
	jmp	.LBB0_29
.LBB0_26:
	movq	-16(%rbp), %rax
	cmpq	JPG(%rip), %rax
	jne	.LBB0_28
# %bb.27:
	movq	-320(%rbp), %rax                # 8-byte Reload
	leaq	-288(%rbp), %rdi
	movl	(%rax), %esi
	movl	4(%rax), %edx
	movl	8(%rax), %ecx
	movq	-296(%rbp), %r8
	movl	-20(%rbp), %r9d
	callq	stbi_write_jpg@PLT
	movl	%eax, -308(%rbp)
.LBB0_28:
	jmp	.LBB0_29
.LBB0_29:
	jmp	.LBB0_30
.LBB0_30:
	jmp	.LBB0_31
.LBB0_31:
	movq	-296(%rbp), %rdi
	callq	free@PLT
	cmpl	$0, -308(%rbp)
	jne	.LBB0_33
# %bb.32:
	movl	stderr(%rip), %edi
	leaq	-288(%rbp), %rdx
	leaq	.L.str.4(%rip), %rsi
	callq	fprintf@PLT
.LBB0_33:
	addq	$320, %rsp                      # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	PNG
	.p2align	3
PNG:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s.png"
	.bss
	.globl	BMP
	.p2align	3
BMP:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s.bmp"
	.bss
	.globl	TGA
	.p2align	3
TGA:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%s.tga"
	.bss
	.globl	JPG
	.p2align	3
JPG:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"%s.jpg"
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Failed to write image %s\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sprintf
	.addrsig_sym calloc
	.addrsig_sym stbi_write_png
	.addrsig_sym stbi_write_bmp
	.addrsig_sym stbi_write_tga
	.addrsig_sym stbi_write_jpg
	.addrsig_sym free
	.addrsig_sym fprintf
	.addrsig_sym PNG
	.addrsig_sym BMP
	.addrsig_sym TGA
	.addrsig_sym JPG
	.addrsig_sym stderr
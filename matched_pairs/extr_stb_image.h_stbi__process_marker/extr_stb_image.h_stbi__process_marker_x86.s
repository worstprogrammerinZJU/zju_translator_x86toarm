	.text
	.p2align	4, 0x90                         # -- Begin function stbi__process_marker
stbi__process_marker:                   # @stbi__process_marker
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -168(%rbp)                # 4-byte Spill
	subl	$128, %eax
	je	.LBB0_1
	jmp	.LBB0_78
.LBB0_78:
	movl	-168(%rbp), %eax                # 4-byte Reload
	subl	$196, %eax
	je	.LBB0_21
	jmp	.LBB0_79
.LBB0_79:
	movl	-168(%rbp), %eax                # 4-byte Reload
	subl	$219, %eax
	je	.LBB0_5
	jmp	.LBB0_80
.LBB0_80:
	movl	-168(%rbp), %eax                # 4-byte Reload
	subl	$221, %eax
	je	.LBB0_2
	jmp	.LBB0_45
.LBB0_1:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_77
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get16be@PLT
	cmpl	$4, %eax
	je	.LBB0_4
# %bb.3:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_77
.LBB0_4:
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get16be@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB0_77
.LBB0_5:
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get16be@PLT
	subl	$2, %eax
	movl	%eax, -24(%rbp)
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	cmpl	$0, -24(%rbp)
	jle	.LBB0_20
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get8@PLT
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	cmpl	$1, -32(%rbp)
	je	.LBB0_10
# %bb.9:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_77
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$3, -40(%rbp)
	jle	.LBB0_12
# %bb.11:
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_77
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=1
	movl	$0, -44(%rbp)
.LBB0_13:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$64, -44(%rbp)
	jge	.LBB0_19
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	cmpl	$0, -36(%rbp)
	je	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=2
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get16be@PLT
	movl	%eax, -172(%rbp)                # 4-byte Spill
	jmp	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=2
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get8@PLT
	movzbl	%al, %eax
	movl	%eax, -172(%rbp)                # 4-byte Spill
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	movl	-172(%rbp), %edx                # 4-byte Reload
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	stbi__jpeg_dezigzag(%rip), %rcx
	movslq	-44(%rbp), %rsi
	movq	(%rcx,%rsi,8), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.18:                               #   in Loop: Header=BB0_13 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_13
.LBB0_19:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-36(%rbp), %edx
	movl	$65, %ecx
	movl	$129, %eax
	cmpl	$0, %edx
	cmovnel	%eax, %ecx
	movl	-24(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_6
.LBB0_20:
	cmpl	$0, -24(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_77
.LBB0_21:
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get16be@PLT
	subl	$2, %eax
	movl	%eax, -24(%rbp)
.LBB0_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_27 Depth 2
                                        #     Child Loop BB0_38 Depth 2
	cmpl	$0, -24(%rbp)
	jle	.LBB0_44
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=1
	movl	$0, -136(%rbp)
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get8@PLT
	movzbl	%al, %eax
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -144(%rbp)
	movl	-140(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -148(%rbp)
	cmpl	$1, -144(%rbp)
	jg	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_22 Depth=1
	cmpl	$3, -148(%rbp)
	jle	.LBB0_26
.LBB0_25:
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_77
.LBB0_26:                               #   in Loop: Header=BB0_22 Depth=1
	movl	$0, -132(%rbp)
.LBB0_27:                               #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -132(%rbp)
	jge	.LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=2
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get8@PLT
	movzbl	%al, %ecx
	movslq	-132(%rbp), %rax
	movl	%ecx, -128(%rbp,%rax,4)
	movslq	-132(%rbp), %rax
	movl	-128(%rbp,%rax,4), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
# %bb.29:                               #   in Loop: Header=BB0_27 Depth=2
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB0_27
.LBB0_30:                               #   in Loop: Header=BB0_22 Depth=1
	movl	-24(%rbp), %eax
	subl	$17, %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -144(%rbp)
	jne	.LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_22 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-148(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movl	%eax, %edi
	leaq	-128(%rbp), %rsi
	callq	stbi__build_huffman@PLT
	cmpl	$0, %eax
	jne	.LBB0_33
# %bb.32:
	movl	$0, -4(%rbp)
	jmp	.LBB0_77
.LBB0_33:                               #   in Loop: Header=BB0_22 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-148(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_37
.LBB0_34:                               #   in Loop: Header=BB0_22 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-148(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movl	%eax, %edi
	leaq	-128(%rbp), %rsi
	callq	stbi__build_huffman@PLT
	cmpl	$0, %eax
	jne	.LBB0_36
# %bb.35:
	movl	$0, -4(%rbp)
	jmp	.LBB0_77
.LBB0_36:                               #   in Loop: Header=BB0_22 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-148(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -56(%rbp)
.LBB0_37:                               #   in Loop: Header=BB0_22 Depth=1
	movl	$0, -132(%rbp)
.LBB0_38:                               #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-132(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB0_41
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=2
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get8@PLT
	movb	%al, %dl
	movq	-56(%rbp), %rax
	movslq	-132(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.40:                               #   in Loop: Header=BB0_38 Depth=2
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB0_38
.LBB0_41:                               #   in Loop: Header=BB0_22 Depth=1
	cmpl	$0, -144(%rbp)
	je	.LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_22 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-148(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-148(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movl	%eax, %esi
	callq	stbi__build_fast_ac@PLT
.LBB0_43:                               #   in Loop: Header=BB0_22 Depth=1
	movl	-136(%rbp), %ecx
	movl	-24(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_22
.LBB0_44:
	cmpl	$0, -24(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_77
.LBB0_45:
	cmpl	$224, -20(%rbp)
	jl	.LBB0_47
# %bb.46:
	cmpl	$239, -20(%rbp)
	jle	.LBB0_48
.LBB0_47:
	cmpl	$254, -20(%rbp)
	jne	.LBB0_76
.LBB0_48:
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get16be@PLT
	movl	%eax, -24(%rbp)
	cmpl	$2, -24(%rbp)
	jge	.LBB0_52
# %bb.49:
	cmpl	$254, -20(%rbp)
	jne	.LBB0_51
# %bb.50:
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_77
.LBB0_51:
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_77
.LBB0_52:
	movl	-24(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -24(%rbp)
	cmpl	$224, -20(%rbp)
	jne	.LBB0_63
# %bb.53:
	cmpl	$5, -24(%rbp)
	jl	.LBB0_63
# %bb.54:
	movl	$1, -152(%rbp)
	movl	$0, -156(%rbp)
.LBB0_55:                               # =>This Inner Loop Header: Depth=1
	cmpl	$5, -156(%rbp)
	jge	.LBB0_60
# %bb.56:                               #   in Loop: Header=BB0_55 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get8@PLT
	movzbl	%al, %eax
	movslq	-156(%rbp), %rdx
	leaq	stbi__process_marker.tag(%rip), %rcx
	movzbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	je	.LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_55 Depth=1
	movl	$0, -152(%rbp)
.LBB0_58:                               #   in Loop: Header=BB0_55 Depth=1
	jmp	.LBB0_59
.LBB0_59:                               #   in Loop: Header=BB0_55 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB0_55
.LBB0_60:
	movl	-24(%rbp), %eax
	subl	$5, %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB0_62
# %bb.61:
	movq	-16(%rbp), %rax
	movl	$1, 4(%rax)
.LBB0_62:
	jmp	.LBB0_75
.LBB0_63:
	cmpl	$238, -20(%rbp)
	jne	.LBB0_74
# %bb.64:
	cmpl	$12, -24(%rbp)
	jl	.LBB0_74
# %bb.65:
	movl	$1, -160(%rbp)
	movl	$0, -164(%rbp)
.LBB0_66:                               # =>This Inner Loop Header: Depth=1
	cmpl	$6, -164(%rbp)
	jge	.LBB0_71
# %bb.67:                               #   in Loop: Header=BB0_66 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get8@PLT
	movzbl	%al, %eax
	movslq	-164(%rbp), %rdx
	leaq	stbi__process_marker.tag.8(%rip), %rcx
	movzbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	je	.LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_66 Depth=1
	movl	$0, -160(%rbp)
.LBB0_69:                               #   in Loop: Header=BB0_66 Depth=1
	jmp	.LBB0_70
.LBB0_70:                               #   in Loop: Header=BB0_66 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB0_66
.LBB0_71:
	movl	-24(%rbp), %eax
	subl	$6, %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB0_73
# %bb.72:
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get8@PLT
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get16be@PLT
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get16be@PLT
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	stbi__get8@PLT
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movb	%cl, 8(%rax)
	movl	-24(%rbp), %eax
	subl	$6, %eax
	movl	%eax, -24(%rbp)
.LBB0_73:
	jmp	.LBB0_74
.LBB0_74:
	jmp	.LBB0_75
.LBB0_75:
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	movl	-24(%rbp), %esi
	callq	stbi__skip@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_77
.LBB0_76:
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
.LBB0_77:
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"expected marker"
.L.str.1:
	.asciz	"Corrupt JPEG"
.L.str.2:
	.asciz	"bad DRI len"
.L.str.3:
	.asciz	"bad DQT type"
.L.str.4:
	.asciz	"bad DQT table"
	.bss
	.globl	stbi__jpeg_dezigzag
	.p2align	3
stbi__jpeg_dezigzag:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"bad DHT header"
.L.str.6:
	.asciz	"bad COM len"
.L.str.7:
	.asciz	"bad APP len"
	.section	.rodata,"a",@progbits
stbi__process_marker.tag:
	.asciz	"JFIF"
stbi__process_marker.tag.8:
	.asciz	"Adobe"
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"unknown marker"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__process_marker
	.addrsig_sym stbi__err
	.addrsig_sym stbi__get16be
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__build_huffman
	.addrsig_sym stbi__build_fast_ac
	.addrsig_sym stbi__skip
	.addrsig_sym stbi__jpeg_dezigzag
	.addrsig_sym stbi__process_marker.tag
	.addrsig_sym stbi__process_marker.tag.8
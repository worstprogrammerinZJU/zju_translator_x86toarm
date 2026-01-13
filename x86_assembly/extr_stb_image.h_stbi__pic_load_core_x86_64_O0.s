	.text
	.p2align	4, 0x90                         # -- Begin function stbi__pic_load_core
stbi__pic_load_core:                    # @stbi__pic_load_core
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp                      # imm = 0x120
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movslq	-48(%rbp), %rax
	cmpq	$10, %rax
	jne	.LBB0_3
# %bb.2:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_69
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
	movslq	%eax, %rcx
	leaq	-176(%rbp), %rax
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -184(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, %ecx
	movq	-184(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, %ecx
	movq	-184(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, %ecx
	movq	-184(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-184(%rbp), %rax
	movl	8(%rax), %eax
	orl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__at_eof@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_69
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-184(%rbp), %rax
	cmpl	$8, (%rax)
	je	.LBB0_7
# %bb.6:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_69
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -56(%rbp)
	jne	.LBB0_1
# %bb.9:
	movl	-44(%rbp), %edx
	andl	$16, %edx
	movl	$3, %ecx
	movl	$4, %eax
	cmpl	$0, %edx
	cmovnel	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$0, -52(%rbp)
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_49 Depth 4
                                        #         Child Loop BB0_56 Depth 4
                                        #       Child Loop BB0_23 Depth 3
                                        #         Child Loop BB0_31 Depth 4
                                        #       Child Loop BB0_16 Depth 3
	movl	-52(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_68
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$0, -188(%rbp)
.LBB0_12:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_49 Depth 4
                                        #         Child Loop BB0_56 Depth 4
                                        #       Child Loop BB0_23 Depth 3
                                        #         Child Loop BB0_31 Depth 4
                                        #       Child Loop BB0_16 Depth 3
	movl	-188(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB0_66
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	movslq	-188(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	-176(%rbp,%rax,4), %rax
	movq	%rax, -200(%rbp)
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %ecx
	movl	-20(%rbp), %edx
	imull	%edx, %ecx
	shll	$2, %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -276(%rbp)                # 4-byte Spill
	testl	%eax, %eax
	je	.LBB0_15
	jmp	.LBB0_70
.LBB0_70:                               #   in Loop: Header=BB0_12 Depth=2
	movl	-276(%rbp), %eax                # 4-byte Reload
	subl	$1, %eax
	je	.LBB0_22
	jmp	.LBB0_71
.LBB0_71:                               #   in Loop: Header=BB0_12 Depth=2
	movl	-276(%rbp), %eax                # 4-byte Reload
	subl	$2, %eax
	je	.LBB0_36
	jmp	.LBB0_14
.LBB0_14:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_69
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=2
	movl	$0, -212(%rbp)
.LBB0_16:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-212(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_21
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=3
	movq	-16(%rbp), %rdi
	movq	-200(%rbp), %rax
	movl	8(%rax), %esi
	movq	-208(%rbp), %rdx
	callq	stbi__readval@PLT
	cmpl	$0, %eax
	jne	.LBB0_19
# %bb.18:
	movq	$0, -8(%rbp)
	jmp	.LBB0_69
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=3
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=3
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -208(%rbp)
	jmp	.LBB0_16
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=2
	jmp	.LBB0_64
.LBB0_22:                               #   in Loop: Header=BB0_12 Depth=2
	movl	-20(%rbp), %eax
	movl	%eax, -216(%rbp)
.LBB0_23:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_31 Depth 4
	cmpl	$0, -216(%rbp)
	jle	.LBB0_35
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=3
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -224(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__at_eof@PLT
	cmpq	$0, %rax
	je	.LBB0_26
# %bb.25:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_69
.LBB0_26:                               #   in Loop: Header=BB0_23 Depth=3
	movl	-224(%rbp), %eax
	cmpl	-216(%rbp), %eax
	jle	.LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_23 Depth=3
	movl	-216(%rbp), %eax
	movl	%eax, -224(%rbp)
.LBB0_28:                               #   in Loop: Header=BB0_23 Depth=3
	movq	-16(%rbp), %rdi
	movq	-200(%rbp), %rax
	movl	8(%rax), %esi
	leaq	-240(%rbp), %rdx
	callq	stbi__readval@PLT
	cmpl	$0, %eax
	jne	.LBB0_30
# %bb.29:
	movq	$0, -8(%rbp)
	jmp	.LBB0_69
.LBB0_30:                               #   in Loop: Header=BB0_23 Depth=3
	movl	$0, -220(%rbp)
.LBB0_31:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        #       Parent Loop BB0_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-220(%rbp), %eax
	cmpl	-224(%rbp), %eax
	jge	.LBB0_34
# %bb.32:                               #   in Loop: Header=BB0_31 Depth=4
	movq	-200(%rbp), %rax
	movl	8(%rax), %edi
	movq	-208(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	callq	stbi__copyval@PLT
# %bb.33:                               #   in Loop: Header=BB0_31 Depth=4
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -208(%rbp)
	jmp	.LBB0_31
.LBB0_34:                               #   in Loop: Header=BB0_23 Depth=3
	movl	-224(%rbp), %ecx
	movl	-216(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -216(%rbp)
	jmp	.LBB0_23
.LBB0_35:                               #   in Loop: Header=BB0_12 Depth=2
	jmp	.LBB0_64
.LBB0_36:                               #   in Loop: Header=BB0_12 Depth=2
	movl	-20(%rbp), %eax
	movl	%eax, -244(%rbp)
.LBB0_37:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_49 Depth 4
                                        #         Child Loop BB0_56 Depth 4
	cmpl	$0, -244(%rbp)
	jle	.LBB0_63
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=3
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -248(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__at_eof@PLT
	cmpq	$0, %rax
	je	.LBB0_40
# %bb.39:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_69
.LBB0_40:                               #   in Loop: Header=BB0_37 Depth=3
	cmpl	$128, -248(%rbp)
	jl	.LBB0_53
# %bb.41:                               #   in Loop: Header=BB0_37 Depth=3
	cmpl	$128, -248(%rbp)
	jne	.LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_37 Depth=3
	movq	-16(%rbp), %rdi
	callq	stbi__get16be@PLT
	movl	%eax, -248(%rbp)
	jmp	.LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_37 Depth=3
	movl	-248(%rbp), %eax
	subl	$127, %eax
	movl	%eax, -248(%rbp)
.LBB0_44:                               #   in Loop: Header=BB0_37 Depth=3
	movl	-248(%rbp), %eax
	cmpl	-244(%rbp), %eax
	jle	.LBB0_46
# %bb.45:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_69
.LBB0_46:                               #   in Loop: Header=BB0_37 Depth=3
	movq	-16(%rbp), %rdi
	movq	-200(%rbp), %rax
	movl	8(%rax), %esi
	leaq	-272(%rbp), %rdx
	callq	stbi__readval@PLT
	cmpl	$0, %eax
	jne	.LBB0_48
# %bb.47:
	movq	$0, -8(%rbp)
	jmp	.LBB0_69
.LBB0_48:                               #   in Loop: Header=BB0_37 Depth=3
	movl	$0, -252(%rbp)
.LBB0_49:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-252(%rbp), %eax
	cmpl	-248(%rbp), %eax
	jge	.LBB0_52
# %bb.50:                               #   in Loop: Header=BB0_49 Depth=4
	movq	-200(%rbp), %rax
	movl	8(%rax), %edi
	movq	-208(%rbp), %rsi
	leaq	-272(%rbp), %rdx
	callq	stbi__copyval@PLT
# %bb.51:                               #   in Loop: Header=BB0_49 Depth=4
	movl	-252(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -252(%rbp)
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -208(%rbp)
	jmp	.LBB0_49
.LBB0_52:                               #   in Loop: Header=BB0_37 Depth=3
	jmp	.LBB0_62
.LBB0_53:                               #   in Loop: Header=BB0_37 Depth=3
	movl	-248(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -248(%rbp)
	movl	-248(%rbp), %eax
	cmpl	-244(%rbp), %eax
	jle	.LBB0_55
# %bb.54:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_69
.LBB0_55:                               #   in Loop: Header=BB0_37 Depth=3
	movl	$0, -252(%rbp)
.LBB0_56:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-252(%rbp), %eax
	cmpl	-248(%rbp), %eax
	jge	.LBB0_61
# %bb.57:                               #   in Loop: Header=BB0_56 Depth=4
	movq	-16(%rbp), %rdi
	movq	-200(%rbp), %rax
	movl	8(%rax), %esi
	movq	-208(%rbp), %rdx
	callq	stbi__readval@PLT
	cmpl	$0, %eax
	jne	.LBB0_59
# %bb.58:
	movq	$0, -8(%rbp)
	jmp	.LBB0_69
.LBB0_59:                               #   in Loop: Header=BB0_56 Depth=4
	jmp	.LBB0_60
.LBB0_60:                               #   in Loop: Header=BB0_56 Depth=4
	movl	-252(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -252(%rbp)
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -208(%rbp)
	jmp	.LBB0_56
.LBB0_61:                               #   in Loop: Header=BB0_37 Depth=3
	jmp	.LBB0_62
.LBB0_62:                               #   in Loop: Header=BB0_37 Depth=3
	movl	-248(%rbp), %ecx
	movl	-244(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -244(%rbp)
	jmp	.LBB0_37
.LBB0_63:                               #   in Loop: Header=BB0_12 Depth=2
	jmp	.LBB0_64
.LBB0_64:                               #   in Loop: Header=BB0_12 Depth=2
	jmp	.LBB0_65
.LBB0_65:                               #   in Loop: Header=BB0_12 Depth=2
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB0_12
.LBB0_66:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_67
.LBB0_67:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_10
.LBB0_68:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_69:
	movq	-8(%rbp), %rax
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad format"
.L.str.1:
	.asciz	"too many packets"
.L.str.2:
	.asciz	"bad file"
.L.str.3:
	.asciz	"file too short (reading packets)"
.L.str.4:
	.asciz	"packet isn't 8bpp"
.L.str.5:
	.asciz	"packet has bad compression type"
.L.str.6:
	.asciz	"file too short (pure read count)"
.L.str.7:
	.asciz	"file too short (mixed read count)"
.L.str.8:
	.asciz	"scanline overrun"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pic_load_core
	.addrsig_sym stbi__errpuc
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__at_eof
	.addrsig_sym stbi__readval
	.addrsig_sym stbi__copyval
	.addrsig_sym stbi__get16be
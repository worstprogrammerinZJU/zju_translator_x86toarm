	.text
	.globl	stbiw__write_hdr_scanline       # -- Begin function stbiw__write_hdr_scanline
	.p2align	4, 0x90
stbiw__write_hdr_scanline:              # @stbiw__write_hdr_scanline
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	.L__const.stbiw__write_hdr_scanline.scanlineheader(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	-12(%rbp), %eax
	andl	$65280, %eax                    # imm = 0xFF00
	sarl	$8, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -34(%rbp)
	movl	-12(%rbp), %eax
	andl	$255, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -33(%rbp)
	cmpl	$8, -12(%rbp)
	jl	.LBB0_2
# %bb.1:
	cmpl	$32768, -12(%rbp)               # imm = 0x8000
	jl	.LBB0_10
.LBB0_2:
	movl	$0, -56(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_9
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-16(%rbp), %eax
	addl	$-3, %eax
	subl	$1, %eax
	ja	.LBB0_6
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movq	-32(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movss	%xmm0, -48(%rbp)
	movss	%xmm0, -52(%rbp)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	leaq	-40(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	callq	stbiw__linear_to_rgbe@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	leaq	-40(%rbp), %rsi
	movl	$4, %edx
	callq	*%rax
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_3
.LBB0_9:
	jmp	.LBB0_50
.LBB0_10:
	movl	$0, -56(%rbp)
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_17
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-16(%rbp), %eax
	addl	$-3, %eax
	subl	$1, %eax
	ja	.LBB0_14
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-32(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movq	-32(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	jmp	.LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-32(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movss	%xmm0, -48(%rbp)
	movss	%xmm0, -52(%rbp)
.LBB0_15:                               #   in Loop: Header=BB0_11 Depth=1
	leaq	-40(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	callq	stbiw__linear_to_rgbe@PLT
	movb	-40(%rbp), %dl
	movq	-24(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	$0, -12(%rbp), %esi
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movb	-39(%rbp), %dl
	movq	-24(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	-12(%rbp), %esi
	shll	$0, %esi
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movb	-38(%rbp), %dl
	movq	-24(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	-12(%rbp), %esi
	shll	$1, %esi
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movb	-37(%rbp), %dl
	movq	-24(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	$3, -12(%rbp), %esi
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
# %bb.16:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_11
.LBB0_17:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	leaq	-36(%rbp), %rsi
	movl	$4, %edx
	callq	*%rax
	movl	$0, -60(%rbp)
.LBB0_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_36 Depth 3
                                        #       Child Loop BB0_41 Depth 3
	cmpl	$4, -60(%rbp)
	jge	.LBB0_49
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -56(%rbp)
.LBB0_20:                               #   Parent Loop BB0_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_36 Depth 3
                                        #       Child Loop BB0_41 Depth 3
	movl	-56(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_47
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=2
	movl	-56(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB0_22:                               #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-64(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=3
	movq	-72(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-72(%rbp), %rcx
	movl	-64(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_22 Depth=3
	movq	-72(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-72(%rbp), %rcx
	movl	-64(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_20 Depth=2
	jmp	.LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_22 Depth=3
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_22
.LBB0_27:                               #   in Loop: Header=BB0_20 Depth=2
	movl	-64(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jl	.LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_20 Depth=2
	movl	-12(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB0_29:                               #   in Loop: Header=BB0_20 Depth=2
	jmp	.LBB0_30
.LBB0_30:                               #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-56(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=3
	movl	-64(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, -76(%rbp)
	cmpl	$128, -76(%rbp)
	jle	.LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_30 Depth=3
	movl	$128, -76(%rbp)
.LBB0_33:                               #   in Loop: Header=BB0_30 Depth=3
	movq	-8(%rbp), %rdi
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rdx
	movslq	-56(%rbp), %rax
	addq	%rax, %rdx
	callq	stbiw__write_dump_data@PLT
	movl	-76(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_30
.LBB0_34:                               #   in Loop: Header=BB0_20 Depth=2
	movl	-64(%rbp), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_46
# %bb.35:                               #   in Loop: Header=BB0_20 Depth=2
	jmp	.LBB0_36
.LBB0_36:                               #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-64(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-12(%rbp), %ecx
	movb	%al, -81(%rbp)                  # 1-byte Spill
	jge	.LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=3
	movq	-72(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-72(%rbp), %rcx
	movslq	-56(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	sete	%al
	movb	%al, -81(%rbp)                  # 1-byte Spill
.LBB0_38:                               #   in Loop: Header=BB0_36 Depth=3
	movb	-81(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_39
	jmp	.LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_36 Depth=3
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_36
.LBB0_40:                               #   in Loop: Header=BB0_20 Depth=2
	jmp	.LBB0_41
.LBB0_41:                               #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-56(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB0_45
# %bb.42:                               #   in Loop: Header=BB0_41 Depth=3
	movl	-64(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$127, -80(%rbp)
	jle	.LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_41 Depth=3
	movl	$127, -80(%rbp)
.LBB0_44:                               #   in Loop: Header=BB0_41 Depth=3
	movq	-8(%rbp), %rdi
	movl	-80(%rbp), %esi
	movq	-72(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	callq	stbiw__write_run_data@PLT
	movl	-80(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_41
.LBB0_45:                               #   in Loop: Header=BB0_20 Depth=2
	jmp	.LBB0_46
.LBB0_46:                               #   in Loop: Header=BB0_20 Depth=2
	jmp	.LBB0_20
.LBB0_47:                               #   in Loop: Header=BB0_18 Depth=1
	jmp	.LBB0_48
.LBB0_48:                               #   in Loop: Header=BB0_18 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_18
.LBB0_49:
	jmp	.LBB0_50
.LBB0_50:
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
.L__const.stbiw__write_hdr_scanline.scanlineheader:
	.asciz	"\002\002\000"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__linear_to_rgbe
	.addrsig_sym stbiw__write_dump_data
	.addrsig_sym stbiw__write_run_data
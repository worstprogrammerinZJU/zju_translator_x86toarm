	.text
	.globl	ledcWriteNote                   # -- Begin function ledcWriteNote
	.p2align	4, 0x90
ledcWriteNote:                          # @ledcWriteNote
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	.L__const.ledcWriteNote.noteFrequencyBase(%rip), %rsi
	movl	$48, %edx
	callq	memcpy@PLT
	cmpl	$8, -28(%rbp)
	jg	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	cmpq	NOTE_MAX(%rip), %rax
	jb	.LBB0_3
.LBB0_2:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movq	-24(%rbp), %rax
	cvtsi2sdl	-80(%rbp,%rax,4), %xmm0
	movl	$8, %ecx
	subl	-28(%rbp), %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	-12(%rbp), %edi
	movsd	-88(%rbp), %xmm0                # xmm0 = mem[0],zero
	callq	ledcWriteTone@PLT
	movsd	%xmm0, -8(%rbp)
.LBB0_4:
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.ledcWriteNote.noteFrequencyBase:
	.long	4186                            # 0x105a
	.long	4435                            # 0x1153
	.long	4699                            # 0x125b
	.long	4978                            # 0x1372
	.long	5274                            # 0x149a
	.long	5588                            # 0x15d4
	.long	5920                            # 0x1720
	.long	6272                            # 0x1880
	.long	6645                            # 0x19f5
	.long	7040                            # 0x1b80
	.long	7459                            # 0x1d23
	.long	7902                            # 0x1ede
	.bss
	.globl	NOTE_MAX
	.p2align	3
NOTE_MAX:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ledcWriteTone
	.addrsig_sym NOTE_MAX
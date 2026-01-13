	.text
	.p2align	4, 0x90                         # -- Begin function stbi__jpeg_decode_block_prog_dc
stbi__jpeg_decode_block_prog_dc:        # @stbi__jpeg_decode_block_prog_dc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_13
.LBB0_2:
	movq	-16(%rbp), %rax
	cmpl	$16, 8(%rax)
	jge	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	stbi__grow_buffer_unsafe@PLT
.LBB0_4:
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB0_9
# %bb.5:
	movq	-24(%rbp), %rdi
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset@PLT
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	stbi__jpeg_huff_decode@PLT
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_7
# %bb.6:
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	stbi__extend_receive@PLT
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	jmp	.LBB0_8
.LBB0_7:
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	jmp	.LBB0_8
.LBB0_8:
	movl	-52(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-36(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movw	%ax, %cx
	movq	-24(%rbp), %rax
	movw	%cx, (%rax)
	jmp	.LBB0_12
.LBB0_9:
	movq	-16(%rbp), %rdi
	callq	stbi__jpeg_get_bit@PLT
	cmpq	$0, %rax
	je	.LBB0_11
# %bb.10:
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
                                        # kill: def $ax killed $ax killed $eax
	movswl	%ax, %edx
	movq	-24(%rbp), %rax
	movswl	(%rax), %ecx
	addl	%edx, %ecx
                                        # kill: def $cx killed $cx killed $ecx
	movw	%cx, (%rax)
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	movl	$1, -4(%rbp)
.LBB0_13:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"can't merge dc and ac"
.L.str.1:
	.asciz	"Corrupt JPEG"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_decode_block_prog_dc
	.addrsig_sym stbi__err
	.addrsig_sym stbi__grow_buffer_unsafe
	.addrsig_sym memset
	.addrsig_sym stbi__jpeg_huff_decode
	.addrsig_sym stbi__extend_receive
	.addrsig_sym stbi__jpeg_get_bit
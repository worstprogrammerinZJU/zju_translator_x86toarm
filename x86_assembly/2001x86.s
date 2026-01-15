	.text
	.globl	parse_yolo                      # -- Begin function parse_yolo
	.p2align	4, 0x90
parse_yolo:                             # @parse_yolo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)                 # 8-byte Spill
	movq	%rdi, -88(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$20, %edx
	callq	option_find_int@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$1, %edx
	callq	option_find_int@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_str@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	leaq	-20(%rbp), %rsi
	callq	parse_yolo_mask@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, -40(%rbp)
	movl	16(%rax), %esi
	movl	12(%rax), %edx
	movl	8(%rax), %ecx
	movl	-20(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movq	-40(%rbp), %r10
	movl	-12(%rbp), %eax
	movq	%r10, (%rsp)
	movl	%eax, 8(%rsp)
	callq	make_yolo_layer@PLT
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	(%rdi), %rax
	cmpq	(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	movl	$90, %edx
	callq	option_find_int_quiet@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 56(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_float@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 48(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_float@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 40(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.6(%rip), %rsi
	movl	$1, %edx
	callq	option_find_float@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 32(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.7(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 24(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.8(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_str@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-48(%rbp), %rdi
	callq	read_map@PLT
	movl	%eax, %ecx
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, 16(%rax)
.LBB0_2:
	movq	-8(%rbp), %rdi
	leaq	.L.str.9(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_str@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_14
# %bb.3:
	movq	-32(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, -52(%rbp)
	movl	$1, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-32(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$44, %eax
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_4
.LBB0_9:
	movl	$0, -60(%rbp)
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-32(%rbp), %rdi
	callq	atof@PLT
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movss	%xmm0, -64(%rbp)
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	8(%rax), %rax
	movslq	-60(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-32(%rbp), %rdi
	movl	$44, %esi
	callq	strchr@PLT
	addq	$1, %rax
	movq	%rax, -32(%rbp)
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_10
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"classes"
.L.str.1:
	.asciz	"num"
.L.str.2:
	.asciz	"mask"
.L.str.3:
	.asciz	"max"
.L.str.4:
	.asciz	"jitter"
.L.str.5:
	.asciz	"ignore_thresh"
.L.str.6:
	.asciz	"truth_thresh"
.L.str.7:
	.asciz	"random"
.L.str.8:
	.asciz	"map"
.L.str.9:
	.asciz	"anchors"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_str
	.addrsig_sym parse_yolo_mask
	.addrsig_sym make_yolo_layer
	.addrsig_sym assert
	.addrsig_sym option_find_int_quiet
	.addrsig_sym option_find_float
	.addrsig_sym read_map
	.addrsig_sym strlen
	.addrsig_sym atof
	.addrsig_sym strchr
	.text
	.globl	parse_region                    # -- Begin function parse_region
	.p2align	4, 0x90
parse_region:                           # @parse_region
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)                 # 8-byte Spill
	movq	%rdi, -88(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$4, %edx
	callq	option_find_int@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$20, %edx
	callq	option_find_int@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	movl	$1, %edx
	callq	option_find_int@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-80(%rbp), %rax                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, -20(%rbp)
	movl	16(%rax), %esi
	movl	12(%rax), %edx
	movl	8(%rax), %ecx
	movl	-20(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	-12(%rbp), %eax
	movl	%eax, (%rsp)
	callq	make_region_layer@PLT
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
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 152(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 144(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 136(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.6(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 128(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$30, %edx
	callq	option_find_int_quiet@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 120(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.8(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_float@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 112(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.9(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 104(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.10(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_float@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 96(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.11(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 88(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.12(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 80(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.13(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 72(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.14(%rip), %rsi
	movl	$1, %edx
	callq	option_find_float@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 64(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.15(%rip), %rsi
	movl	$1, %edx
	callq	option_find_float@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 56(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.16(%rip), %rsi
	movl	$1, %edx
	callq	option_find_float@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 48(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.17(%rip), %rsi
	movl	$1, %edx
	callq	option_find_float@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 40(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.18(%rip), %rsi
	movl	$1, %edx
	callq	option_find_float@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 32(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.19(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 24(%rdi)
	movq	-8(%rbp), %rdi
	leaq	.L.str.20(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_str@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rdi
	callq	read_tree@PLT
	movl	%eax, %ecx
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, 20(%rax)
.LBB0_2:
	movq	-8(%rbp), %rdi
	leaq	.L.str.21(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_str@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-40(%rbp), %rdi
	callq	read_map@PLT
	movl	%eax, %ecx
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, 16(%rax)
.LBB0_4:
	movq	-8(%rbp), %rdi
	leaq	.L.str.22(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_str@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_16
# %bb.5:
	movq	-48(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, -52(%rbp)
	movl	$1, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB0_11
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$44, %eax
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_6
.LBB0_11:
	movl	$0, -60(%rbp)
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	movq	-48(%rbp), %rdi
	callq	atof@PLT
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movss	%xmm0, -64(%rbp)
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	8(%rax), %rax
	movslq	-60(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-48(%rbp), %rdi
	movl	$44, %esi
	callq	strchr@PLT
	addq	$1, %rax
	movq	%rax, -48(%rbp)
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_12
.LBB0_15:
	jmp	.LBB0_16
.LBB0_16:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"coords"
.L.str.1:
	.asciz	"classes"
.L.str.2:
	.asciz	"num"
.L.str.3:
	.asciz	"log"
.L.str.4:
	.asciz	"sqrt"
.L.str.5:
	.asciz	"softmax"
.L.str.6:
	.asciz	"background"
.L.str.7:
	.asciz	"max"
.L.str.8:
	.asciz	"jitter"
.L.str.9:
	.asciz	"rescore"
.L.str.10:
	.asciz	"thresh"
.L.str.11:
	.asciz	"classfix"
.L.str.12:
	.asciz	"absolute"
.L.str.13:
	.asciz	"random"
.L.str.14:
	.asciz	"coord_scale"
.L.str.15:
	.asciz	"object_scale"
.L.str.16:
	.asciz	"noobject_scale"
.L.str.17:
	.asciz	"mask_scale"
.L.str.18:
	.asciz	"class_scale"
.L.str.19:
	.asciz	"bias_match"
.L.str.20:
	.asciz	"tree"
.L.str.21:
	.asciz	"map"
.L.str.22:
	.asciz	"anchors"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym make_region_layer
	.addrsig_sym assert
	.addrsig_sym option_find_int_quiet
	.addrsig_sym option_find_float
	.addrsig_sym option_find_str
	.addrsig_sym read_tree
	.addrsig_sym read_map
	.addrsig_sym strlen
	.addrsig_sym atof
	.addrsig_sym strchr
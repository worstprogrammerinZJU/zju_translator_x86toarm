	.text
	.p2align	4, 0x90                         # -- Begin function bind_bytecoded_builtins
bind_bytecoded_builtins:                # @bind_bytecoded_builtins
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movl	%edi, -4(%rbp)
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, -8(%rbp)
	leaq	.L.str(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	BACKTRACK(%rip), %edi
	callq	gen_op_simple@PLT
	cltq
	movq	%rax, -56(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -40(%rbp)
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, %edi
	callq	gen_const@PLT
	movl	%eax, -116(%rbp)                # 4-byte Spill
	movb	$0, %al
	callq	jv_true@PLT
	movl	%eax, %edi
	callq	gen_const@PLT
	movl	-116(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	callq	gen_condbranch@PLT
	cltq
	movq	%rax, -32(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -68(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
                                        # kill: def $rax killed $eax
	cmpq	$2, %rax
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -120(%rbp)                # 4-byte Spill
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	leaq	-64(%rbp), %rax
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movb	$0, %al
	callq	gen_noop@PLT
	movq	-128(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	leaq	-64(%rbp), %rax
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %edx
	callq	gen_function@PLT
	movl	-120(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	BLOCK@PLT
	movl	%eax, -8(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -96(%rbp)
	movl	PATH_BEGIN(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, -136(%rbp)                # 4-byte Spill
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, %esi
	leaq	.L.str.3(%rip), %rdi
	callq	gen_call@PLT
	movl	%eax, -132(%rbp)                # 4-byte Spill
	movl	PATH_END(%rip), %edi
	callq	gen_op_simple@PLT
	movl	-136(%rbp), %edi                # 4-byte Reload
	movl	-132(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	BLOCK@PLT
	cltq
	movq	%rax, -88(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -100(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
                                        # kill: def $rax killed $eax
	cmpq	$1, %rax
	jae	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -140(%rbp)                # 4-byte Spill
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	leaq	-96(%rbp), %rax
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	leaq	.L.str.3(%rip), %rdi
	callq	gen_param@PLT
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	leaq	-96(%rbp), %rax
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %edx
	callq	gen_function@PLT
	movl	-140(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	BLOCK@PLT
	movl	%eax, -8(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movl	STOREV(%rip), %edi
	leaq	.L.str.4(%rip), %rsi
	callq	gen_op_var_fresh@PLT
	movl	%eax, -104(%rbp)
	movl	STOREV(%rip), %edi
	leaq	.L.str.5(%rip), %rsi
	callq	gen_op_var_fresh@PLT
	movl	%eax, -108(%rbp)
	movl	DUP(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, -188(%rbp)                # 4-byte Spill
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, %esi
	leaq	.L.str.6(%rip), %rdi
	callq	gen_call@PLT
	movl	%eax, -184(%rbp)                # 4-byte Spill
	movl	-108(%rbp), %eax
	movl	%eax, -180(%rbp)                # 4-byte Spill
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, %esi
	leaq	.L.str.7(%rip), %rdi
	callq	gen_call@PLT
	movl	%eax, -176(%rbp)                # 4-byte Spill
	movl	DUP(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, -172(%rbp)                # 4-byte Spill
	movl	LOADV(%rip), %edi
	movl	-108(%rbp), %esi
	callq	gen_op_bound@PLT
	movl	%eax, -168(%rbp)                # 4-byte Spill
	movl	-104(%rbp), %eax
	movl	%eax, -164(%rbp)                # 4-byte Spill
	movl	RANGE(%rip), %edi
	movl	-104(%rbp), %esi
	callq	gen_op_bound@PLT
	movl	-188(%rbp), %edi                # 4-byte Reload
	movl	-184(%rbp), %esi                # 4-byte Reload
	movl	-180(%rbp), %edx                # 4-byte Reload
	movl	-176(%rbp), %ecx                # 4-byte Reload
	movl	-172(%rbp), %r8d                # 4-byte Reload
	movl	-168(%rbp), %r9d                # 4-byte Reload
	movl	-164(%rbp), %r10d               # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	movb	$0, %al
	callq	BLOCK@PLT
	movl	%eax, -112(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -156(%rbp)                # 4-byte Spill
	leaq	.L.str.6(%rip), %rdi
	callq	gen_param@PLT
	movl	%eax, -160(%rbp)                # 4-byte Spill
	leaq	.L.str.7(%rip), %rdi
	callq	gen_param@PLT
	movl	-160(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	BLOCK@PLT
	movl	%eax, %esi
	movl	-112(%rbp), %edx
	leaq	.L.str.8(%rip), %rdi
	callq	gen_function@PLT
	movl	-156(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	BLOCK@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %esi
	movb	$0, %al
	callq	BLOCK@PLT
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"empty"
	.bss
	.globl	BACKTRACK
	.p2align	2
BACKTRACK:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"not"
.L.str.2:
	.asciz	"path"
	.bss
	.globl	PATH_BEGIN
	.p2align	2
PATH_BEGIN:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"arg"
	.bss
	.globl	PATH_END
	.p2align	2
PATH_END:
	.long	0                               # 0x0
	.globl	STOREV
	.p2align	2
STOREV:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"rangevar"
.L.str.5:
	.asciz	"rangestart"
	.bss
	.globl	DUP
	.p2align	2
DUP:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"start"
.L.str.7:
	.asciz	"end"
	.bss
	.globl	LOADV
	.p2align	2
LOADV:
	.long	0                               # 0x0
	.globl	RANGE
	.p2align	2
RANGE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"range"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bind_bytecoded_builtins
	.addrsig_sym gen_noop
	.addrsig_sym gen_op_simple
	.addrsig_sym gen_condbranch
	.addrsig_sym gen_const
	.addrsig_sym jv_false
	.addrsig_sym jv_true
	.addrsig_sym BLOCK
	.addrsig_sym gen_function
	.addrsig_sym gen_call
	.addrsig_sym gen_param
	.addrsig_sym gen_op_var_fresh
	.addrsig_sym gen_op_bound
	.addrsig_sym BACKTRACK
	.addrsig_sym PATH_BEGIN
	.addrsig_sym PATH_END
	.addrsig_sym STOREV
	.addrsig_sym DUP
	.addrsig_sym LOADV
	.addrsig_sym RANGE
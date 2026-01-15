	.text
	.p2align	4, 0x90                         # -- Begin function setTimeZone
setTimeZone:                            # @setTimeZone
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	-32(%rbp), %rdi
	xorl	%esi, %esi
	movl	$17, %edx
	callq	memset@PLT
	movq	.L__const.setTimeZone.cdt(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.L__const.setTimeZone.cdt+8(%rip), %rax
	movq	%rax, -56(%rbp)
	movb	.L__const.setTimeZone.cdt+16(%rip), %al
	movb	%al, -48(%rbp)
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
	movl	$33, %edx
	callq	memset@PLT
	movq	-8(%rbp), %rax
	movl	$3600, %ecx                     # imm = 0xE10
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	je	.LBB0_2
# %bb.1:
	leaq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	movq	-8(%rbp), %rax
	movl	$3600, %ecx                     # imm = 0xE10
	cqto
	idivq	%rcx
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movq	-8(%rbp), %rax
	movl	$3600, %ecx                     # imm = 0xE10
	cqto
	idivq	%rcx
	movq	%rdx, %rax
	movl	$60, %ecx
	cqto
	idivq	%rcx
	movq	%rax, %rdi
	callq	abs@PLT
	movl	%eax, -124(%rbp)                # 4-byte Spill
	movq	-8(%rbp), %rax
	movl	$60, %ecx
	cqto
	idivq	%rcx
	movq	%rdx, %rdi
	callq	abs@PLT
	movq	-144(%rbp), %rdi                # 8-byte Reload
	movq	-136(%rbp), %rdx                # 8-byte Reload
	movl	-124(%rbp), %ecx                # 4-byte Reload
	movl	%eax, %r8d
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	sprintf@PLT
	jmp	.LBB0_3
.LBB0_2:
	leaq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	$3600, %ecx                     # imm = 0xE10
	cqto
	idivq	%rcx
	movq	%rax, %rdx
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	sprintf@PLT
.LBB0_3:
	cmpl	$3600, -12(%rbp)                # imm = 0xE10
	je	.LBB0_8
# %bb.4:
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	$3600, %ecx                     # imm = 0xE10
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	je	.LBB0_6
# %bb.5:
	leaq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)                # 8-byte Spill
	movq	-120(%rbp), %rax
	movl	$3600, %ecx                     # imm = 0xE10
	cqto
	idivq	%rcx
	movq	%rax, -160(%rbp)                # 8-byte Spill
	movq	-120(%rbp), %rax
	movl	$3600, %ecx                     # imm = 0xE10
	cqto
	idivq	%rcx
	movq	%rdx, %rax
	movl	$60, %ecx
	cqto
	idivq	%rcx
	movq	%rax, %rdi
	callq	abs@PLT
	movl	%eax, -148(%rbp)                # 4-byte Spill
	movq	-120(%rbp), %rax
	movl	$60, %ecx
	cqto
	idivq	%rcx
	movq	%rdx, %rdi
	callq	abs@PLT
	movq	-168(%rbp), %rdi                # 8-byte Reload
	movq	-160(%rbp), %rdx                # 8-byte Reload
	movl	-148(%rbp), %ecx                # 4-byte Reload
	movl	%eax, %r8d
	leaq	.L.str.2(%rip), %rsi
	movb	$0, %al
	callq	sprintf@PLT
	jmp	.LBB0_7
.LBB0_6:
	leaq	-64(%rbp), %rdi
	movq	-120(%rbp), %rax
	movl	$3600, %ecx                     # imm = 0xE10
	cqto
	idivq	%rcx
	movq	%rax, %rdx
	leaq	.L.str.3(%rip), %rsi
	movb	$0, %al
	callq	sprintf@PLT
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:
	leaq	-112(%rbp), %rdi
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	.L.str.4(%rip), %rsi
	movb	$0, %al
	callq	sprintf@PLT
	leaq	-112(%rbp), %rsi
	leaq	.L.str.5(%rip), %rdi
	movl	$1, %edx
	callq	setenv@PLT
	movb	$0, %al
	callq	tzset@PLT
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.setTimeZone.cdt:
	.asciz	"DST\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"UTC%ld:%02u:%02u"
.L.str.1:
	.asciz	"UTC%ld"
.L.str.2:
	.asciz	"DST%ld:%02u:%02u"
.L.str.3:
	.asciz	"DST%ld"
.L.str.4:
	.asciz	"%s%s"
.L.str.5:
	.asciz	"TZ"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym setTimeZone
	.addrsig_sym sprintf
	.addrsig_sym abs
	.addrsig_sym setenv
	.addrsig_sym tzset
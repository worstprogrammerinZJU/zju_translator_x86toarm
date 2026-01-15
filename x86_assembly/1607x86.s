	.text
	.p2align	4, 0x90                         # -- Begin function printinst
printinst:                              # @printinst
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp                      # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.L__const.printinst.names(%rip), %rsi
	leaq	-256(%rbp), %rdi
	movl	$232, %edx
	callq	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rsi
	subq	%rcx, %rsi
	sarq	$3, %rsi
	movabsq	$-6148914691236517205, %rcx     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rsi
	movq	(%rax), %rax
	movq	-256(%rbp,%rax,8), %rdx
	leaq	.L.str.29(%rip), %rdi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -264(%rbp)                # 8-byte Spill
	subl	$22, %eax
	ja	.LBB0_11
# %bb.13:
	movq	-264(%rbp), %rax                # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.L.str.30(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	jmp	.LBB0_12
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.L.str.30(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	printjmp@PLT
	jmp	.LBB0_12
.LBB0_3:
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.L.str.31(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	jmp	.LBB0_12
.LBB0_4:
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.L.str.31(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	printjmp@PLT
	jmp	.LBB0_12
.LBB0_5:
	movq	-16(%rbp), %rdi
	callq	getkind@PLT
	movl	%eax, %edi
	callq	printcapkind@PLT
	movq	-16(%rbp), %rdi
	callq	getoff@PLT
	movl	%eax, %esi
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	leaq	.L.str.32(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	jmp	.LBB0_12
.LBB0_6:
	movq	-16(%rbp), %rax
	movl	40(%rax), %edi
	callq	printcharset@PLT
	jmp	.LBB0_12
.LBB0_7:
	movq	-16(%rbp), %rax
	movl	40(%rax), %edi
	callq	printcharset@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	printjmp@PLT
	jmp	.LBB0_12
.LBB0_8:
	movq	-16(%rbp), %rax
	movl	12(%rax), %esi
	leaq	.L.str.33(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	jmp	.LBB0_12
.LBB0_9:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	printjmp@PLT
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.L.str.34(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	jmp	.LBB0_12
.LBB0_10:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	printjmp@PLT
	jmp	.LBB0_12
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	leaq	.L.str.35(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	addq	$272, %rsp                      # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_9-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"any"
.L.str.1:
	.asciz	"char"
.L.str.2:
	.asciz	"set"
.L.str.3:
	.asciz	"zset"
.L.str.4:
	.asciz	"testany"
.L.str.5:
	.asciz	"testchar"
.L.str.6:
	.asciz	"testset"
.L.str.7:
	.asciz	"testzset"
.L.str.8:
	.asciz	"span"
.L.str.9:
	.asciz	"spanz"
.L.str.10:
	.asciz	"ret"
.L.str.11:
	.asciz	"end"
.L.str.12:
	.asciz	"choice"
.L.str.13:
	.asciz	"jmp"
.L.str.14:
	.asciz	"call"
.L.str.15:
	.asciz	"open_call"
.L.str.16:
	.asciz	"commit"
.L.str.17:
	.asciz	"partial_commit"
.L.str.18:
	.asciz	"back_commit"
.L.str.19:
	.asciz	"failtwice"
.L.str.20:
	.asciz	"fail"
.L.str.21:
	.asciz	"giveup"
.L.str.22:
	.asciz	"func"
.L.str.23:
	.asciz	"fullcapture"
.L.str.24:
	.asciz	"emptycapture"
.L.str.25:
	.asciz	"emptycaptureidx"
.L.str.26:
	.asciz	"opencapture"
.L.str.27:
	.asciz	"closecapture"
.L.str.28:
	.asciz	"closeruntime"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__const.printinst.names:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"%02ld: %s "
.L.str.30:
	.asciz	"'%c'"
.L.str.31:
	.asciz	"* %d"
.L.str.32:
	.asciz	"(n = %d)  (off = %d)"
.L.str.33:
	.asciz	"-> %d"
.L.str.34:
	.asciz	" (%d)"
.L.str.35:
	.asciz	"\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printinst
	.addrsig_sym printf
	.addrsig_sym printjmp
	.addrsig_sym printcapkind
	.addrsig_sym getkind
	.addrsig_sym getoff
	.addrsig_sym printcharset
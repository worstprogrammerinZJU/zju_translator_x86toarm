	.text
	.p2align	4, 0x90                         # -- Begin function make_unix_socket
make_unix_socket:                       # @make_unix_socket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	$-1, -20(%rbp)
	movq	$3, -48(%rbp)
	leaq	-40(%rbp), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	callq	memset@PLT
	movl	AF_UNIX(%rip), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
	cmpq	$3, %rax
	jbe	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	leaq	.L.str(%rip), %rdi
	movl	$3, %ecx
	movb	$0, %al
	callq	warnx@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB0_20
.LBB0_2:
	movl	-40(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	$3, %edx
	callq	strncpy@PLT
	movq	-16(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	stat@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.LBB0_9
# %bb.3:
	movl	-32(%rbp), %edi
	callq	S_ISSOCK@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.4:
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	warnx@PLT
	movq	-16(%rbp), %rdi
	callq	unlink@PLT
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB0_6
# %bb.5:
	leaq	.L.str.2(%rip), %rdi
	callq	twarn@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB0_20
.LBB0_6:
	jmp	.LBB0_8
.LBB0_7:
	leaq	.L.str.3(%rip), %rdi
	callq	twarnx@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB0_20
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	movl	AF_UNIX(%rip), %edi
	movl	SOCK_STREAM(%rip), %esi
	xorl	%edx, %edx
	callq	socket@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB0_11
# %bb.10:
	leaq	.L.str.4(%rip), %rdi
	callq	twarn@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB0_20
.LBB0_11:
	movl	-20(%rbp), %edi
	callq	set_nonblocking@PLT
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB0_13
# %bb.12:
	movl	-20(%rbp), %edi
	callq	close@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB0_20
.LBB0_13:
	movl	-20(%rbp), %edi
	leaq	-40(%rbp), %rsi
	movl	$8, %edx
	callq	bind@PLT
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB0_15
# %bb.14:
	leaq	.L.str.5(%rip), %rdi
	callq	twarn@PLT
	movl	-20(%rbp), %edi
	callq	close@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB0_20
.LBB0_15:
	cmpq	$0, verbose(%rip)
	je	.LBB0_17
# %bb.16:
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rdx
	leaq	.L.str.6(%rip), %rdi
	callq	printf@PLT
.LBB0_17:
	movl	-20(%rbp), %edi
	movl	$1024, %esi                     # imm = 0x400
	callq	listen@PLT
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB0_19
# %bb.18:
	leaq	.L.str.7(%rip), %rdi
	callq	twarn@PLT
	movl	-20(%rbp), %edi
	callq	close@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB0_20
.LBB0_19:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_20:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	AF_UNIX
	.p2align	2
AF_UNIX:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"socket path %s is too long (%ld characters), where maximum allowed is %ld"
.L.str.1:
	.asciz	"removing existing local socket to replace it"
.L.str.2:
	.asciz	"unlink"
.L.str.3:
	.asciz	"another file already exists in the given path"
	.bss
	.globl	SOCK_STREAM
	.p2align	2
SOCK_STREAM:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"socket()"
.L.str.5:
	.asciz	"bind()"
	.bss
	.globl	verbose
	.p2align	3
verbose:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"bind %d %s\n"
.L.str.7:
	.asciz	"listen()"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_unix_socket
	.addrsig_sym memset
	.addrsig_sym strlen
	.addrsig_sym warnx
	.addrsig_sym strncpy
	.addrsig_sym stat
	.addrsig_sym S_ISSOCK
	.addrsig_sym unlink
	.addrsig_sym twarn
	.addrsig_sym twarnx
	.addrsig_sym socket
	.addrsig_sym set_nonblocking
	.addrsig_sym close
	.addrsig_sym bind
	.addrsig_sym printf
	.addrsig_sym listen
	.addrsig_sym AF_UNIX
	.addrsig_sym SOCK_STREAM
	.addrsig_sym verbose
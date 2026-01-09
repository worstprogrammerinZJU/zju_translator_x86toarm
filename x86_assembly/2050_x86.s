n:
doc:
l:
lines:
num:
words:
step:
Term:
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, Term[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	lea	rcx, 0[0+rax*8]
	add	rax, rcx
	sal	rax, 2
	lea	rcx, Term[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 0
	jne	.L2
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+104]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+104]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret
input:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR l[rip]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, doc[rip]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L5
	mov	edx, DWORD PTR num[rip]
	mov	eax, DWORD PTR num[rip]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, words[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR l[rip]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 90
	add	rdx, rax
	lea	rax, lines[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	mov	eax, 0
	call	isalpha@PLT
	test	eax, eax
	jne	.L7
	cmp	DWORD PTR -8[rbp], 0
	je	.L8
	mov	eax, DWORD PTR num[rip]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rcx, rax
	lea	rdx, Term[rip+100]
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR num[rip]
	mov	edx, DWORD PTR l[rip]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	lea	rcx, 0[0+rax*8]
	add	rax, rcx
	sal	rax, 2
	mov	rcx, rax
	lea	rax, Term[rip+104]
	mov	DWORD PTR [rcx+rax], edx
	mov	eax, DWORD PTR num[rip]
	add	eax, 1
	mov	DWORD PTR num[rip], eax
	mov	edx, DWORD PTR num[rip]
	mov	eax, DWORD PTR num[rip]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, words[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	DWORD PTR -8[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR l[rip]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 90
	add	rdx, rax
	lea	rax, lines[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	mov	eax, 0
	call	tolower@PLT
	mov	esi, eax
	mov	ecx, DWORD PTR num[rip]
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -8[rbp], edx
	movsx	rdi, eax
	movsx	rdx, ecx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rdi]
	lea	rax, Term[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], sil
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR l[rip]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 90
	add	rdx, rax
	lea	rax, lines[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L9
	cmp	DWORD PTR -8[rbp], 0
	je	.L10
	mov	eax, DWORD PTR num[rip]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rcx, rax
	lea	rdx, Term[rip+100]
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR num[rip]
	mov	edx, DWORD PTR l[rip]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	lea	rcx, 0[0+rax*8]
	add	rax, rcx
	sal	rax, 2
	mov	rcx, rax
	lea	rax, Term[rip+104]
	mov	DWORD PTR [rcx+rax], edx
	mov	eax, DWORD PTR num[rip]
	add	eax, 1
	mov	DWORD PTR num[rip], eax
	mov	eax, DWORD PTR l[rip]
	add	eax, 1
	mov	DWORD PTR l[rip], eax
	mov	eax, DWORD PTR l[rip]
	cdqe
	imul	rax, rax, 90
	lea	rdx, lines[rip]
	add	rax, rdx
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	eax, DWORD PTR l[rip]
	cdqe
	imul	rax, rax, 90
	lea	rdx, lines[rip]
	add	rax, rdx
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L11
	nop
	nop
	leave
	ret
search:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -4[rbp], 0
	mov	eax, DWORD PTR num[rip]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR step[rip], -1
	jmp	.L13
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, Term[rip]
	add	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	strcmp@PLT
	mov	DWORD PTR -16[rbp], eax
	cmp	DWORD PTR -16[rbp], 0
	jns	.L14
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L13
	cmp	DWORD PTR -16[rbp], 0
	jle	.L23
	mov	eax, DWORD PTR -12[rbp]
	sub	eax, 1
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L17
	jmp	.L16
	nop
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jg	.L18
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	DWORD PTR step[rip], eax
	jmp	.L19
	mov	eax, DWORD PTR step[rip]
	add	eax, 1
	mov	DWORD PTR step[rip], eax
	mov	eax, DWORD PTR step[rip]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, Term[rip]
	add	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	strcmp@PLT
	test	eax, eax
	je	.L20
	sub	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, Term[rip]
	add	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	strcmp@PLT
	test	eax, eax
	je	.L21
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	jmp	.L22
	mov	eax, -1
	leave
	ret
AndOr:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 688
	mov	DWORD PTR -8852[rbp], edi
	mov	QWORD PTR -8864[rbp], rsi
	mov	QWORD PTR -8872[rbp], rdx
	mov	DWORD PTR -12[rbp], 0
	lea	rdx, -848[rbp]
	mov	eax, 0
	mov	ecx, 101
	mov	rdi, rdx
	rep stosq
	lea	rdx, -8848[rbp]
	mov	eax, 0
	mov	ecx, 1000
	mov	rdi, rdx
	rep stosq
	mov	rax, QWORD PTR -8864[rbp]
	mov	rdi, rax
	call	search
	mov	DWORD PTR -16[rbp], eax
	mov	eax, DWORD PTR step[rip]
	mov	DWORD PTR -20[rbp], eax
	mov	rax, QWORD PTR -8872[rbp]
	mov	rdi, rax
	call	search
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR step[rip]
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L25
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+100]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	mov	DWORD PTR -848[rbp+rax*4], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L26
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L27
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+100]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	add	rax, 101
	mov	DWORD PTR -848[rbp+rax*4], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L28
	mov	eax, DWORD PTR -16[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L29
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+100]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	mov	ecx, DWORD PTR -848[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+100]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	add	rax, 101
	mov	eax, DWORD PTR -848[rbp+rax*4]
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -8852[rbp]
	add	eax, edx
	cmp	eax, 1
	jle	.L30
	mov	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+104]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	mov	DWORD PTR -8848[rbp+rax*4], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L31
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L32
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+100]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	mov	ecx, DWORD PTR -848[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+100]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	add	rax, 101
	mov	eax, DWORD PTR -848[rbp+rax*4]
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -8852[rbp]
	add	eax, edx
	cmp	eax, 1
	jle	.L33
	mov	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+104]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	mov	DWORD PTR -8848[rbp+rax*4], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L34
	cmp	DWORD PTR -12[rbp], 0
	jne	.L35
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L24
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L37
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -848[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, 101
	mov	eax, DWORD PTR -848[rbp+rax*4]
	add	edx, eax
	mov	eax, DWORD PTR -8852[rbp]
	add	eax, edx
	cmp	eax, 1
	jle	.L45
	cmp	DWORD PTR -12[rbp], 1
	jne	.L40
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, doc[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L41
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -8848[rbp+rax*4]
	cmp	eax, 1
	jne	.L42
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 90
	lea	rdx, lines[rip]
	add	rax, rdx
	mov	rdi, rax
	call	puts@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, doc[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L43
	jmp	.L39
	nop
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L44
	leave
	ret
query:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1056
	mov	DWORD PTR -16[rbp], 0
	lea	rdx, -432[rbp]
	mov	eax, 0
	mov	ecx, 50
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	lea	rax, -640[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L47
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	edx, BYTE PTR -640[rbp+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -848[rbp+rax], dl
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -640[rbp+rax]
	test	al, al
	je	.L48
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -640[rbp+rax]
	cmp	al, 32
	jne	.L49
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -848[rbp+rax], 0
	lea	rax, -848[rbp]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L50
	add	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], 0
	jmp	.L51
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	edx, BYTE PTR -640[rbp+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -848[rbp+rax], dl
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -640[rbp+rax]
	test	al, al
	jne	.L52
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -848[rbp+rax], 0
	lea	rax, -848[rbp]
	mov	rdi, rax
	call	search
	mov	DWORD PTR -12[rbp], eax
	jmp	.L53
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+100]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	mov	DWORD PTR -432[rbp+rax*4], 1
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR step[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L54
	mov	DWORD PTR -4[rbp], 0
	jmp	.L55
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -432[rbp+rax*4]
	cmp	eax, 1
	je	.L78
	cmp	DWORD PTR -16[rbp], 1
	jne	.L58
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, doc[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L59
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	imul	rax, rax, 90
	lea	rdx, lines[rip]
	add	rax, rdx
	mov	rdi, rax
	call	puts@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, doc[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L60
	mov	DWORD PTR -16[rbp], 1
	jmp	.L57
	nop
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L61
	jmp	.L46
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -640[rbp+rax]
	test	al, al
	jne	.L63
	lea	rax, -848[rbp]
	mov	rdi, rax
	call	search
	mov	DWORD PTR -12[rbp], eax
	cmp	DWORD PTR -12[rbp], -1
	jne	.L64
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L46
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+100]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+104]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 90
	lea	rdx, lines[rip]
	add	rax, rdx
	mov	rdi, rax
	call	puts@PLT
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	jmp	.L66
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+100]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -24[rbp], eax
	je	.L67
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+100]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -24[rbp], eax
	jmp	.L68
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+104]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -28[rbp], eax
	je	.L79
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, words[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, Term[rip+104]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	imul	rax, rax, 90
	lea	rdx, lines[rip]
	add	rax, rdx
	mov	rdi, rax
	call	puts@PLT
	jmp	.L69
	nop
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR step[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L70
	jmp	.L46
	add	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], 0
	jmp	.L71
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	edx, BYTE PTR -640[rbp+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -1056[rbp+rax], dl
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -640[rbp+rax]
	cmp	al, 32
	jne	.L72
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -1056[rbp+rax], 0
	lea	rax, -1056[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L73
	mov	DWORD PTR -20[rbp], 0
	jmp	.L74
	mov	DWORD PTR -20[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	DWORD PTR -8[rbp], 0
	jmp	.L75
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	edx, BYTE PTR -640[rbp+rax]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -1056[rbp+rax], dl
	add	DWORD PTR -4[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	movzx	eax, BYTE PTR -640[rbp+rax]
	test	al, al
	jne	.L76
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -1056[rbp+rax], 0
	lea	rdx, -1056[rbp]
	lea	rcx, -848[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	rsi, rcx
	mov	edi, eax
	call	AndOr
	leave
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L81
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	input
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L82
	mov	edx, DWORD PTR n[rip]
	mov	eax, DWORD PTR l[rip]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, doc[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR num[rip]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rsi, rax
	lea	rax, words[rip]
	mov	rdi, rax
	call	qsort@PLT
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L83
	mov	eax, 0
	call	query
	lea	rax, .LC6[rip]
	mov	rdi, rax
	call	puts@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L84
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4:
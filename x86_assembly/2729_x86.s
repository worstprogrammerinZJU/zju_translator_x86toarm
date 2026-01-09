shot:
command:
qshot:
n:
tank:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 192
	lea	rax, -28[rbp]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	lea	rcx, -160[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rsi, [rcx+rax]
	lea	rcx, -40[rbp]
	lea	rdx, -36[rbp]
	lea	rax, -32[rbp]
	mov	r8, rcx
	mov	rcx, rdx
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -32[rbp]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, eax
	mov	DWORD PTR -32[rbp], eax
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, eax
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, tank[rip]
	lea	rdi, [rdx+rax]
	mov	ecx, DWORD PTR -40[rbp]
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax
	call	_ZN4Tank7settankEiii
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	mov	DWORD PTR -4[rbp], 0
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip]
	lea	rsi, [rdx+rax]
	lea	rdx, -177[rbp]
	lea	rax, -171[rbp]
	mov	rcx, rdx
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, eax
	mov	ecx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	DWORD PTR -8[rbp], 0
	jmp	.L6
	lea	rcx, -160[rbp]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, [rcx+rax]
	lea	rax, -171[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	je	.L36
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L9
	jmp	.L8
	nop
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rcx, rax
	lea	rdx, command[rip+4]
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	lea	rax, -177[rbp]
	lea	rdx, .LC3[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L10
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip+8]
	mov	DWORD PTR [rdx+rax], 1
	jmp	.L11
	lea	rax, -177[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L12
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip+8]
	mov	DWORD PTR [rdx+rax], 0
	jmp	.L11
	lea	rax, -177[rbp]
	lea	rdx, .LC5[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L13
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip]
	add	rax, rdx
	add	rax, 12
	mov	rsi, rax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip+8]
	mov	DWORD PTR [rdx+rax], 2
	jmp	.L11
	lea	rax, -177[rbp]
	lea	rdx, .LC7[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L11
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip+8]
	mov	DWORD PTR [rdx+rax], 3
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L14
	mov	DWORD PTR qshot[rip], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L15
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 1
	jne	.L17
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, tank[rip]
	add	rax, rdx
	mov	rdi, rax
	call	_ZN4Tank8bemovingEv
	jmp	.L18
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L19
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, tank[rip]
	add	rax, rdx
	mov	rdi, rax
	call	_ZN4Tank4stopEv
	jmp	.L18
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 2
	jne	.L20
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, tank[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 4
	mov	rcx, rax
	lea	rax, command[rip+12]
	mov	eax, DWORD PTR [rcx+rax]
	mov	esi, eax
	mov	rdi, rdx
	call	_ZN4Tank4turnEi
	jmp	.L18
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip+8]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 3
	jne	.L18
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, tank[rip]
	add	rax, rdx
	mov	rdi, rax
	call	_ZN4Tank8shootingEv
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -28[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jge	.L21
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, command[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -16[rbp], eax
	je	.L22
	mov	DWORD PTR -4[rbp], 0
	jmp	.L23
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, tank[rip]
	add	rax, rdx
	mov	rdi, rax
	call	_ZN4Tank6movingEv
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L24
	call	_Z8shotmovev
	mov	DWORD PTR -4[rbp], 0
	jmp	.L25
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, tank[rip]
	add	rax, rdx
	mov	rdi, rax
	call	_ZN4Tank7killingEv
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L26
	add	DWORD PTR -16[rbp], 1
	cmp	DWORD PTR -16[rbp], 258
	jle	.L16
	mov	DWORD PTR -4[rbp], 0
	jmp	.L28
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, tank[rip]
	add	rax, rdx
	mov	rdi, rax
	call	_ZN4Tank5getbeEv
	movzx	eax, al
	cmp	eax, 1
	sete	al
	test	al, al
	je	.L29
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -24[rbp], eax
	add	DWORD PTR -20[rbp], 1
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L30
	cmp	DWORD PTR -20[rbp], 0
	je	.L31
	cmp	DWORD PTR -20[rbp], 1
	jle	.L32
	lea	rax, .LC8[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L33
	lea	rcx, -160[rbp]
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC9[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -28[rbp]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L34
	mov	eax, DWORD PTR -28[rbp]
	test	eax, eax
	jne	.L34
	mov	eax, 0
	leave
	ret
_ZN4TankC2Eiii:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	DWORD PTR -16[rbp], edx
	mov	DWORD PTR -20[rbp], ecx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	DWORD PTR 4[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -20[rbp]
	mov	DWORD PTR 8[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 12[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 13[rax], 1
	nop
	pop	rbp
	ret
_ZN4TankC2Ev:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 4[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 12[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 13[rax], 0
	nop
	pop	rbp
	ret
_ZN4TankD2Ev:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	DWORD PTR -16[rbp], edx
	mov	DWORD PTR -20[rbp], ecx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	DWORD PTR 4[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -20[rbp]
	mov	DWORD PTR 8[rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 12[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 13[rax], 1
	nop
	pop	rbp
	ret
_ZN4Tank8bemovingEv:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR 13[rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L43
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 12[rax], 1
	nop
	pop	rbp
	ret
_ZN4Tank4stopEv:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR 13[rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L46
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 12[rax], 0
	nop
	pop	rbp
	ret
_ZN4Tank4turnEi:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR 13[rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L49
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR 8[rax]
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	lea	edx, 360[rax]
	movsx	rax, edx
	imul	rax, rax, -1240768329
	shr	rax, 32
	add	eax, edx
	sar	eax, 8
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 360
	mov	eax, edx
	sub	eax, ecx
	mov	rdx, QWORD PTR -8[rbp]
	mov	DWORD PTR 8[rdx], eax
	nop
	pop	rbp
	ret
_ZN4Tank6movingEv:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR 13[rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L59
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR 12[rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L59
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 8[rax]
	test	eax, eax
	jne	.L52
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	eax, 720
	jne	.L53
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 12[rax], 0
	jmp	.L59
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, 10[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	jmp	.L59
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 8[rax]
	cmp	eax, 90
	jne	.L54
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 4[rax]
	cmp	eax, 720
	jne	.L55
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 12[rax], 0
	jmp	.L59
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, 10[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 4[rax], edx
	jmp	.L59
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 8[rax]
	cmp	eax, 180
	jne	.L56
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jne	.L57
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 12[rax], 0
	jmp	.L59
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, -10[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	jmp	.L59
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 4[rax]
	test	eax, eax
	jne	.L58
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR 12[rax], 0
	jmp	.L59
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 4[rax]
	lea	edx, -10[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 4[rax], edx
	nop
	pop	rbp
	ret
_ZN4Tank8shootingEv:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR 13[rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L62
	mov	edx, DWORD PTR qshot[rip]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	movsx	rdx, edx
	mov	rcx, rdx
	sal	rcx, 4
	lea	rdx, shot[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	edx, DWORD PTR qshot[rip]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 4[rax]
	movsx	rdx, edx
	mov	rcx, rdx
	sal	rcx, 4
	lea	rdx, shot[rip+4]
	mov	DWORD PTR [rcx+rdx], eax
	mov	edx, DWORD PTR qshot[rip]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR 8[rax]
	movsx	rdx, edx
	mov	rcx, rdx
	sal	rcx, 4
	lea	rdx, shot[rip+12]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR qshot[rip]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+8]
	mov	BYTE PTR [rdx+rax], 1
	mov	eax, DWORD PTR qshot[rip]
	add	eax, 1
	mov	DWORD PTR qshot[rip], eax
	nop
	pop	rbp
	ret
_ZN4Tank5getbeEv:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR 13[rax]
	pop	rbp
	ret
_ZN4Tank7killingEv:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR 13[rax]
	movzx	eax, al
	test	eax, eax
	je	.L72
	mov	DWORD PTR -4[rbp], 0
	jmp	.L68
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+8]
	movzx	eax, BYTE PTR [rdx+rax]
	movzx	eax, al
	test	eax, eax
	je	.L73
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jne	.L70
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+4]
	mov	edx, DWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 4[rax]
	cmp	edx, eax
	jne	.L70
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+8]
	mov	BYTE PTR [rdx+rax], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	BYTE PTR 13[rax], 0
	jmp	.L70
	nop
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR qshot[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L71
	jmp	.L65
	nop
	pop	rbp
	ret
_Z8shotmovev:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], 0
	jmp	.L75
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+8]
	movzx	eax, BYTE PTR [rdx+rax]
	movzx	eax, al
	cmp	eax, 1
	jne	.L76
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+12]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L77
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 700
	jle	.L78
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+8]
	mov	BYTE PTR [rdx+rax], 0
	jmp	.L76
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 20[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L76
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+12]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 90
	jne	.L79
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 700
	jle	.L80
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+8]
	mov	BYTE PTR [rdx+rax], 0
	jmp	.L76
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 20[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+4]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L76
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+12]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 180
	jne	.L81
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 19
	jg	.L82
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+8]
	mov	BYTE PTR [rdx+rax], 0
	jmp	.L76
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, -20[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L76
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, 19
	jg	.L83
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+8]
	mov	BYTE PTR [rdx+rax], 0
	jmp	.L76
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+4]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, -20[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 4
	mov	rdx, rax
	lea	rax, shot[rip+4]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR qshot[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L84
	nop
	nop
	pop	rbp
	ret
__tcf_0:
	endbr64
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 8
	mov	QWORD PTR -16[rbp], rdi
	lea	rbx, tank[rip+160]
	lea	rax, tank[rip]
	cmp	rbx, rax
	je	.L85
	sub	rbx, 16
	mov	rdi, rbx
	call	_ZN4TankD1Ev
	jmp	.L87
	mov	rbx, QWORD PTR -8[rbp]
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	push	r12
	push	rbx
	sub	rsp, 16
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	cmp	DWORD PTR -20[rbp], 1
	jne	.L92
	cmp	DWORD PTR -24[rbp], 65535
	jne	.L92
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	lea	rax, tank[rip]
	mov	ebx, 9
	mov	r12, rax
	jmp	.L90
	mov	rdi, r12
	call	_ZN4TankC1Ev
	add	r12, 16
	sub	rbx, 1
	test	rbx, rbx
	jns	.L91
	mov	rdx, rax
	mov	esi, 0
	lea	rax, __tcf_0[rip]
	mov	rdi, rax
	call	__cxa_atexit@PLT
	nop
	add	rsp, 16
	pop	rbx
	pop	r12
	pop	rbp
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	esi, 65535
	mov	edi, 1
	pop	rbp
	ret
0:
1:
2:
3:
4:
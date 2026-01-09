	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 368
	mov	QWORD PTR -360[rbp], rdi
	mov	rax, QWORD PTR -360[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	strlen@PLT
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -128[rbp], -1
	mov	DWORD PTR -124[rbp], -1
	mov	DWORD PTR -120[rbp], -1
	mov	DWORD PTR -116[rbp], -1
	mov	DWORD PTR -112[rbp], -1
	mov	DWORD PTR -108[rbp], -1
	mov	DWORD PTR -104[rbp], -1
	mov	DWORD PTR -100[rbp], -1
	mov	DWORD PTR -96[rbp], -1
	mov	DWORD PTR -92[rbp], -1
	mov	DWORD PTR -88[rbp], -1
	mov	DWORD PTR -84[rbp], -1
	mov	DWORD PTR -80[rbp], -1
	mov	DWORD PTR -76[rbp], -1
	mov	DWORD PTR -72[rbp], -1
	mov	DWORD PTR -68[rbp], -1
	mov	DWORD PTR -64[rbp], -1
	mov	DWORD PTR -60[rbp], -1
	mov	DWORD PTR -56[rbp], -1
	mov	DWORD PTR -52[rbp], -1
	mov	DWORD PTR -48[rbp], -1
	mov	DWORD PTR -44[rbp], -1
	mov	DWORD PTR -40[rbp], -1
	mov	DWORD PTR -36[rbp], -1
	mov	DWORD PTR -32[rbp], -1
	mov	DWORD PTR -28[rbp], -1
	mov	DWORD PTR -240[rbp], -1
	mov	DWORD PTR -236[rbp], -1
	mov	DWORD PTR -232[rbp], -1
	mov	DWORD PTR -228[rbp], -1
	mov	DWORD PTR -224[rbp], -1
	mov	DWORD PTR -220[rbp], -1
	mov	DWORD PTR -216[rbp], -1
	mov	DWORD PTR -212[rbp], -1
	mov	DWORD PTR -208[rbp], -1
	mov	DWORD PTR -204[rbp], -1
	mov	DWORD PTR -200[rbp], -1
	mov	DWORD PTR -196[rbp], -1
	mov	DWORD PTR -192[rbp], -1
	mov	DWORD PTR -188[rbp], -1
	mov	DWORD PTR -184[rbp], -1
	mov	DWORD PTR -180[rbp], -1
	mov	DWORD PTR -176[rbp], -1
	mov	DWORD PTR -172[rbp], -1
	mov	DWORD PTR -168[rbp], -1
	mov	DWORD PTR -164[rbp], -1
	mov	DWORD PTR -160[rbp], -1
	mov	DWORD PTR -156[rbp], -1
	mov	DWORD PTR -152[rbp], -1
	mov	DWORD PTR -148[rbp], -1
	mov	DWORD PTR -144[rbp], -1
	mov	DWORD PTR -140[rbp], -1
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -360[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 97
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	eax, DWORD PTR -128[rbp+rax*4]
	cmp	eax, -1
	jne	.L3
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR -128[rbp+rax*4], edx
	jmp	.L4
	mov	eax, DWORD PTR -24[rbp]
	cdqe
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR -240[rbp+rax*4], edx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -16[rbp]
	jl	.L5
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -240[rbp+rax*4]
	cmp	eax, -1
	je	.L7
	mov	DWORD PTR -352[rbp], -1
	mov	DWORD PTR -348[rbp], -1
	mov	DWORD PTR -344[rbp], -1
	mov	DWORD PTR -340[rbp], -1
	mov	DWORD PTR -336[rbp], -1
	mov	DWORD PTR -332[rbp], -1
	mov	DWORD PTR -328[rbp], -1
	mov	DWORD PTR -324[rbp], -1
	mov	DWORD PTR -320[rbp], -1
	mov	DWORD PTR -316[rbp], -1
	mov	DWORD PTR -312[rbp], -1
	mov	DWORD PTR -308[rbp], -1
	mov	DWORD PTR -304[rbp], -1
	mov	DWORD PTR -300[rbp], -1
	mov	DWORD PTR -296[rbp], -1
	mov	DWORD PTR -292[rbp], -1
	mov	DWORD PTR -288[rbp], -1
	mov	DWORD PTR -284[rbp], -1
	mov	DWORD PTR -280[rbp], -1
	mov	DWORD PTR -276[rbp], -1
	mov	DWORD PTR -272[rbp], -1
	mov	DWORD PTR -268[rbp], -1
	mov	DWORD PTR -264[rbp], -1
	mov	DWORD PTR -260[rbp], -1
	mov	DWORD PTR -256[rbp], -1
	mov	DWORD PTR -252[rbp], -1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -128[rbp+rax*4]
	add	eax, 1
	mov	DWORD PTR -8[rbp], eax
	jmp	.L8
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -360[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 97
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	eax, DWORD PTR -352[rbp+rax*4]
	cmp	eax, -1
	jne	.L9
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	edx, DWORD PTR -8[rbp]
	mov	DWORD PTR -352[rbp+rax*4], edx
	add	DWORD PTR -12[rbp], 1
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -240[rbp+rax*4]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L10
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 25
	jle	.L11
	mov	eax, DWORD PTR -12[rbp]
	leave
	ret
0:
1:
2:
3:
4:
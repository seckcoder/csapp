
bufbomb:     file format elf32-i386


Disassembly of section .init:

0804877c <_init>:
 804877c:	55                   	push   %ebp
 804877d:	89 e5                	mov    %esp,%ebp
 804877f:	53                   	push   %ebx
 8048780:	83 ec 04             	sub    $0x4,%esp
 8048783:	e8 00 00 00 00       	call   8048788 <_init+0xc>
 8048788:	5b                   	pop    %ebx
 8048789:	81 c3 58 29 00 00    	add    $0x2958,%ebx
 804878f:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 8048795:	85 d2                	test   %edx,%edx
 8048797:	74 05                	je     804879e <_init+0x22>
 8048799:	e8 9e 00 00 00       	call   804883c <__gmon_start__@plt>
 804879e:	e8 ed 02 00 00       	call   8048a90 <frame_dummy>
 80487a3:	e8 e8 19 00 00       	call   804a190 <__do_global_ctors_aux>
 80487a8:	58                   	pop    %eax
 80487a9:	5b                   	pop    %ebx
 80487aa:	c9                   	leave  
 80487ab:	c3                   	ret    

Disassembly of section .plt:

080487ac <__errno_location@plt-0x10>:
 80487ac:	ff 35 e4 b0 04 08    	pushl  0x804b0e4
 80487b2:	ff 25 e8 b0 04 08    	jmp    *0x804b0e8
 80487b8:	00 00                	add    %al,(%eax)
	...

080487bc <__errno_location@plt>:
 80487bc:	ff 25 ec b0 04 08    	jmp    *0x804b0ec
 80487c2:	68 00 00 00 00       	push   $0x0
 80487c7:	e9 e0 ff ff ff       	jmp    80487ac <_init+0x30>

080487cc <sprintf@plt>:
 80487cc:	ff 25 f0 b0 04 08    	jmp    *0x804b0f0
 80487d2:	68 08 00 00 00       	push   $0x8
 80487d7:	e9 d0 ff ff ff       	jmp    80487ac <_init+0x30>

080487dc <srand@plt>:
 80487dc:	ff 25 f4 b0 04 08    	jmp    *0x804b0f4
 80487e2:	68 10 00 00 00       	push   $0x10
 80487e7:	e9 c0 ff ff ff       	jmp    80487ac <_init+0x30>

080487ec <connect@plt>:
 80487ec:	ff 25 f8 b0 04 08    	jmp    *0x804b0f8
 80487f2:	68 18 00 00 00       	push   $0x18
 80487f7:	e9 b0 ff ff ff       	jmp    80487ac <_init+0x30>

080487fc <mmap@plt>:
 80487fc:	ff 25 fc b0 04 08    	jmp    *0x804b0fc
 8048802:	68 20 00 00 00       	push   $0x20
 8048807:	e9 a0 ff ff ff       	jmp    80487ac <_init+0x30>

0804880c <getpid@plt>:
 804880c:	ff 25 00 b1 04 08    	jmp    *0x804b100
 8048812:	68 28 00 00 00       	push   $0x28
 8048817:	e9 90 ff ff ff       	jmp    80487ac <_init+0x30>

0804881c <random@plt>:
 804881c:	ff 25 04 b1 04 08    	jmp    *0x804b104
 8048822:	68 30 00 00 00       	push   $0x30
 8048827:	e9 80 ff ff ff       	jmp    80487ac <_init+0x30>

0804882c <signal@plt>:
 804882c:	ff 25 08 b1 04 08    	jmp    *0x804b108
 8048832:	68 38 00 00 00       	push   $0x38
 8048837:	e9 70 ff ff ff       	jmp    80487ac <_init+0x30>

0804883c <__gmon_start__@plt>:
 804883c:	ff 25 0c b1 04 08    	jmp    *0x804b10c
 8048842:	68 40 00 00 00       	push   $0x40
 8048847:	e9 60 ff ff ff       	jmp    80487ac <_init+0x30>

0804884c <__isoc99_sscanf@plt>:
 804884c:	ff 25 10 b1 04 08    	jmp    *0x804b110
 8048852:	68 48 00 00 00       	push   $0x48
 8048857:	e9 50 ff ff ff       	jmp    80487ac <_init+0x30>

0804885c <calloc@plt>:
 804885c:	ff 25 14 b1 04 08    	jmp    *0x804b114
 8048862:	68 50 00 00 00       	push   $0x50
 8048867:	e9 40 ff ff ff       	jmp    80487ac <_init+0x30>

0804886c <write@plt>:
 804886c:	ff 25 18 b1 04 08    	jmp    *0x804b118
 8048872:	68 58 00 00 00       	push   $0x58
 8048877:	e9 30 ff ff ff       	jmp    80487ac <_init+0x30>

0804887c <memset@plt>:
 804887c:	ff 25 1c b1 04 08    	jmp    *0x804b11c
 8048882:	68 60 00 00 00       	push   $0x60
 8048887:	e9 20 ff ff ff       	jmp    80487ac <_init+0x30>

0804888c <__libc_start_main@plt>:
 804888c:	ff 25 20 b1 04 08    	jmp    *0x804b120
 8048892:	68 68 00 00 00       	push   $0x68
 8048897:	e9 10 ff ff ff       	jmp    80487ac <_init+0x30>

0804889c <_IO_getc@plt>:
 804889c:	ff 25 24 b1 04 08    	jmp    *0x804b124
 80488a2:	68 70 00 00 00       	push   $0x70
 80488a7:	e9 00 ff ff ff       	jmp    80487ac <_init+0x30>

080488ac <read@plt>:
 80488ac:	ff 25 28 b1 04 08    	jmp    *0x804b128
 80488b2:	68 78 00 00 00       	push   $0x78
 80488b7:	e9 f0 fe ff ff       	jmp    80487ac <_init+0x30>

080488bc <socket@plt>:
 80488bc:	ff 25 2c b1 04 08    	jmp    *0x804b12c
 80488c2:	68 80 00 00 00       	push   $0x80
 80488c7:	e9 e0 fe ff ff       	jmp    80487ac <_init+0x30>

080488cc <bcopy@plt>:
 80488cc:	ff 25 30 b1 04 08    	jmp    *0x804b130
 80488d2:	68 88 00 00 00       	push   $0x88
 80488d7:	e9 d0 fe ff ff       	jmp    80487ac <_init+0x30>

080488dc <getopt@plt>:
 80488dc:	ff 25 34 b1 04 08    	jmp    *0x804b134
 80488e2:	68 90 00 00 00       	push   $0x90
 80488e7:	e9 c0 fe ff ff       	jmp    80487ac <_init+0x30>

080488ec <memcpy@plt>:
 80488ec:	ff 25 38 b1 04 08    	jmp    *0x804b138
 80488f2:	68 98 00 00 00       	push   $0x98
 80488f7:	e9 b0 fe ff ff       	jmp    80487ac <_init+0x30>

080488fc <fopen@plt>:
 80488fc:	ff 25 3c b1 04 08    	jmp    *0x804b13c
 8048902:	68 a0 00 00 00       	push   $0xa0
 8048907:	e9 a0 fe ff ff       	jmp    80487ac <_init+0x30>

0804890c <alarm@plt>:
 804890c:	ff 25 40 b1 04 08    	jmp    *0x804b140
 8048912:	68 a8 00 00 00       	push   $0xa8
 8048917:	e9 90 fe ff ff       	jmp    80487ac <_init+0x30>

0804891c <strcpy@plt>:
 804891c:	ff 25 44 b1 04 08    	jmp    *0x804b144
 8048922:	68 b0 00 00 00       	push   $0xb0
 8048927:	e9 80 fe ff ff       	jmp    80487ac <_init+0x30>

0804892c <printf@plt>:
 804892c:	ff 25 48 b1 04 08    	jmp    *0x804b148
 8048932:	68 b8 00 00 00       	push   $0xb8
 8048937:	e9 70 fe ff ff       	jmp    80487ac <_init+0x30>

0804893c <strcasecmp@plt>:
 804893c:	ff 25 4c b1 04 08    	jmp    *0x804b14c
 8048942:	68 c0 00 00 00       	push   $0xc0
 8048947:	e9 60 fe ff ff       	jmp    80487ac <_init+0x30>

0804894c <srandom@plt>:
 804894c:	ff 25 50 b1 04 08    	jmp    *0x804b150
 8048952:	68 c8 00 00 00       	push   $0xc8
 8048957:	e9 50 fe ff ff       	jmp    80487ac <_init+0x30>

0804895c <close@plt>:
 804895c:	ff 25 54 b1 04 08    	jmp    *0x804b154
 8048962:	68 d0 00 00 00       	push   $0xd0
 8048967:	e9 40 fe ff ff       	jmp    80487ac <_init+0x30>

0804896c <fwrite@plt>:
 804896c:	ff 25 58 b1 04 08    	jmp    *0x804b158
 8048972:	68 d8 00 00 00       	push   $0xd8
 8048977:	e9 30 fe ff ff       	jmp    80487ac <_init+0x30>

0804897c <fprintf@plt>:
 804897c:	ff 25 5c b1 04 08    	jmp    *0x804b15c
 8048982:	68 e0 00 00 00       	push   $0xe0
 8048987:	e9 20 fe ff ff       	jmp    80487ac <_init+0x30>

0804898c <gethostname@plt>:
 804898c:	ff 25 60 b1 04 08    	jmp    *0x804b160
 8048992:	68 e8 00 00 00       	push   $0xe8
 8048997:	e9 10 fe ff ff       	jmp    80487ac <_init+0x30>

0804899c <puts@plt>:
 804899c:	ff 25 64 b1 04 08    	jmp    *0x804b164
 80489a2:	68 f0 00 00 00       	push   $0xf0
 80489a7:	e9 00 fe ff ff       	jmp    80487ac <_init+0x30>

080489ac <rand@plt>:
 80489ac:	ff 25 68 b1 04 08    	jmp    *0x804b168
 80489b2:	68 f8 00 00 00       	push   $0xf8
 80489b7:	e9 f0 fd ff ff       	jmp    80487ac <_init+0x30>

080489bc <munmap@plt>:
 80489bc:	ff 25 6c b1 04 08    	jmp    *0x804b16c
 80489c2:	68 00 01 00 00       	push   $0x100
 80489c7:	e9 e0 fd ff ff       	jmp    80487ac <_init+0x30>

080489cc <gethostbyname@plt>:
 80489cc:	ff 25 70 b1 04 08    	jmp    *0x804b170
 80489d2:	68 08 01 00 00       	push   $0x108
 80489d7:	e9 d0 fd ff ff       	jmp    80487ac <_init+0x30>

080489dc <__strdup@plt>:
 80489dc:	ff 25 74 b1 04 08    	jmp    *0x804b174
 80489e2:	68 10 01 00 00       	push   $0x110
 80489e7:	e9 c0 fd ff ff       	jmp    80487ac <_init+0x30>

080489ec <exit@plt>:
 80489ec:	ff 25 78 b1 04 08    	jmp    *0x804b178
 80489f2:	68 18 01 00 00       	push   $0x118
 80489f7:	e9 b0 fd ff ff       	jmp    80487ac <_init+0x30>

Disassembly of section .text:

08048a00 <_start>:
 8048a00:	31 ed                	xor    %ebp,%ebp
 8048a02:	5e                   	pop    %esi
 8048a03:	89 e1                	mov    %esp,%ecx
 8048a05:	83 e4 f0             	and    $0xfffffff0,%esp
 8048a08:	50                   	push   %eax
 8048a09:	54                   	push   %esp
 8048a0a:	52                   	push   %edx
 8048a0b:	68 20 a1 04 08       	push   $0x804a120
 8048a10:	68 30 a1 04 08       	push   $0x804a130
 8048a15:	51                   	push   %ecx
 8048a16:	56                   	push   %esi
 8048a17:	68 48 8f 04 08       	push   $0x8048f48
 8048a1c:	e8 6b fe ff ff       	call   804888c <__libc_start_main@plt>
 8048a21:	f4                   	hlt    
 8048a22:	90                   	nop
 8048a23:	90                   	nop
 8048a24:	90                   	nop
 8048a25:	90                   	nop
 8048a26:	90                   	nop
 8048a27:	90                   	nop
 8048a28:	90                   	nop
 8048a29:	90                   	nop
 8048a2a:	90                   	nop
 8048a2b:	90                   	nop
 8048a2c:	90                   	nop
 8048a2d:	90                   	nop
 8048a2e:	90                   	nop
 8048a2f:	90                   	nop

08048a30 <__do_global_dtors_aux>:
 8048a30:	55                   	push   %ebp
 8048a31:	89 e5                	mov    %esp,%ebp
 8048a33:	53                   	push   %ebx
 8048a34:	83 ec 04             	sub    $0x4,%esp
 8048a37:	80 3d 0c b3 04 08 00 	cmpb   $0x0,0x804b30c
 8048a3e:	75 3f                	jne    8048a7f <__do_global_dtors_aux+0x4f>
 8048a40:	a1 10 b3 04 08       	mov    0x804b310,%eax
 8048a45:	bb 0c b0 04 08       	mov    $0x804b00c,%ebx
 8048a4a:	81 eb 08 b0 04 08    	sub    $0x804b008,%ebx
 8048a50:	c1 fb 02             	sar    $0x2,%ebx
 8048a53:	83 eb 01             	sub    $0x1,%ebx
 8048a56:	39 d8                	cmp    %ebx,%eax
 8048a58:	73 1e                	jae    8048a78 <__do_global_dtors_aux+0x48>
 8048a5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048a60:	83 c0 01             	add    $0x1,%eax
 8048a63:	a3 10 b3 04 08       	mov    %eax,0x804b310
 8048a68:	ff 14 85 08 b0 04 08 	call   *0x804b008(,%eax,4)
 8048a6f:	a1 10 b3 04 08       	mov    0x804b310,%eax
 8048a74:	39 d8                	cmp    %ebx,%eax
 8048a76:	72 e8                	jb     8048a60 <__do_global_dtors_aux+0x30>
 8048a78:	c6 05 0c b3 04 08 01 	movb   $0x1,0x804b30c
 8048a7f:	83 c4 04             	add    $0x4,%esp
 8048a82:	5b                   	pop    %ebx
 8048a83:	5d                   	pop    %ebp
 8048a84:	c3                   	ret    
 8048a85:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048a89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048a90 <frame_dummy>:
 8048a90:	55                   	push   %ebp
 8048a91:	89 e5                	mov    %esp,%ebp
 8048a93:	83 ec 18             	sub    $0x18,%esp
 8048a96:	a1 10 b0 04 08       	mov    0x804b010,%eax
 8048a9b:	85 c0                	test   %eax,%eax
 8048a9d:	74 12                	je     8048ab1 <frame_dummy+0x21>
 8048a9f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048aa4:	85 c0                	test   %eax,%eax
 8048aa6:	74 09                	je     8048ab1 <frame_dummy+0x21>
 8048aa8:	c7 04 24 10 b0 04 08 	movl   $0x804b010,(%esp)
 8048aaf:	ff d0                	call   *%eax
 8048ab1:	c9                   	leave  
 8048ab2:	c3                   	ret    
 8048ab3:	90                   	nop
 8048ab4:	90                   	nop
 8048ab5:	90                   	nop
 8048ab6:	90                   	nop
 8048ab7:	90                   	nop
 8048ab8:	90                   	nop
 8048ab9:	90                   	nop
 8048aba:	90                   	nop
 8048abb:	90                   	nop
 8048abc:	90                   	nop
 8048abd:	90                   	nop
 8048abe:	90                   	nop
 8048abf:	90                   	nop

08048ac0 <usage>:
 8048ac0:	55                   	push   %ebp
 8048ac1:	89 e5                	mov    %esp,%ebp
 8048ac3:	83 ec 18             	sub    $0x18,%esp
 8048ac6:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048aca:	c7 04 24 e4 a1 04 08 	movl   $0x804a1e4,(%esp)
 8048ad1:	e8 56 fe ff ff       	call   804892c <printf@plt>
 8048ad6:	c7 04 24 08 a2 04 08 	movl   $0x804a208,(%esp)
 8048add:	e8 ba fe ff ff       	call   804899c <puts@plt>
 8048ae2:	c7 04 24 9e a3 04 08 	movl   $0x804a39e,(%esp)
 8048ae9:	e8 ae fe ff ff       	call   804899c <puts@plt>
 8048aee:	c7 04 24 2c a2 04 08 	movl   $0x804a22c,(%esp)
 8048af5:	e8 a2 fe ff ff       	call   804899c <puts@plt>
 8048afa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048b01:	e8 e6 fe ff ff       	call   80489ec <exit@plt>

08048b06 <illegalhandler>:
 8048b06:	55                   	push   %ebp
 8048b07:	89 e5                	mov    %esp,%ebp
 8048b09:	83 ec 18             	sub    $0x18,%esp
 8048b0c:	c7 04 24 50 a2 04 08 	movl   $0x804a250,(%esp)
 8048b13:	e8 84 fe ff ff       	call   804899c <puts@plt>
 8048b18:	c7 04 24 b5 a3 04 08 	movl   $0x804a3b5,(%esp)
 8048b1f:	e8 78 fe ff ff       	call   804899c <puts@plt>
 8048b24:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048b2b:	e8 bc fe ff ff       	call   80489ec <exit@plt>

08048b30 <seghandler>:
 8048b30:	55                   	push   %ebp
 8048b31:	89 e5                	mov    %esp,%ebp
 8048b33:	83 ec 18             	sub    $0x18,%esp
 8048b36:	c7 04 24 7c a2 04 08 	movl   $0x804a27c,(%esp)
 8048b3d:	e8 5a fe ff ff       	call   804899c <puts@plt>
 8048b42:	c7 04 24 b5 a3 04 08 	movl   $0x804a3b5,(%esp)
 8048b49:	e8 4e fe ff ff       	call   804899c <puts@plt>
 8048b4e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048b55:	e8 92 fe ff ff       	call   80489ec <exit@plt>

08048b5a <bushandler>:
 8048b5a:	55                   	push   %ebp
 8048b5b:	89 e5                	mov    %esp,%ebp
 8048b5d:	83 ec 18             	sub    $0x18,%esp
 8048b60:	c7 04 24 a4 a2 04 08 	movl   $0x804a2a4,(%esp)
 8048b67:	e8 30 fe ff ff       	call   804899c <puts@plt>
 8048b6c:	c7 04 24 b5 a3 04 08 	movl   $0x804a3b5,(%esp)
 8048b73:	e8 24 fe ff ff       	call   804899c <puts@plt>
 8048b78:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048b7f:	e8 68 fe ff ff       	call   80489ec <exit@plt>

08048b84 <uniqueval>:
 8048b84:	55                   	push   %ebp
 8048b85:	89 e5                	mov    %esp,%ebp
 8048b87:	83 ec 18             	sub    $0x18,%esp
 8048b8a:	e8 7d fc ff ff       	call   804880c <getpid@plt>
 8048b8f:	89 04 24             	mov    %eax,(%esp)
 8048b92:	e8 b5 fd ff ff       	call   804894c <srandom@plt>
 8048b97:	e8 80 fc ff ff       	call   804881c <random@plt>
 8048b9c:	c9                   	leave  
 8048b9d:	c3                   	ret    

08048b9e <Gets>:
 8048b9e:	55                   	push   %ebp
 8048b9f:	89 e5                	mov    %esp,%ebp
 8048ba1:	57                   	push   %edi
 8048ba2:	56                   	push   %esi
 8048ba3:	53                   	push   %ebx
 8048ba4:	83 ec 2c             	sub    $0x2c,%esp
 8048ba7:	c7 05 28 b3 04 08 00 	movl   $0x0,0x804b328
 8048bae:	00 00 00 
 8048bb1:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8048bb4:	be d9 a4 04 08       	mov    $0x804a4d9,%esi
 8048bb9:	eb 4d                	jmp    8048c08 <Gets+0x6a>
 8048bbb:	88 45 d8             	mov    %al,-0x28(%ebp)
 8048bbe:	88 03                	mov    %al,(%ebx)
 8048bc0:	a1 28 b3 04 08       	mov    0x804b328,%eax
 8048bc5:	3d ff 03 00 00       	cmp    $0x3ff,%eax
 8048bca:	7f 39                	jg     8048c05 <Gets+0x67>
 8048bcc:	8d 14 40             	lea    (%eax,%eax,2),%edx
 8048bcf:	0f b6 4d d8          	movzbl -0x28(%ebp),%ecx
 8048bd3:	c0 e9 04             	shr    $0x4,%cl
 8048bd6:	0f be f9             	movsbl %cl,%edi
 8048bd9:	0f b6 3c 3e          	movzbl (%esi,%edi,1),%edi
 8048bdd:	89 f9                	mov    %edi,%ecx
 8048bdf:	88 8a 40 b3 04 08    	mov    %cl,0x804b340(%edx)
 8048be5:	0f b6 4d d8          	movzbl -0x28(%ebp),%ecx
 8048be9:	83 e1 0f             	and    $0xf,%ecx
 8048bec:	0f b6 0c 0e          	movzbl (%esi,%ecx,1),%ecx
 8048bf0:	88 8a 41 b3 04 08    	mov    %cl,0x804b341(%edx)
 8048bf6:	c6 82 42 b3 04 08 20 	movb   $0x20,0x804b342(%edx)
 8048bfd:	83 c0 01             	add    $0x1,%eax
 8048c00:	a3 28 b3 04 08       	mov    %eax,0x804b328
 8048c05:	83 c3 01             	add    $0x1,%ebx
 8048c08:	a1 14 b3 04 08       	mov    0x804b314,%eax
 8048c0d:	89 04 24             	mov    %eax,(%esp)
 8048c10:	e8 87 fc ff ff       	call   804889c <_IO_getc@plt>
 8048c15:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048c18:	74 05                	je     8048c1f <Gets+0x81>
 8048c1a:	83 f8 0a             	cmp    $0xa,%eax
 8048c1d:	75 9c                	jne    8048bbb <Gets+0x1d>
 8048c1f:	c6 03 00             	movb   $0x0,(%ebx)
 8048c22:	a1 28 b3 04 08       	mov    0x804b328,%eax
 8048c27:	c6 84 40 40 b3 04 08 	movb   $0x0,0x804b340(%eax,%eax,2)
 8048c2e:	00 
 8048c2f:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c32:	83 c4 2c             	add    $0x2c,%esp
 8048c35:	5b                   	pop    %ebx
 8048c36:	5e                   	pop    %esi
 8048c37:	5f                   	pop    %edi
 8048c38:	5d                   	pop    %ebp
 8048c39:	c3                   	ret    

08048c3a <testn>:
 8048c3a:	55                   	push   %ebp
 8048c3b:	89 e5                	mov    %esp,%ebp
 8048c3d:	53                   	push   %ebx
 8048c3e:	83 ec 24             	sub    $0x24,%esp
 8048c41:	e8 3e ff ff ff       	call   8048b84 <uniqueval>
 8048c46:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048c49:	e8 32 05 00 00       	call   8049180 <getbufn>
 8048c4e:	89 c3                	mov    %eax,%ebx
 8048c50:	e8 2f ff ff ff       	call   8048b84 <uniqueval>
 8048c55:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048c58:	39 d0                	cmp    %edx,%eax
 8048c5a:	74 0e                	je     8048c6a <testn+0x30>
 8048c5c:	c7 04 24 c4 a2 04 08 	movl   $0x804a2c4,(%esp)
 8048c63:	e8 34 fd ff ff       	call   804899c <puts@plt>
 8048c68:	eb 36                	jmp    8048ca0 <testn+0x66>
 8048c6a:	3b 1d 18 b3 04 08    	cmp    0x804b318,%ebx
 8048c70:	75 1e                	jne    8048c90 <testn+0x56>
 8048c72:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048c76:	c7 04 24 f0 a2 04 08 	movl   $0x804a2f0,(%esp)
 8048c7d:	e8 aa fc ff ff       	call   804892c <printf@plt>
 8048c82:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 8048c89:	e8 a1 05 00 00       	call   804922f <validate>
 8048c8e:	eb 10                	jmp    8048ca0 <testn+0x66>
 8048c90:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048c94:	c7 04 24 cb a3 04 08 	movl   $0x804a3cb,(%esp)
 8048c9b:	e8 8c fc ff ff       	call   804892c <printf@plt>
 8048ca0:	83 c4 24             	add    $0x24,%esp
 8048ca3:	5b                   	pop    %ebx
 8048ca4:	5d                   	pop    %ebp
 8048ca5:	c3                   	ret    

08048ca6 <bang>:
 8048ca6:	55                   	push   %ebp
 8048ca7:	89 e5                	mov    %esp,%ebp
 8048ca9:	83 ec 18             	sub    $0x18,%esp
 8048cac:	a1 24 b3 04 08       	mov    0x804b324,%eax
 8048cb1:	3b 05 18 b3 04 08    	cmp    0x804b318,%eax
 8048cb7:	75 1e                	jne    8048cd7 <bang+0x31>
 8048cb9:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048cbd:	c7 04 24 10 a3 04 08 	movl   $0x804a310,(%esp)
 8048cc4:	e8 63 fc ff ff       	call   804892c <printf@plt>
 8048cc9:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8048cd0:	e8 5a 05 00 00       	call   804922f <validate>
 8048cd5:	eb 10                	jmp    8048ce7 <bang+0x41>
 8048cd7:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048cdb:	c7 04 24 e7 a3 04 08 	movl   $0x804a3e7,(%esp)
 8048ce2:	e8 45 fc ff ff       	call   804892c <printf@plt>
 8048ce7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048cee:	e8 f9 fc ff ff       	call   80489ec <exit@plt>

08048cf3 <fizz>:
 8048cf3:	55                   	push   %ebp
 8048cf4:	89 e5                	mov    %esp,%ebp
 8048cf6:	83 ec 18             	sub    $0x18,%esp
 8048cf9:	8b 45 08             	mov    0x8(%ebp),%eax
 8048cfc:	3b 05 18 b3 04 08    	cmp    0x804b318,%eax
 8048d02:	75 1e                	jne    8048d22 <fizz+0x2f>
 8048d04:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d08:	c7 04 24 05 a4 04 08 	movl   $0x804a405,(%esp)
 8048d0f:	e8 18 fc ff ff       	call   804892c <printf@plt>
 8048d14:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048d1b:	e8 0f 05 00 00       	call   804922f <validate>
 8048d20:	eb 10                	jmp    8048d32 <fizz+0x3f>
 8048d22:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d26:	c7 04 24 38 a3 04 08 	movl   $0x804a338,(%esp)
 8048d2d:	e8 fa fb ff ff       	call   804892c <printf@plt>
 8048d32:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048d39:	e8 ae fc ff ff       	call   80489ec <exit@plt>

08048d3e <smoke>:
 8048d3e:	55                   	push   %ebp
 8048d3f:	89 e5                	mov    %esp,%ebp
 8048d41:	83 ec 18             	sub    $0x18,%esp
 8048d44:	c7 04 24 23 a4 04 08 	movl   $0x804a423,(%esp)
 8048d4b:	e8 4c fc ff ff       	call   804899c <puts@plt>
 8048d50:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048d57:	e8 d3 04 00 00       	call   804922f <validate>
 8048d5c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048d63:	e8 84 fc ff ff       	call   80489ec <exit@plt>

08048d68 <test>:
 8048d68:	55                   	push   %ebp
 8048d69:	89 e5                	mov    %esp,%ebp
 8048d6b:	53                   	push   %ebx
 8048d6c:	83 ec 24             	sub    $0x24,%esp
 8048d6f:	e8 10 fe ff ff       	call   8048b84 <uniqueval>
 8048d74:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048d77:	e8 22 04 00 00       	call   804919e <getbuf>
 8048d7c:	89 c3                	mov    %eax,%ebx
 8048d7e:	e8 01 fe ff ff       	call   8048b84 <uniqueval>
 8048d83:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048d86:	39 d0                	cmp    %edx,%eax
 8048d88:	74 0e                	je     8048d98 <test+0x30>
 8048d8a:	c7 04 24 c4 a2 04 08 	movl   $0x804a2c4,(%esp)
 8048d91:	e8 06 fc ff ff       	call   804899c <puts@plt>
 8048d96:	eb 36                	jmp    8048dce <test+0x66>
 8048d98:	3b 1d 18 b3 04 08    	cmp    0x804b318,%ebx
 8048d9e:	75 1e                	jne    8048dbe <test+0x56>
 8048da0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048da4:	c7 04 24 3e a4 04 08 	movl   $0x804a43e,(%esp)
 8048dab:	e8 7c fb ff ff       	call   804892c <printf@plt>
 8048db0:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048db7:	e8 73 04 00 00       	call   804922f <validate>
 8048dbc:	eb 10                	jmp    8048dce <test+0x66>
 8048dbe:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048dc2:	c7 04 24 5b a4 04 08 	movl   $0x804a45b,(%esp)
 8048dc9:	e8 5e fb ff ff       	call   804892c <printf@plt>
 8048dce:	83 c4 24             	add    $0x24,%esp
 8048dd1:	5b                   	pop    %ebx
 8048dd2:	5d                   	pop    %ebp
 8048dd3:	c3                   	ret    

08048dd4 <launch>:
 8048dd4:	55                   	push   %ebp
 8048dd5:	89 e5                	mov    %esp,%ebp
 8048dd7:	53                   	push   %ebx
 8048dd8:	83 ec 54             	sub    $0x54,%esp
 8048ddb:	89 c3                	mov    %eax,%ebx
 8048ddd:	8d 45 b8             	lea    -0x48(%ebp),%eax
 8048de0:	25 f8 3f 00 00       	and    $0x3ff8,%eax
 8048de5:	01 c2                	add    %eax,%edx
 8048de7:	8d 42 1e             	lea    0x1e(%edx),%eax
 8048dea:	83 e0 f0             	and    $0xfffffff0,%eax
 8048ded:	29 c4                	sub    %eax,%esp
 8048def:	8d 44 24 1b          	lea    0x1b(%esp),%eax
 8048df3:	83 e0 f0             	and    $0xfffffff0,%eax
 8048df6:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048dfa:	c7 44 24 04 f4 00 00 	movl   $0xf4,0x4(%esp)
 8048e01:	00 
 8048e02:	89 04 24             	mov    %eax,(%esp)
 8048e05:	e8 72 fa ff ff       	call   804887c <memset@plt>
 8048e0a:	c7 04 24 76 a4 04 08 	movl   $0x804a476,(%esp)
 8048e11:	e8 16 fb ff ff       	call   804892c <printf@plt>
 8048e16:	85 db                	test   %ebx,%ebx
 8048e18:	74 08                	je     8048e22 <launch+0x4e>
 8048e1a:	e8 1b fe ff ff       	call   8048c3a <testn>
 8048e1f:	90                   	nop
 8048e20:	eb 05                	jmp    8048e27 <launch+0x53>
 8048e22:	e8 41 ff ff ff       	call   8048d68 <test>
 8048e27:	83 3d 20 b3 04 08 00 	cmpl   $0x0,0x804b320
 8048e2e:	75 16                	jne    8048e46 <launch+0x72>
 8048e30:	c7 04 24 b5 a3 04 08 	movl   $0x804a3b5,(%esp)
 8048e37:	e8 60 fb ff ff       	call   804899c <puts@plt>
 8048e3c:	c7 05 20 b3 04 08 00 	movl   $0x0,0x804b320
 8048e43:	00 00 00 
 8048e46:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048e49:	c9                   	leave  
 8048e4a:	c3                   	ret    

08048e4b <launcher>:
 8048e4b:	55                   	push   %ebp
 8048e4c:	89 e5                	mov    %esp,%ebp
 8048e4e:	53                   	push   %ebx
 8048e4f:	83 ec 24             	sub    $0x24,%esp
 8048e52:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e55:	a3 2c b3 04 08       	mov    %eax,0x804b32c
 8048e5a:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048e5d:	a3 30 b3 04 08       	mov    %eax,0x804b330
 8048e62:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 8048e69:	00 
 8048e6a:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 8048e71:	00 
 8048e72:	c7 44 24 0c 22 01 00 	movl   $0x122,0xc(%esp)
 8048e79:	00 
 8048e7a:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
 8048e81:	00 
 8048e82:	c7 44 24 04 00 00 10 	movl   $0x100000,0x4(%esp)
 8048e89:	00 
 8048e8a:	c7 04 24 00 60 58 55 	movl   $0x55586000,(%esp)
 8048e91:	e8 66 f9 ff ff       	call   80487fc <mmap@plt>
 8048e96:	89 c3                	mov    %eax,%ebx
 8048e98:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048e9b:	75 31                	jne    8048ece <launcher+0x83>
 8048e9d:	a1 00 b3 04 08       	mov    0x804b300,%eax
 8048ea2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048ea6:	c7 44 24 08 23 00 00 	movl   $0x23,0x8(%esp)
 8048ead:	00 
 8048eae:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048eb5:	00 
 8048eb6:	c7 04 24 58 a3 04 08 	movl   $0x804a358,(%esp)
 8048ebd:	e8 aa fa ff ff       	call   804896c <fwrite@plt>
 8048ec2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048ec9:	e8 1e fb ff ff       	call   80489ec <exit@plt>
 8048ece:	8d 90 f8 ff 0f 00    	lea    0xffff8(%eax),%edx
 8048ed4:	89 15 44 bf 04 08    	mov    %edx,0x804bf44
 8048eda:	89 e0                	mov    %esp,%eax
 8048edc:	89 d4                	mov    %edx,%esp
 8048ede:	89 c2                	mov    %eax,%edx
 8048ee0:	89 15 34 b3 04 08    	mov    %edx,0x804b334
 8048ee6:	8b 15 30 b3 04 08    	mov    0x804b330,%edx
 8048eec:	a1 2c b3 04 08       	mov    0x804b32c,%eax
 8048ef1:	e8 de fe ff ff       	call   8048dd4 <launch>
 8048ef6:	a1 34 b3 04 08       	mov    0x804b334,%eax
 8048efb:	89 c4                	mov    %eax,%esp
 8048efd:	c7 44 24 04 00 00 10 	movl   $0x100000,0x4(%esp)
 8048f04:	00 
 8048f05:	89 1c 24             	mov    %ebx,(%esp)
 8048f08:	e8 af fa ff ff       	call   80489bc <munmap@plt>
 8048f0d:	85 c0                	test   %eax,%eax
 8048f0f:	79 31                	jns    8048f42 <launcher+0xf7>
 8048f11:	a1 00 b3 04 08       	mov    0x804b300,%eax
 8048f16:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048f1a:	c7 44 24 08 1d 00 00 	movl   $0x1d,0x8(%esp)
 8048f21:	00 
 8048f22:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048f29:	00 
 8048f2a:	c7 04 24 83 a4 04 08 	movl   $0x804a483,(%esp)
 8048f31:	e8 36 fa ff ff       	call   804896c <fwrite@plt>
 8048f36:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048f3d:	e8 aa fa ff ff       	call   80489ec <exit@plt>
 8048f42:	83 c4 24             	add    $0x24,%esp
 8048f45:	5b                   	pop    %ebx
 8048f46:	5d                   	pop    %ebp
 8048f47:	c3                   	ret    

08048f48 <main>:
 8048f48:	55                   	push   %ebp
 8048f49:	89 e5                	mov    %esp,%ebp
 8048f4b:	83 e4 f0             	and    $0xfffffff0,%esp
 8048f4e:	57                   	push   %edi
 8048f4f:	56                   	push   %esi
 8048f50:	53                   	push   %ebx
 8048f51:	83 ec 34             	sub    $0x34,%esp
 8048f54:	8b 75 08             	mov    0x8(%ebp),%esi
 8048f57:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8048f5a:	c7 44 24 04 30 8b 04 	movl   $0x8048b30,0x4(%esp)
 8048f61:	08 
 8048f62:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
 8048f69:	e8 be f8 ff ff       	call   804882c <signal@plt>
 8048f6e:	c7 44 24 04 5a 8b 04 	movl   $0x8048b5a,0x4(%esp)
 8048f75:	08 
 8048f76:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
 8048f7d:	e8 aa f8 ff ff       	call   804882c <signal@plt>
 8048f82:	c7 44 24 04 06 8b 04 	movl   $0x8048b06,0x4(%esp)
 8048f89:	08 
 8048f8a:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 8048f91:	e8 96 f8 ff ff       	call   804882c <signal@plt>
 8048f96:	e8 1a 04 00 00       	call   80493b5 <initialize_bomb>
 8048f9b:	a1 04 b3 04 08       	mov    0x804b304,%eax
 8048fa0:	a3 14 b3 04 08       	mov    %eax,0x804b314
 8048fa5:	bf 01 00 00 00       	mov    $0x1,%edi
 8048faa:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
 8048fb1:	00 
 8048fb2:	e9 d2 00 00 00       	jmp    8049089 <main+0x141>
 8048fb7:	3c 68                	cmp    $0x68,%al
 8048fb9:	74 39                	je     8048ff4 <main+0xac>
 8048fbb:	3c 68                	cmp    $0x68,%al
 8048fbd:	7f 0a                	jg     8048fc9 <main+0x81>
 8048fbf:	3c 66                	cmp    $0x66,%al
 8048fc1:	0f 85 bb 00 00 00    	jne    8049082 <main+0x13a>
 8048fc7:	eb 7d                	jmp    8049046 <main+0xfe>
 8048fc9:	3c 6e                	cmp    $0x6e,%al
 8048fcb:	90                   	nop
 8048fcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048fd0:	74 10                	je     8048fe2 <main+0x9a>
 8048fd2:	3c 74                	cmp    $0x74,%al
 8048fd4:	0f 85 a8 00 00 00    	jne    8049082 <main+0x13a>
 8048fda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048fe0:	eb 1e                	jmp    8049000 <main+0xb8>
 8048fe2:	bf 05 00 00 00       	mov    $0x5,%edi
 8048fe7:	c7 44 24 2c 01 00 00 	movl   $0x1,0x2c(%esp)
 8048fee:	00 
 8048fef:	e9 95 00 00 00       	jmp    8049089 <main+0x141>
 8048ff4:	8b 03                	mov    (%ebx),%eax
 8048ff6:	e8 c5 fa ff ff       	call   8048ac0 <usage>
 8048ffb:	e9 89 00 00 00       	jmp    8049089 <main+0x141>
 8049000:	a1 08 b3 04 08       	mov    0x804b308,%eax
 8049005:	89 04 24             	mov    %eax,(%esp)
 8049008:	e8 cf f9 ff ff       	call   80489dc <__strdup@plt>
 804900d:	a3 1c b3 04 08       	mov    %eax,0x804b31c
 8049012:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049016:	c7 04 24 a1 a4 04 08 	movl   $0x804a4a1,(%esp)
 804901d:	e8 0a f9 ff ff       	call   804892c <printf@plt>
 8049022:	a1 1c b3 04 08       	mov    0x804b31c,%eax
 8049027:	89 04 24             	mov    %eax,(%esp)
 804902a:	e8 ba 10 00 00       	call   804a0e9 <gencookie>
 804902f:	a3 18 b3 04 08       	mov    %eax,0x804b318
 8049034:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049038:	c7 04 24 ad a4 04 08 	movl   $0x804a4ad,(%esp)
 804903f:	e8 e8 f8 ff ff       	call   804892c <printf@plt>
 8049044:	eb 43                	jmp    8049089 <main+0x141>
 8049046:	c7 44 24 04 bb a4 04 	movl   $0x804a4bb,0x4(%esp)
 804904d:	08 
 804904e:	a1 08 b3 04 08       	mov    0x804b308,%eax
 8049053:	89 04 24             	mov    %eax,(%esp)
 8049056:	e8 a1 f8 ff ff       	call   80488fc <fopen@plt>
 804905b:	a3 14 b3 04 08       	mov    %eax,0x804b314
 8049060:	85 c0                	test   %eax,%eax
 8049062:	75 25                	jne    8049089 <main+0x141>
 8049064:	a1 08 b3 04 08       	mov    0x804b308,%eax
 8049069:	89 44 24 04          	mov    %eax,0x4(%esp)
 804906d:	c7 04 24 bd a4 04 08 	movl   $0x804a4bd,(%esp)
 8049074:	e8 b3 f8 ff ff       	call   804892c <printf@plt>
 8049079:	8b 03                	mov    (%ebx),%eax
 804907b:	e8 40 fa ff ff       	call   8048ac0 <usage>
 8049080:	eb 07                	jmp    8049089 <main+0x141>
 8049082:	8b 03                	mov    (%ebx),%eax
 8049084:	e8 37 fa ff ff       	call   8048ac0 <usage>
 8049089:	c7 44 24 08 d2 a4 04 	movl   $0x804a4d2,0x8(%esp)
 8049090:	08 
 8049091:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8049095:	89 34 24             	mov    %esi,(%esp)
 8049098:	e8 3f f8 ff ff       	call   80488dc <getopt@plt>
 804909d:	3c ff                	cmp    $0xff,%al
 804909f:	0f 85 12 ff ff ff    	jne    8048fb7 <main+0x6f>
 80490a5:	83 3d 1c b3 04 08 00 	cmpl   $0x0,0x804b31c
 80490ac:	75 13                	jne    80490c1 <main+0x179>
 80490ae:	c7 04 24 7c a3 04 08 	movl   $0x804a37c,(%esp)
 80490b5:	e8 e2 f8 ff ff       	call   804899c <puts@plt>
 80490ba:	8b 03                	mov    (%ebx),%eax
 80490bc:	e8 ff f9 ff ff       	call   8048ac0 <usage>
 80490c1:	a1 18 b3 04 08       	mov    0x804b318,%eax
 80490c6:	89 04 24             	mov    %eax,(%esp)
 80490c9:	e8 7e f8 ff ff       	call   804894c <srandom@plt>
 80490ce:	e8 49 f7 ff ff       	call   804881c <random@plt>
 80490d3:	25 f8 0f 00 00       	and    $0xff8,%eax
 80490d8:	89 44 24 28          	mov    %eax,0x28(%esp)
 80490dc:	89 7c 24 1c          	mov    %edi,0x1c(%esp)
 80490e0:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
 80490e7:	00 
 80490e8:	89 3c 24             	mov    %edi,(%esp)
 80490eb:	e8 6c f7 ff ff       	call   804885c <calloc@plt>
 80490f0:	89 c6                	mov    %eax,%esi
 80490f2:	89 44 24 20          	mov    %eax,0x20(%esp)
 80490f6:	8d 47 fe             	lea    -0x2(%edi),%eax
 80490f9:	89 44 24 24          	mov    %eax,0x24(%esp)
 80490fd:	85 c0                	test   %eax,%eax
 80490ff:	7e 21                	jle    8049122 <main+0x1da>
 8049101:	bb 00 00 00 00       	mov    $0x0,%ebx
 8049106:	89 7c 24 18          	mov    %edi,0x18(%esp)
 804910a:	89 c7                	mov    %eax,%edi
 804910c:	e8 0b f7 ff ff       	call   804881c <random@plt>
 8049111:	83 e0 38             	and    $0x38,%eax
 8049114:	89 04 9e             	mov    %eax,(%esi,%ebx,4)
 8049117:	83 c3 01             	add    $0x1,%ebx
 804911a:	39 fb                	cmp    %edi,%ebx
 804911c:	7c ee                	jl     804910c <main+0x1c4>
 804911e:	8b 7c 24 18          	mov    0x18(%esp),%edi
 8049122:	83 ff 01             	cmp    $0x1,%edi
 8049125:	7e 10                	jle    8049137 <main+0x1ef>
 8049127:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804912b:	8b 44 24 20          	mov    0x20(%esp),%eax
 804912f:	c7 44 90 f8 38 00 00 	movl   $0x38,-0x8(%eax,%edx,4)
 8049136:	00 
 8049137:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804913b:	8b 44 24 20          	mov    0x20(%esp),%eax
 804913f:	c7 44 90 fc 00 00 00 	movl   $0x0,-0x4(%eax,%edx,4)
 8049146:	00 
 8049147:	85 ff                	test   %edi,%edi
 8049149:	7e 23                	jle    804916e <main+0x226>
 804914b:	bb 00 00 00 00       	mov    $0x0,%ebx
 8049150:	8b 44 24 28          	mov    0x28(%esp),%eax
 8049154:	03 04 9e             	add    (%esi,%ebx,4),%eax
 8049157:	89 44 24 04          	mov    %eax,0x4(%esp)
 804915b:	8b 54 24 2c          	mov    0x2c(%esp),%edx
 804915f:	89 14 24             	mov    %edx,(%esp)
 8049162:	e8 e4 fc ff ff       	call   8048e4b <launcher>
 8049167:	83 c3 01             	add    $0x1,%ebx
 804916a:	39 df                	cmp    %ebx,%edi
 804916c:	7f e2                	jg     8049150 <main+0x208>
 804916e:	b8 00 00 00 00       	mov    $0x0,%eax
 8049173:	83 c4 34             	add    $0x34,%esp
 8049176:	5b                   	pop    %ebx
 8049177:	5e                   	pop    %esi
 8049178:	5f                   	pop    %edi
 8049179:	89 ec                	mov    %ebp,%esp
 804917b:	5d                   	pop    %ebp
 804917c:	c3                   	ret    
 804917d:	90                   	nop
 804917e:	90                   	nop
 804917f:	90                   	nop

08049180 <getbufn>:
 8049180:	55                   	push   %ebp
 8049181:	89 e5                	mov    %esp,%ebp
 8049183:	81 ec 18 02 00 00    	sub    $0x218,%esp
 8049189:	8d 85 f8 fd ff ff    	lea    -0x208(%ebp),%eax
 804918f:	89 04 24             	mov    %eax,(%esp)
 8049192:	e8 07 fa ff ff       	call   8048b9e <Gets>
 8049197:	b8 01 00 00 00       	mov    $0x1,%eax
 804919c:	c9                   	leave  
 804919d:	c3                   	ret    

0804919e <getbuf>:
 804919e:	55                   	push   %ebp
 804919f:	89 e5                	mov    %esp,%ebp
 80491a1:	83 ec 38             	sub    $0x38,%esp // 56
 80491a4:	8d 45 d8             	lea    -0x28(%ebp),%eax // 40 + 4
 80491a7:	89 04 24             	mov    %eax,(%esp)
 80491aa:	e8 ef f9 ff ff       	call   8048b9e <Gets>
 80491af:	b8 01 00 00 00       	mov    $0x1,%eax
 80491b4:	c9                   	leave  
 80491b5:	c3                   	ret    
 80491b6:	90                   	nop
 80491b7:	90                   	nop

080491b8 <server_check>:
 80491b8:	55                   	push   %ebp
 80491b9:	89 e5                	mov    %esp,%ebp
 80491bb:	83 ec 18             	sub    $0x18,%esp
 80491be:	8b 45 08             	mov    0x8(%ebp),%eax
 80491c1:	83 3d 1c b3 04 08 00 	cmpl   $0x0,0x804b31c
 80491c8:	75 0e                	jne    80491d8 <server_check+0x20>
 80491ca:	c7 04 24 ec a4 04 08 	movl   $0x804a4ec,(%esp)
 80491d1:	e8 c6 f7 ff ff       	call   804899c <puts@plt>
 80491d6:	eb 55                	jmp    804922d <server_check+0x75>
 80491d8:	83 f8 04             	cmp    $0x4,%eax
 80491db:	76 0e                	jbe    80491eb <server_check+0x33>
 80491dd:	c7 04 24 18 a5 04 08 	movl   $0x804a518,(%esp)
 80491e4:	e8 b3 f7 ff ff       	call   804899c <puts@plt>
 80491e9:	eb 42                	jmp    804922d <server_check+0x75>
 80491eb:	c7 05 20 b3 04 08 01 	movl   $0x1,0x804b320
 80491f2:	00 00 00 
 80491f5:	b9 e4 b2 04 08       	mov    $0x804b2e4,%ecx
 80491fa:	8b 14 81             	mov    (%ecx,%eax,4),%edx
 80491fd:	83 ea 01             	sub    $0x1,%edx
 8049200:	89 14 81             	mov    %edx,(%ecx,%eax,4)
 8049203:	85 d2                	test   %edx,%edx
 8049205:	7e 0e                	jle    8049215 <server_check+0x5d>
 8049207:	c7 04 24 a3 a6 04 08 	movl   $0x804a6a3,(%esp)
 804920e:	e8 89 f7 ff ff       	call   804899c <puts@plt>
 8049213:	eb 18                	jmp    804922d <server_check+0x75>
 8049215:	c7 04 24 ae a6 04 08 	movl   $0x804a6ae,(%esp)
 804921c:	e8 7b f7 ff ff       	call   804899c <puts@plt>
 8049221:	c7 04 24 b7 a6 04 08 	movl   $0x804a6b7,(%esp)
 8049228:	e8 6f f7 ff ff       	call   804899c <puts@plt>
 804922d:	c9                   	leave  
 804922e:	c3                   	ret    

0804922f <validate>:
 804922f:	55                   	push   %ebp
 8049230:	89 e5                	mov    %esp,%ebp
 8049232:	81 ec 28 40 00 00    	sub    $0x4028,%esp
 8049238:	89 5d f8             	mov    %ebx,-0x8(%ebp)
 804923b:	89 7d fc             	mov    %edi,-0x4(%ebp)
 804923e:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8049241:	83 3d 1c b3 04 08 00 	cmpl   $0x0,0x804b31c
 8049248:	75 11                	jne    804925b <validate+0x2c>
 804924a:	c7 04 24 ec a4 04 08 	movl   $0x804a4ec,(%esp)
 8049251:	e8 46 f7 ff ff       	call   804899c <puts@plt>
 8049256:	e9 1e 01 00 00       	jmp    8049379 <validate+0x14a>
 804925b:	83 fb 04             	cmp    $0x4,%ebx
 804925e:	76 11                	jbe    8049271 <validate+0x42>
 8049260:	c7 04 24 18 a5 04 08 	movl   $0x804a518,(%esp)
 8049267:	e8 30 f7 ff ff       	call   804899c <puts@plt>
 804926c:	e9 08 01 00 00       	jmp    8049379 <validate+0x14a>
 8049271:	c7 05 20 b3 04 08 01 	movl   $0x1,0x804b320
 8049278:	00 00 00 
 804927b:	ba e4 b2 04 08       	mov    $0x804b2e4,%edx
 8049280:	8b 04 9a             	mov    (%edx,%ebx,4),%eax
 8049283:	83 e8 01             	sub    $0x1,%eax
 8049286:	89 04 9a             	mov    %eax,(%edx,%ebx,4)
 8049289:	85 c0                	test   %eax,%eax
 804928b:	7e 11                	jle    804929e <validate+0x6f>
 804928d:	c7 04 24 a3 a6 04 08 	movl   $0x804a6a3,(%esp)
 8049294:	e8 03 f7 ff ff       	call   804899c <puts@plt>
 8049299:	e9 db 00 00 00       	jmp    8049379 <validate+0x14a>
 804929e:	c7 04 24 c1 a6 04 08 	movl   $0x804a6c1,(%esp)
 80492a5:	e8 f2 f6 ff ff       	call   804899c <puts@plt>
 80492aa:	a1 e0 b2 04 08       	mov    0x804b2e0,%eax
 80492af:	83 f8 01             	cmp    $0x1,%eax
 80492b2:	0f 85 b5 00 00 00    	jne    804936d <validate+0x13e>
 80492b8:	bf 40 b3 04 08       	mov    $0x804b340,%edi
 80492bd:	b8 00 00 00 00       	mov    $0x0,%eax
 80492c2:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80492c7:	f2 ae                	repnz scas %es:(%edi),%al
 80492c9:	f7 d1                	not    %ecx
 80492cb:	83 c1 1f             	add    $0x1f,%ecx
 80492ce:	81 f9 00 20 00 00    	cmp    $0x2000,%ecx
 80492d4:	76 11                	jbe    80492e7 <validate+0xb8>
 80492d6:	c7 04 24 40 a5 04 08 	movl   $0x804a540,(%esp)
 80492dd:	e8 ba f6 ff ff       	call   804899c <puts@plt>
 80492e2:	e9 92 00 00 00       	jmp    8049379 <validate+0x14a>
 80492e7:	c7 44 24 10 40 b3 04 	movl   $0x804b340,0x10(%esp)
 80492ee:	08 
 80492ef:	a1 18 b3 04 08       	mov    0x804b318,%eax
 80492f4:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80492f8:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 80492fc:	c7 44 24 04 c7 a6 04 	movl   $0x804a6c7,0x4(%esp)
 8049303:	08 
 8049304:	8d 9d f8 df ff ff    	lea    -0x2008(%ebp),%ebx
 804930a:	89 1c 24             	mov    %ebx,(%esp)
 804930d:	e8 ba f4 ff ff       	call   80487cc <sprintf@plt>
 8049312:	8d 85 f8 bf ff ff    	lea    -0x4008(%ebp),%eax
 8049318:	89 44 24 14          	mov    %eax,0x14(%esp)
 804931c:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 8049323:	00 
 8049324:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 8049328:	c7 44 24 08 d0 a6 04 	movl   $0x804a6d0,0x8(%esp)
 804932f:	08 
 8049330:	c7 44 24 04 d3 a6 04 	movl   $0x804a6d3,0x4(%esp)
 8049337:	08 
 8049338:	a1 1c b3 04 08       	mov    0x804b31c,%eax
 804933d:	89 04 24             	mov    %eax,(%esp)
 8049340:	e8 8e 0c 00 00       	call   8049fd3 <driver_post>
 8049345:	85 c0                	test   %eax,%eax
 8049347:	75 0e                	jne    8049357 <validate+0x128>
 8049349:	c7 04 24 70 a5 04 08 	movl   $0x804a570,(%esp)
 8049350:	e8 47 f6 ff ff       	call   804899c <puts@plt>
 8049355:	eb 16                	jmp    804936d <validate+0x13e>
 8049357:	8d 85 f8 bf ff ff    	lea    -0x4008(%ebp),%eax
 804935d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049361:	c7 04 24 a0 a5 04 08 	movl   $0x804a5a0,(%esp)
 8049368:	e8 bf f5 ff ff       	call   804892c <printf@plt>
 804936d:	c7 04 24 d6 a6 04 08 	movl   $0x804a6d6,(%esp)
 8049374:	e8 23 f6 ff ff       	call   804899c <puts@plt>
 8049379:	8b 5d f8             	mov    -0x8(%ebp),%ebx
 804937c:	8b 7d fc             	mov    -0x4(%ebp),%edi
 804937f:	89 ec                	mov    %ebp,%esp
 8049381:	5d                   	pop    %ebp
 8049382:	c3                   	ret    

08049383 <alarmhandler>:
 8049383:	55                   	push   %ebp
 8049384:	89 e5                	mov    %esp,%ebp
 8049386:	83 ec 18             	sub    $0x18,%esp
 8049389:	c7 44 24 04 58 02 00 	movl   $0x258,0x4(%esp)
 8049390:	00 
 8049391:	c7 04 24 e0 a5 04 08 	movl   $0x804a5e0,(%esp)
 8049398:	e8 8f f5 ff ff       	call   804892c <printf@plt>
 804939d:	c7 04 24 b5 a3 04 08 	movl   $0x804a3b5,(%esp)
 80493a4:	e8 f3 f5 ff ff       	call   804899c <puts@plt>
 80493a9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80493b0:	e8 37 f6 ff ff       	call   80489ec <exit@plt>

080493b5 <initialize_bomb>:
 80493b5:	55                   	push   %ebp
 80493b6:	89 e5                	mov    %esp,%ebp
 80493b8:	81 ec 68 20 00 00    	sub    $0x2068,%esp
 80493be:	89 5d f4             	mov    %ebx,-0xc(%ebp)
 80493c1:	89 75 f8             	mov    %esi,-0x8(%ebp)
 80493c4:	89 7d fc             	mov    %edi,-0x4(%ebp)
 80493c7:	a1 e0 b2 04 08       	mov    0x804b2e0,%eax
 80493cc:	83 f8 01             	cmp    $0x1,%eax
 80493cf:	0f 85 d4 00 00 00    	jne    80494a9 <initialize_bomb+0xf4>
 80493d5:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
 80493dc:	00 
 80493dd:	8d 45 a8             	lea    -0x58(%ebp),%eax
 80493e0:	89 04 24             	mov    %eax,(%esp)
 80493e3:	e8 a4 f5 ff ff       	call   804898c <gethostname@plt>
 80493e8:	85 c0                	test   %eax,%eax
 80493ea:	75 1b                	jne    8049407 <initialize_bomb+0x52>
 80493ec:	a1 a0 b1 04 08       	mov    0x804b1a0,%eax
 80493f1:	bb 00 00 00 00       	mov    $0x0,%ebx
 80493f6:	8d 75 a8             	lea    -0x58(%ebp),%esi
 80493f9:	bf a0 b1 04 08       	mov    $0x804b1a0,%edi
 80493fe:	85 c0                	test   %eax,%eax
 8049400:	75 1d                	jne    804941f <initialize_bomb+0x6a>
 8049402:	e9 8a 00 00 00       	jmp    8049491 <initialize_bomb+0xdc>
 8049407:	c7 04 24 14 a6 04 08 	movl   $0x804a614,(%esp)
 804940e:	e8 89 f5 ff ff       	call   804899c <puts@plt>
 8049413:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804941a:	e8 cd f5 ff ff       	call   80489ec <exit@plt>
 804941f:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049423:	89 04 24             	mov    %eax,(%esp)
 8049426:	e8 11 f5 ff ff       	call   804893c <strcasecmp@plt>
 804942b:	85 c0                	test   %eax,%eax
 804942d:	74 0c                	je     804943b <initialize_bomb+0x86>
 804942f:	83 c3 01             	add    $0x1,%ebx
 8049432:	8b 04 9f             	mov    (%edi,%ebx,4),%eax
 8049435:	85 c0                	test   %eax,%eax
 8049437:	75 e6                	jne    804941f <initialize_bomb+0x6a>
 8049439:	eb 56                	jmp    8049491 <initialize_bomb+0xdc>
 804943b:	8d 85 a8 df ff ff    	lea    -0x2058(%ebp),%eax
 8049441:	89 04 24             	mov    %eax,(%esp)
 8049444:	e8 77 00 00 00       	call   80494c0 <init_driver>
 8049449:	85 c0                	test   %eax,%eax
 804944b:	79 22                	jns    804946f <initialize_bomb+0xba>
 804944d:	8d 85 a8 df ff ff    	lea    -0x2058(%ebp),%eax
 8049453:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049457:	c7 04 24 e0 a6 04 08 	movl   $0x804a6e0,(%esp)
 804945e:	e8 c9 f4 ff ff       	call   804892c <printf@plt>
 8049463:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804946a:	e8 7d f5 ff ff       	call   80489ec <exit@plt>
 804946f:	c7 44 24 04 83 93 04 	movl   $0x8049383,0x4(%esp)
 8049476:	08 
 8049477:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 804947e:	e8 a9 f3 ff ff       	call   804882c <signal@plt>
 8049483:	c7 04 24 58 02 00 00 	movl   $0x258,(%esp)
 804948a:	e8 7d f4 ff ff       	call   804890c <alarm@plt>
 804948f:	eb 18                	jmp    80494a9 <initialize_bomb+0xf4>
 8049491:	c7 04 24 4c a6 04 08 	movl   $0x804a64c,(%esp)
 8049498:	e8 ff f4 ff ff       	call   804899c <puts@plt>
 804949d:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80494a4:	e8 43 f5 ff ff       	call   80489ec <exit@plt>
 80494a9:	8b 5d f4             	mov    -0xc(%ebp),%ebx
 80494ac:	8b 75 f8             	mov    -0x8(%ebp),%esi
 80494af:	8b 7d fc             	mov    -0x4(%ebp),%edi
 80494b2:	89 ec                	mov    %ebp,%esp
 80494b4:	5d                   	pop    %ebp
 80494b5:	c3                   	ret    
 80494b6:	90                   	nop
 80494b7:	90                   	nop
 80494b8:	90                   	nop
 80494b9:	90                   	nop
 80494ba:	90                   	nop
 80494bb:	90                   	nop
 80494bc:	90                   	nop
 80494bd:	90                   	nop
 80494be:	90                   	nop
 80494bf:	90                   	nop

080494c0 <init_driver>:
 80494c0:	55                   	push   %ebp
 80494c1:	89 e5                	mov    %esp,%ebp
 80494c3:	57                   	push   %edi
 80494c4:	56                   	push   %esi
 80494c5:	53                   	push   %ebx
 80494c6:	83 ec 2c             	sub    $0x2c,%esp
 80494c9:	8b 7d 08             	mov    0x8(%ebp),%edi
 80494cc:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80494d3:	00 
 80494d4:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
 80494db:	e8 4c f3 ff ff       	call   804882c <signal@plt>
 80494e0:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80494e7:	00 
 80494e8:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 80494ef:	e8 38 f3 ff ff       	call   804882c <signal@plt>
 80494f4:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80494fb:	00 
 80494fc:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 8049503:	e8 24 f3 ff ff       	call   804882c <signal@plt>
 8049508:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804950f:	00 
 8049510:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049517:	00 
 8049518:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804951f:	e8 98 f3 ff ff       	call   80488bc <socket@plt>
 8049524:	89 c6                	mov    %eax,%esi
 8049526:	85 c0                	test   %eax,%eax
 8049528:	79 4e                	jns    8049578 <init_driver+0xb8>
 804952a:	c7 07 45 72 72 6f    	movl   $0x6f727245,(%edi)
 8049530:	c7 47 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edi)
 8049537:	c7 47 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edi)
 804953e:	c7 47 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edi)
 8049545:	c7 47 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edi)
 804954c:	c7 47 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edi)
 8049553:	c7 47 18 63 72 65 61 	movl   $0x61657263,0x18(%edi)
 804955a:	c7 47 1c 74 65 20 73 	movl   $0x73206574,0x1c(%edi)
 8049561:	c7 47 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%edi)
 8049568:	66 c7 47 24 74 00    	movw   $0x74,0x24(%edi)
 804956e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049573:	e9 3b 01 00 00       	jmp    80496b3 <init_driver+0x1f3>
 8049578:	c7 04 24 29 a9 04 08 	movl   $0x804a929,(%esp)
 804957f:	e8 48 f4 ff ff       	call   80489cc <gethostbyname@plt>
 8049584:	85 c0                	test   %eax,%eax
 8049586:	75 68                	jne    80495f0 <init_driver+0x130>
 8049588:	c7 07 45 72 72 6f    	movl   $0x6f727245,(%edi)
 804958e:	c7 47 04 72 3a 20 44 	movl   $0x44203a72,0x4(%edi)
 8049595:	c7 47 08 4e 53 20 69 	movl   $0x6920534e,0x8(%edi)
 804959c:	c7 47 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%edi)
 80495a3:	c7 47 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edi)
 80495aa:	c7 47 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edi)
 80495b1:	c7 47 18 72 65 73 6f 	movl   $0x6f736572,0x18(%edi)
 80495b8:	c7 47 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%edi)
 80495bf:	c7 47 20 73 65 72 76 	movl   $0x76726573,0x20(%edi)
 80495c6:	c7 47 24 65 72 20 61 	movl   $0x61207265,0x24(%edi)
 80495cd:	c7 47 28 64 64 72 65 	movl   $0x65726464,0x28(%edi)
 80495d4:	66 c7 47 2c 73 73    	movw   $0x7373,0x2c(%edi)
 80495da:	c6 47 2e 00          	movb   $0x0,0x2e(%edi)
 80495de:	89 34 24             	mov    %esi,(%esp)
 80495e1:	e8 76 f3 ff ff       	call   804895c <close@plt>
 80495e6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80495eb:	e9 c3 00 00 00       	jmp    80496b3 <init_driver+0x1f3>
 80495f0:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 80495f3:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 80495f9:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 8049600:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 8049607:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
 804960e:	66 c7 45 d8 02 00    	movw   $0x2,-0x28(%ebp)
 8049614:	8b 50 0c             	mov    0xc(%eax),%edx
 8049617:	89 54 24 08          	mov    %edx,0x8(%esp)
 804961b:	8d 55 dc             	lea    -0x24(%ebp),%edx
 804961e:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049622:	8b 40 10             	mov    0x10(%eax),%eax
 8049625:	8b 00                	mov    (%eax),%eax
 8049627:	89 04 24             	mov    %eax,(%esp)
 804962a:	e8 9d f2 ff ff       	call   80488cc <bcopy@plt>
 804962f:	66 c7 45 da 00 50    	movw   $0x5000,-0x26(%ebp)
 8049635:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 804963c:	00 
 804963d:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8049641:	89 34 24             	mov    %esi,(%esp)
 8049644:	e8 a3 f1 ff ff       	call   80487ec <connect@plt>
 8049649:	85 c0                	test   %eax,%eax
 804964b:	79 50                	jns    804969d <init_driver+0x1dd>
 804964d:	c7 07 45 72 72 6f    	movl   $0x6f727245,(%edi)
 8049653:	c7 47 04 72 3a 20 55 	movl   $0x55203a72,0x4(%edi)
 804965a:	c7 47 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%edi)
 8049661:	c7 47 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%edi)
 8049668:	c7 47 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%edi)
 804966f:	c7 47 14 6e 65 63 74 	movl   $0x7463656e,0x14(%edi)
 8049676:	c7 47 18 20 74 6f 20 	movl   $0x206f7420,0x18(%edi)
 804967d:	c7 47 1c 73 65 72 76 	movl   $0x76726573,0x1c(%edi)
 8049684:	66 c7 47 20 65 72    	movw   $0x7265,0x20(%edi)
 804968a:	c6 47 22 00          	movb   $0x0,0x22(%edi)
 804968e:	89 34 24             	mov    %esi,(%esp)
 8049691:	e8 c6 f2 ff ff       	call   804895c <close@plt>
 8049696:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804969b:	eb 16                	jmp    80496b3 <init_driver+0x1f3>
 804969d:	89 34 24             	mov    %esi,(%esp)
 80496a0:	e8 b7 f2 ff ff       	call   804895c <close@plt>
 80496a5:	66 c7 07 4f 4b       	movw   $0x4b4f,(%edi)
 80496aa:	c6 47 02 00          	movb   $0x0,0x2(%edi)
 80496ae:	b8 00 00 00 00       	mov    $0x0,%eax
 80496b3:	83 c4 2c             	add    $0x2c,%esp
 80496b6:	5b                   	pop    %ebx
 80496b7:	5e                   	pop    %esi
 80496b8:	5f                   	pop    %edi
 80496b9:	5d                   	pop    %ebp
 80496ba:	c3                   	ret    

080496bb <init_timeout>:
 80496bb:	55                   	push   %ebp
 80496bc:	89 e5                	mov    %esp,%ebp
 80496be:	53                   	push   %ebx
 80496bf:	83 ec 14             	sub    $0x14,%esp
 80496c2:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80496c5:	85 db                	test   %ebx,%ebx
 80496c7:	74 26                	je     80496ef <init_timeout+0x34>
 80496c9:	c7 44 24 04 56 a0 04 	movl   $0x804a056,0x4(%esp)
 80496d0:	08 
 80496d1:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 80496d8:	e8 4f f1 ff ff       	call   804882c <signal@plt>
 80496dd:	85 db                	test   %ebx,%ebx
 80496df:	b8 00 00 00 00       	mov    $0x0,%eax
 80496e4:	0f 48 d8             	cmovs  %eax,%ebx
 80496e7:	89 1c 24             	mov    %ebx,(%esp)
 80496ea:	e8 1d f2 ff ff       	call   804890c <alarm@plt>
 80496ef:	83 c4 14             	add    $0x14,%esp
 80496f2:	5b                   	pop    %ebx
 80496f3:	5d                   	pop    %ebp
 80496f4:	c3                   	ret    

080496f5 <rio_readlineb>:
 80496f5:	55                   	push   %ebp
 80496f6:	89 e5                	mov    %esp,%ebp
 80496f8:	57                   	push   %edi
 80496f9:	56                   	push   %esi
 80496fa:	53                   	push   %ebx
 80496fb:	83 ec 3c             	sub    $0x3c,%esp
 80496fe:	89 c3                	mov    %eax,%ebx
 8049700:	89 4d c8             	mov    %ecx,-0x38(%ebp)
 8049703:	89 55 d0             	mov    %edx,-0x30(%ebp)
 8049706:	83 f9 01             	cmp    $0x1,%ecx
 8049709:	0f 86 b4 00 00 00    	jbe    80497c3 <rio_readlineb+0xce>
 804970f:	8d 78 0c             	lea    0xc(%eax),%edi
 8049712:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 8049715:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
 804971c:	eb 3c                	jmp    804975a <rio_readlineb+0x65>
 804971e:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 8049725:	00 
 8049726:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804972a:	8b 03                	mov    (%ebx),%eax
 804972c:	89 04 24             	mov    %eax,(%esp)
 804972f:	e8 78 f1 ff ff       	call   80488ac <read@plt>
 8049734:	89 43 04             	mov    %eax,0x4(%ebx)
 8049737:	85 c0                	test   %eax,%eax
 8049739:	79 11                	jns    804974c <rio_readlineb+0x57>
 804973b:	e8 7c f0 ff ff       	call   80487bc <__errno_location@plt>
 8049740:	83 38 04             	cmpl   $0x4,(%eax)
 8049743:	74 15                	je     804975a <rio_readlineb+0x65>
 8049745:	be ff ff ff ff       	mov    $0xffffffff,%esi
 804974a:	eb 51                	jmp    804979d <rio_readlineb+0xa8>
 804974c:	85 c0                	test   %eax,%eax
 804974e:	0f 84 87 00 00 00    	je     80497db <rio_readlineb+0xe6>
 8049754:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8049757:	89 43 08             	mov    %eax,0x8(%ebx)
 804975a:	8b 73 04             	mov    0x4(%ebx),%esi
 804975d:	85 f6                	test   %esi,%esi
 804975f:	7e bd                	jle    804971e <rio_readlineb+0x29>
 8049761:	85 f6                	test   %esi,%esi
 8049763:	75 7d                	jne    80497e2 <rio_readlineb+0xed>
 8049765:	8b 43 08             	mov    0x8(%ebx),%eax
 8049768:	89 74 24 08          	mov    %esi,0x8(%esp)
 804976c:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049770:	8d 55 e7             	lea    -0x19(%ebp),%edx
 8049773:	89 14 24             	mov    %edx,(%esp)
 8049776:	e8 71 f1 ff ff       	call   80488ec <memcpy@plt>
 804977b:	01 73 08             	add    %esi,0x8(%ebx)
 804977e:	29 73 04             	sub    %esi,0x4(%ebx)
 8049781:	83 fe 01             	cmp    $0x1,%esi
 8049784:	75 17                	jne    804979d <rio_readlineb+0xa8>
 8049786:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 804978a:	8b 55 d0             	mov    -0x30(%ebp),%edx
 804978d:	88 02                	mov    %al,(%edx)
 804978f:	83 c2 01             	add    $0x1,%edx
 8049792:	89 55 d0             	mov    %edx,-0x30(%ebp)
 8049795:	80 7d e7 0a          	cmpb   $0xa,-0x19(%ebp)
 8049799:	75 1a                	jne    80497b5 <rio_readlineb+0xc0>
 804979b:	eb 2d                	jmp    80497ca <rio_readlineb+0xd5>
 804979d:	8b 55 cc             	mov    -0x34(%ebp),%edx
 80497a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80497a5:	85 f6                	test   %esi,%esi
 80497a7:	75 2a                	jne    80497d3 <rio_readlineb+0xde>
 80497a9:	b8 00 00 00 00       	mov    $0x0,%eax
 80497ae:	83 fa 01             	cmp    $0x1,%edx
 80497b1:	75 17                	jne    80497ca <rio_readlineb+0xd5>
 80497b3:	eb 1e                	jmp    80497d3 <rio_readlineb+0xde>
 80497b5:	83 45 cc 01          	addl   $0x1,-0x34(%ebp)
 80497b9:	8b 45 cc             	mov    -0x34(%ebp),%eax
 80497bc:	39 45 c8             	cmp    %eax,-0x38(%ebp)
 80497bf:	77 99                	ja     804975a <rio_readlineb+0x65>
 80497c1:	eb 07                	jmp    80497ca <rio_readlineb+0xd5>
 80497c3:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
 80497ca:	8b 55 d0             	mov    -0x30(%ebp),%edx
 80497cd:	c6 02 00             	movb   $0x0,(%edx)
 80497d0:	8b 45 cc             	mov    -0x34(%ebp),%eax
 80497d3:	83 c4 3c             	add    $0x3c,%esp
 80497d6:	5b                   	pop    %ebx
 80497d7:	5e                   	pop    %esi
 80497d8:	5f                   	pop    %edi
 80497d9:	5d                   	pop    %ebp
 80497da:	c3                   	ret    
 80497db:	be 00 00 00 00       	mov    $0x0,%esi
 80497e0:	eb bb                	jmp    804979d <rio_readlineb+0xa8>
 80497e2:	8b 43 08             	mov    0x8(%ebx),%eax
 80497e5:	0f b6 00             	movzbl (%eax),%eax
 80497e8:	88 45 e7             	mov    %al,-0x19(%ebp)
 80497eb:	83 43 08 01          	addl   $0x1,0x8(%ebx)
 80497ef:	83 6b 04 01          	subl   $0x1,0x4(%ebx)
 80497f3:	eb 91                	jmp    8049786 <rio_readlineb+0x91>

080497f5 <submitr>:
 80497f5:	55                   	push   %ebp
 80497f6:	89 e5                	mov    %esp,%ebp
 80497f8:	57                   	push   %edi
 80497f9:	56                   	push   %esi
 80497fa:	53                   	push   %ebx
 80497fb:	81 ec 6c c0 00 00    	sub    $0xc06c,%esp
 8049801:	8b 75 0c             	mov    0xc(%ebp),%esi
 8049804:	c7 85 c8 5f ff ff 00 	movl   $0x0,-0xa038(%ebp)
 804980b:	00 00 00 
 804980e:	c7 04 24 10 aa 04 08 	movl   $0x804aa10,(%esp)
 8049815:	e8 82 f1 ff ff       	call   804899c <puts@plt>
 804981a:	8b 45 08             	mov    0x8(%ebp),%eax
 804981d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049821:	c7 04 24 3c a9 04 08 	movl   $0x804a93c,(%esp)
 8049828:	e8 ff f0 ff ff       	call   804892c <printf@plt>
 804982d:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049831:	c7 04 24 4a a9 04 08 	movl   $0x804a94a,(%esp)
 8049838:	e8 ef f0 ff ff       	call   804892c <printf@plt>
 804983d:	8b 4d 10             	mov    0x10(%ebp),%ecx
 8049840:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8049844:	c7 04 24 54 a9 04 08 	movl   $0x804a954,(%esp)
 804984b:	e8 dc f0 ff ff       	call   804892c <printf@plt>
 8049850:	8b 7d 14             	mov    0x14(%ebp),%edi
 8049853:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049857:	c7 04 24 a1 a4 04 08 	movl   $0x804a4a1,(%esp)
 804985e:	e8 c9 f0 ff ff       	call   804892c <printf@plt>
 8049863:	8b 45 18             	mov    0x18(%ebp),%eax
 8049866:	89 44 24 04          	mov    %eax,0x4(%esp)
 804986a:	c7 04 24 60 a9 04 08 	movl   $0x804a960,(%esp)
 8049871:	e8 b6 f0 ff ff       	call   804892c <printf@plt>
 8049876:	8b 4d 1c             	mov    0x1c(%ebp),%ecx
 8049879:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804987d:	c7 04 24 69 a9 04 08 	movl   $0x804a969,(%esp)
 8049884:	e8 a3 f0 ff ff       	call   804892c <printf@plt>
 8049889:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8049890:	00 
 8049891:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049898:	00 
 8049899:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 80498a0:	e8 17 f0 ff ff       	call   80488bc <socket@plt>
 80498a5:	89 85 b0 3f ff ff    	mov    %eax,-0xc050(%ebp)
 80498ab:	85 c0                	test   %eax,%eax
 80498ad:	79 1b                	jns    80498ca <submitr+0xd5>
 80498af:	b8 30 aa 04 08       	mov    $0x804aa30,%eax
 80498b4:	b9 26 00 00 00       	mov    $0x26,%ecx
 80498b9:	8b 7d 20             	mov    0x20(%ebp),%edi
 80498bc:	89 c6                	mov    %eax,%esi
 80498be:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 80498c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80498c5:	e9 90 06 00 00       	jmp    8049f5a <submitr+0x765>
 80498ca:	8b 45 08             	mov    0x8(%ebp),%eax
 80498cd:	89 04 24             	mov    %eax,(%esp)
 80498d0:	e8 f7 f0 ff ff       	call   80489cc <gethostbyname@plt>
 80498d5:	85 c0                	test   %eax,%eax
 80498d7:	75 29                	jne    8049902 <submitr+0x10d>
 80498d9:	b8 58 aa 04 08       	mov    $0x804aa58,%eax
 80498de:	b9 37 00 00 00       	mov    $0x37,%ecx
 80498e3:	8b 7d 20             	mov    0x20(%ebp),%edi
 80498e6:	89 c6                	mov    %eax,%esi
 80498e8:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 80498ea:	8b 85 b0 3f ff ff    	mov    -0xc050(%ebp),%eax
 80498f0:	89 04 24             	mov    %eax,(%esp)
 80498f3:	e8 64 f0 ff ff       	call   804895c <close@plt>
 80498f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80498fd:	e9 58 06 00 00       	jmp    8049f5a <submitr+0x765>
 8049902:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 8049905:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 804990b:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 8049912:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 8049919:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
 8049920:	66 c7 45 d8 02 00    	movw   $0x2,-0x28(%ebp)
 8049926:	8b 50 0c             	mov    0xc(%eax),%edx
 8049929:	89 54 24 08          	mov    %edx,0x8(%esp)
 804992d:	8d 55 dc             	lea    -0x24(%ebp),%edx
 8049930:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049934:	8b 40 10             	mov    0x10(%eax),%eax
 8049937:	8b 00                	mov    (%eax),%eax
 8049939:	89 04 24             	mov    %eax,(%esp)
 804993c:	e8 8b ef ff ff       	call   80488cc <bcopy@plt>
 8049941:	66 c1 ce 08          	ror    $0x8,%si
 8049945:	66 89 75 da          	mov    %si,-0x26(%ebp)
 8049949:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 8049950:	00 
 8049951:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8049955:	8b 8d b0 3f ff ff    	mov    -0xc050(%ebp),%ecx
 804995b:	89 0c 24             	mov    %ecx,(%esp)
 804995e:	e8 89 ee ff ff       	call   80487ec <connect@plt>
 8049963:	85 c0                	test   %eax,%eax
 8049965:	79 29                	jns    8049990 <submitr+0x19b>
 8049967:	b8 90 aa 04 08       	mov    $0x804aa90,%eax
 804996c:	b9 2f 00 00 00       	mov    $0x2f,%ecx
 8049971:	8b 7d 20             	mov    0x20(%ebp),%edi
 8049974:	89 c6                	mov    %eax,%esi
 8049976:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 8049978:	8b 85 b0 3f ff ff    	mov    -0xc050(%ebp),%eax
 804997e:	89 04 24             	mov    %eax,(%esp)
 8049981:	e8 d6 ef ff ff       	call   804895c <close@plt>
 8049986:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804998b:	e9 ca 05 00 00       	jmp    8049f5a <submitr+0x765>
 8049990:	ba ff ff ff ff       	mov    $0xffffffff,%edx
 8049995:	8b 7d 1c             	mov    0x1c(%ebp),%edi
 8049998:	b8 00 00 00 00       	mov    $0x0,%eax
 804999d:	89 d1                	mov    %edx,%ecx
 804999f:	f2 ae                	repnz scas %es:(%edi),%al
 80499a1:	89 cb                	mov    %ecx,%ebx
 80499a3:	f7 d3                	not    %ebx
 80499a5:	8b 7d 10             	mov    0x10(%ebp),%edi
 80499a8:	89 d1                	mov    %edx,%ecx
 80499aa:	f2 ae                	repnz scas %es:(%edi),%al
 80499ac:	89 8d b4 3f ff ff    	mov    %ecx,-0xc04c(%ebp)
 80499b2:	8b 7d 14             	mov    0x14(%ebp),%edi
 80499b5:	89 d1                	mov    %edx,%ecx
 80499b7:	f2 ae                	repnz scas %es:(%edi),%al
 80499b9:	89 ce                	mov    %ecx,%esi
 80499bb:	f7 d6                	not    %esi
 80499bd:	8b 7d 18             	mov    0x18(%ebp),%edi
 80499c0:	89 d1                	mov    %edx,%ecx
 80499c2:	f2 ae                	repnz scas %es:(%edi),%al
 80499c4:	2b b5 b4 3f ff ff    	sub    -0xc04c(%ebp),%esi
 80499ca:	29 ce                	sub    %ecx,%esi
 80499cc:	8d 44 5b fd          	lea    -0x3(%ebx,%ebx,2),%eax
 80499d0:	8d 44 06 7b          	lea    0x7b(%esi,%eax,1),%eax
 80499d4:	3d 00 20 00 00       	cmp    $0x2000,%eax
 80499d9:	76 7c                	jbe    8049a57 <submitr+0x262>
 80499db:	8b 75 20             	mov    0x20(%ebp),%esi
 80499de:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 80499e4:	c7 46 04 72 3a 20 52 	movl   $0x52203a72,0x4(%esi)
 80499eb:	c7 46 08 65 73 75 6c 	movl   $0x6c757365,0x8(%esi)
 80499f2:	c7 46 0c 74 20 73 74 	movl   $0x74732074,0xc(%esi)
 80499f9:	c7 46 10 72 69 6e 67 	movl   $0x676e6972,0x10(%esi)
 8049a00:	c7 46 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%esi)
 8049a07:	c7 46 18 20 6c 61 72 	movl   $0x72616c20,0x18(%esi)
 8049a0e:	c7 46 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%esi)
 8049a15:	c7 46 20 49 6e 63 72 	movl   $0x72636e49,0x20(%esi)
 8049a1c:	c7 46 24 65 61 73 65 	movl   $0x65736165,0x24(%esi)
 8049a23:	c7 46 28 20 53 55 42 	movl   $0x42555320,0x28(%esi)
 8049a2a:	c7 46 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%esi)
 8049a31:	c7 46 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%esi)
 8049a38:	c7 46 34 42 55 46 00 	movl   $0x465542,0x34(%esi)
 8049a3f:	8b bd b0 3f ff ff    	mov    -0xc050(%ebp),%edi
 8049a45:	89 3c 24             	mov    %edi,(%esp)
 8049a48:	e8 0f ef ff ff       	call   804895c <close@plt>
 8049a4d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a52:	e9 03 05 00 00       	jmp    8049f5a <submitr+0x765>
 8049a57:	8d 95 cc 7f ff ff    	lea    -0x8034(%ebp),%edx
 8049a5d:	b9 00 08 00 00       	mov    $0x800,%ecx
 8049a62:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a67:	89 d7                	mov    %edx,%edi
 8049a69:	f3 ab                	rep stos %eax,%es:(%edi)
 8049a6b:	8b 7d 1c             	mov    0x1c(%ebp),%edi
 8049a6e:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049a73:	f2 ae                	repnz scas %es:(%edi),%al
 8049a75:	f7 d1                	not    %ecx
 8049a77:	89 cf                	mov    %ecx,%edi
 8049a79:	83 ef 01             	sub    $0x1,%edi
 8049a7c:	0f 84 e3 04 00 00    	je     8049f65 <submitr+0x770>
 8049a82:	89 d6                	mov    %edx,%esi
 8049a84:	bb 00 00 00 00       	mov    $0x0,%ebx
 8049a89:	89 bd b4 3f ff ff    	mov    %edi,-0xc04c(%ebp)
 8049a8f:	8b 7d 1c             	mov    0x1c(%ebp),%edi
 8049a92:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
 8049a96:	3c 2a                	cmp    $0x2a,%al
 8049a98:	74 24                	je     8049abe <submitr+0x2c9>
 8049a9a:	3c 2d                	cmp    $0x2d,%al
 8049a9c:	74 20                	je     8049abe <submitr+0x2c9>
 8049a9e:	3c 2e                	cmp    $0x2e,%al
 8049aa0:	74 1c                	je     8049abe <submitr+0x2c9>
 8049aa2:	3c 5f                	cmp    $0x5f,%al
 8049aa4:	74 18                	je     8049abe <submitr+0x2c9>
 8049aa6:	8d 50 d0             	lea    -0x30(%eax),%edx
 8049aa9:	80 fa 09             	cmp    $0x9,%dl
 8049aac:	76 10                	jbe    8049abe <submitr+0x2c9>
 8049aae:	8d 50 bf             	lea    -0x41(%eax),%edx
 8049ab1:	80 fa 19             	cmp    $0x19,%dl
 8049ab4:	76 08                	jbe    8049abe <submitr+0x2c9>
 8049ab6:	8d 50 9f             	lea    -0x61(%eax),%edx
 8049ab9:	80 fa 19             	cmp    $0x19,%dl
 8049abc:	77 07                	ja     8049ac5 <submitr+0x2d0>
 8049abe:	88 06                	mov    %al,(%esi)
 8049ac0:	83 c6 01             	add    $0x1,%esi
 8049ac3:	eb 55                	jmp    8049b1a <submitr+0x325>
 8049ac5:	3c 20                	cmp    $0x20,%al
 8049ac7:	75 08                	jne    8049ad1 <submitr+0x2dc>
 8049ac9:	c6 06 2b             	movb   $0x2b,(%esi)
 8049acc:	83 c6 01             	add    $0x1,%esi
 8049acf:	eb 49                	jmp    8049b1a <submitr+0x325>
 8049ad1:	8d 50 e0             	lea    -0x20(%eax),%edx
 8049ad4:	80 fa 5f             	cmp    $0x5f,%dl
 8049ad7:	76 04                	jbe    8049add <submitr+0x2e8>
 8049ad9:	3c 09                	cmp    $0x9,%al
 8049adb:	75 51                	jne    8049b2e <submitr+0x339>
 8049add:	0f b6 c0             	movzbl %al,%eax
 8049ae0:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049ae4:	c7 44 24 04 75 a9 04 	movl   $0x804a975,0x4(%esp)
 8049aeb:	08 
 8049aec:	8d 85 c0 3f ff ff    	lea    -0xc040(%ebp),%eax
 8049af2:	89 04 24             	mov    %eax,(%esp)
 8049af5:	e8 d2 ec ff ff       	call   80487cc <sprintf@plt>
 8049afa:	0f b6 85 c0 3f ff ff 	movzbl -0xc040(%ebp),%eax
 8049b01:	88 06                	mov    %al,(%esi)
 8049b03:	0f b6 85 c1 3f ff ff 	movzbl -0xc03f(%ebp),%eax
 8049b0a:	88 46 01             	mov    %al,0x1(%esi)
 8049b0d:	0f b6 85 c2 3f ff ff 	movzbl -0xc03e(%ebp),%eax
 8049b14:	88 46 02             	mov    %al,0x2(%esi)
 8049b17:	83 c6 03             	add    $0x3,%esi
 8049b1a:	83 c3 01             	add    $0x1,%ebx
 8049b1d:	3b 9d b4 3f ff ff    	cmp    -0xc04c(%ebp),%ebx
 8049b23:	0f 85 69 ff ff ff    	jne    8049a92 <submitr+0x29d>
 8049b29:	e9 37 04 00 00       	jmp    8049f65 <submitr+0x770>
 8049b2e:	b8 c0 aa 04 08       	mov    $0x804aac0,%eax
 8049b33:	b9 43 00 00 00       	mov    $0x43,%ecx
 8049b38:	8b 7d 20             	mov    0x20(%ebp),%edi
 8049b3b:	89 c6                	mov    %eax,%esi
 8049b3d:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 8049b3f:	8b 85 b0 3f ff ff    	mov    -0xc050(%ebp),%eax
 8049b45:	89 04 24             	mov    %eax,(%esp)
 8049b48:	e8 0f ee ff ff       	call   804895c <close@plt>
 8049b4d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049b52:	e9 03 04 00 00       	jmp    8049f5a <submitr+0x765>
 8049b57:	01 c6                	add    %eax,%esi
 8049b59:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049b5d:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049b61:	89 3c 24             	mov    %edi,(%esp)
 8049b64:	e8 03 ed ff ff       	call   804886c <write@plt>
 8049b69:	85 c0                	test   %eax,%eax
 8049b6b:	7f 0f                	jg     8049b7c <submitr+0x387>
 8049b6d:	e8 4a ec ff ff       	call   80487bc <__errno_location@plt>
 8049b72:	83 38 04             	cmpl   $0x4,(%eax)
 8049b75:	75 13                	jne    8049b8a <submitr+0x395>
 8049b77:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b7c:	29 c3                	sub    %eax,%ebx
 8049b7e:	75 d7                	jne    8049b57 <submitr+0x362>
 8049b80:	8b bd b4 3f ff ff    	mov    -0xc04c(%ebp),%edi
 8049b86:	85 ff                	test   %edi,%edi
 8049b88:	79 64                	jns    8049bee <submitr+0x3f9>
 8049b8a:	8b 7d 20             	mov    0x20(%ebp),%edi
 8049b8d:	be 04 ab 04 08       	mov    $0x804ab04,%esi
 8049b92:	b8 34 00 00 00       	mov    $0x34,%eax
 8049b97:	f7 c7 01 00 00 00    	test   $0x1,%edi
 8049b9d:	74 04                	je     8049ba3 <submitr+0x3ae>
 8049b9f:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 8049ba0:	83 e8 01             	sub    $0x1,%eax
 8049ba3:	f7 c7 02 00 00 00    	test   $0x2,%edi
 8049ba9:	74 05                	je     8049bb0 <submitr+0x3bb>
 8049bab:	66 a5                	movsw  %ds:(%esi),%es:(%edi)
 8049bad:	83 e8 02             	sub    $0x2,%eax
 8049bb0:	89 c1                	mov    %eax,%ecx
 8049bb2:	c1 e9 02             	shr    $0x2,%ecx
 8049bb5:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049bb7:	ba 00 00 00 00       	mov    $0x0,%edx
 8049bbc:	a8 02                	test   $0x2,%al
 8049bbe:	74 0b                	je     8049bcb <submitr+0x3d6>
 8049bc0:	0f b7 0c 16          	movzwl (%esi,%edx,1),%ecx
 8049bc4:	66 89 0c 17          	mov    %cx,(%edi,%edx,1)
 8049bc8:	83 c2 02             	add    $0x2,%edx
 8049bcb:	a8 01                	test   $0x1,%al
 8049bcd:	74 07                	je     8049bd6 <submitr+0x3e1>
 8049bcf:	0f b6 04 16          	movzbl (%esi,%edx,1),%eax
 8049bd3:	88 04 17             	mov    %al,(%edi,%edx,1)
 8049bd6:	8b 8d b0 3f ff ff    	mov    -0xc050(%ebp),%ecx
 8049bdc:	89 0c 24             	mov    %ecx,(%esp)
 8049bdf:	e8 78 ed ff ff       	call   804895c <close@plt>
 8049be4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049be9:	e9 6c 03 00 00       	jmp    8049f5a <submitr+0x765>
 8049bee:	8b b5 b0 3f ff ff    	mov    -0xc050(%ebp),%esi
 8049bf4:	89 b5 cc df ff ff    	mov    %esi,-0x2034(%ebp)
 8049bfa:	c7 85 d0 df ff ff 00 	movl   $0x0,-0x2030(%ebp)
 8049c01:	00 00 00 
 8049c04:	8d 85 cc df ff ff    	lea    -0x2034(%ebp),%eax
 8049c0a:	8d 95 d8 df ff ff    	lea    -0x2028(%ebp),%edx
 8049c10:	89 95 d4 df ff ff    	mov    %edx,-0x202c(%ebp)
 8049c16:	8d 95 cc 9f ff ff    	lea    -0x6034(%ebp),%edx
 8049c1c:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049c21:	e8 cf fa ff ff       	call   80496f5 <rio_readlineb>
 8049c26:	85 c0                	test   %eax,%eax
 8049c28:	7f 29                	jg     8049c53 <submitr+0x45e>
 8049c2a:	b8 38 ab 04 08       	mov    $0x804ab38,%eax
 8049c2f:	b9 3e 00 00 00       	mov    $0x3e,%ecx
 8049c34:	8b 7d 20             	mov    0x20(%ebp),%edi
 8049c37:	89 c6                	mov    %eax,%esi
 8049c39:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 8049c3b:	8b 85 b0 3f ff ff    	mov    -0xc050(%ebp),%eax
 8049c41:	89 04 24             	mov    %eax,(%esp)
 8049c44:	e8 13 ed ff ff       	call   804895c <close@plt>
 8049c49:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c4e:	e9 07 03 00 00       	jmp    8049f5a <submitr+0x765>
 8049c53:	8d 9d cc 9f ff ff    	lea    -0x6034(%ebp),%ebx
 8049c59:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8049c5d:	c7 04 24 7c a9 04 08 	movl   $0x804a97c,(%esp)
 8049c64:	e8 c3 ec ff ff       	call   804892c <printf@plt>
 8049c69:	8d 85 c8 3f ff ff    	lea    -0xc038(%ebp),%eax
 8049c6f:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049c73:	8d 85 c8 5f ff ff    	lea    -0xa038(%ebp),%eax
 8049c79:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049c7d:	8d 85 cc 5f ff ff    	lea    -0xa034(%ebp),%eax
 8049c83:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049c87:	c7 44 24 04 8e a9 04 	movl   $0x804a98e,0x4(%esp)
 8049c8e:	08 
 8049c8f:	89 1c 24             	mov    %ebx,(%esp)
 8049c92:	e8 b5 eb ff ff       	call   804884c <__isoc99_sscanf@plt>
 8049c97:	8d b5 cc df ff ff    	lea    -0x2034(%ebp),%esi
 8049c9d:	e9 a6 00 00 00       	jmp    8049d48 <submitr+0x553>
 8049ca2:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049ca7:	89 da                	mov    %ebx,%edx
 8049ca9:	89 f0                	mov    %esi,%eax
 8049cab:	e8 45 fa ff ff       	call   80496f5 <rio_readlineb>
 8049cb0:	85 c0                	test   %eax,%eax
 8049cb2:	0f 8f 80 00 00 00    	jg     8049d38 <submitr+0x543>
 8049cb8:	8b 75 20             	mov    0x20(%ebp),%esi
 8049cbb:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049cc1:	c7 46 04 72 3a 20 43 	movl   $0x43203a72,0x4(%esi)
 8049cc8:	c7 46 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%esi)
 8049ccf:	c7 46 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%esi)
 8049cd6:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049cdd:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049ce4:	c7 46 18 72 65 61 64 	movl   $0x64616572,0x18(%esi)
 8049ceb:	c7 46 1c 20 68 65 61 	movl   $0x61656820,0x1c(%esi)
 8049cf2:	c7 46 20 64 65 72 73 	movl   $0x73726564,0x20(%esi)
 8049cf9:	c7 46 24 20 66 72 6f 	movl   $0x6f726620,0x24(%esi)
 8049d00:	c7 46 28 6d 20 41 75 	movl   $0x7541206d,0x28(%esi)
 8049d07:	c7 46 2c 74 6f 6c 61 	movl   $0x616c6f74,0x2c(%esi)
 8049d0e:	c7 46 30 62 20 73 65 	movl   $0x65732062,0x30(%esi)
 8049d15:	c7 46 34 72 76 65 72 	movl   $0x72657672,0x34(%esi)
 8049d1c:	c6 46 38 00          	movb   $0x0,0x38(%esi)
 8049d20:	8b bd b0 3f ff ff    	mov    -0xc050(%ebp),%edi
 8049d26:	89 3c 24             	mov    %edi,(%esp)
 8049d29:	e8 2e ec ff ff       	call   804895c <close@plt>
 8049d2e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049d33:	e9 22 02 00 00       	jmp    8049f5a <submitr+0x765>
 8049d38:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8049d3c:	c7 04 24 9f a9 04 08 	movl   $0x804a99f,(%esp)
 8049d43:	e8 e4 eb ff ff       	call   804892c <printf@plt>
 8049d48:	b8 f2 a9 04 08       	mov    $0x804a9f2,%eax
 8049d4d:	0f b6 13             	movzbl (%ebx),%edx
 8049d50:	3a 10                	cmp    (%eax),%dl
 8049d52:	0f 85 4a ff ff ff    	jne    8049ca2 <submitr+0x4ad>
 8049d58:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 8049d5c:	3a 50 01             	cmp    0x1(%eax),%dl
 8049d5f:	0f 85 3d ff ff ff    	jne    8049ca2 <submitr+0x4ad>
 8049d65:	0f b6 53 02          	movzbl 0x2(%ebx),%edx
 8049d69:	3a 50 02             	cmp    0x2(%eax),%dl
 8049d6c:	0f 85 30 ff ff ff    	jne    8049ca2 <submitr+0x4ad>
 8049d72:	8d 95 cc 9f ff ff    	lea    -0x6034(%ebp),%edx
 8049d78:	8d 85 cc df ff ff    	lea    -0x2034(%ebp),%eax
 8049d7e:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049d83:	e8 6d f9 ff ff       	call   80496f5 <rio_readlineb>
 8049d88:	85 c0                	test   %eax,%eax
 8049d8a:	7f 64                	jg     8049df0 <submitr+0x5fb>
 8049d8c:	8b 7d 20             	mov    0x20(%ebp),%edi
 8049d8f:	be 78 ab 04 08       	mov    $0x804ab78,%esi
 8049d94:	b8 40 00 00 00       	mov    $0x40,%eax
 8049d99:	f7 c7 01 00 00 00    	test   $0x1,%edi
 8049d9f:	74 04                	je     8049da5 <submitr+0x5b0>
 8049da1:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 8049da2:	83 e8 01             	sub    $0x1,%eax
 8049da5:	f7 c7 02 00 00 00    	test   $0x2,%edi
 8049dab:	74 05                	je     8049db2 <submitr+0x5bd>
 8049dad:	66 a5                	movsw  %ds:(%esi),%es:(%edi)
 8049daf:	83 e8 02             	sub    $0x2,%eax
 8049db2:	89 c1                	mov    %eax,%ecx
 8049db4:	c1 e9 02             	shr    $0x2,%ecx
 8049db7:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049db9:	ba 00 00 00 00       	mov    $0x0,%edx
 8049dbe:	a8 02                	test   $0x2,%al
 8049dc0:	74 0b                	je     8049dcd <submitr+0x5d8>
 8049dc2:	0f b7 0c 16          	movzwl (%esi,%edx,1),%ecx
 8049dc6:	66 89 0c 17          	mov    %cx,(%edi,%edx,1)
 8049dca:	83 c2 02             	add    $0x2,%edx
 8049dcd:	a8 01                	test   $0x1,%al
 8049dcf:	74 07                	je     8049dd8 <submitr+0x5e3>
 8049dd1:	0f b6 04 16          	movzbl (%esi,%edx,1),%eax
 8049dd5:	88 04 17             	mov    %al,(%edi,%edx,1)
 8049dd8:	8b 85 b0 3f ff ff    	mov    -0xc050(%ebp),%eax
 8049dde:	89 04 24             	mov    %eax,(%esp)
 8049de1:	e8 76 eb ff ff       	call   804895c <close@plt>
 8049de6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049deb:	e9 6a 01 00 00       	jmp    8049f5a <submitr+0x765>
 8049df0:	8d 8d cc 9f ff ff    	lea    -0x6034(%ebp),%ecx
 8049df6:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8049dfa:	8d 85 cc bf ff ff    	lea    -0x4034(%ebp),%eax
 8049e00:	89 04 24             	mov    %eax,(%esp)
 8049e03:	e8 14 eb ff ff       	call   804891c <strcpy@plt>
 8049e08:	be b3 a9 04 08       	mov    $0x804a9b3,%esi
 8049e0d:	8d 85 cc 9f ff ff    	lea    -0x6034(%ebp),%eax
 8049e13:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049e17:	89 34 24             	mov    %esi,(%esp)
 8049e1a:	e8 0d eb ff ff       	call   804892c <printf@plt>
 8049e1f:	8d 9d cc 9f ff ff    	lea    -0x6034(%ebp),%ebx
 8049e25:	8d bd cc df ff ff    	lea    -0x2034(%ebp),%edi
 8049e2b:	eb 0c                	jmp    8049e39 <submitr+0x644>
 8049e2d:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8049e31:	89 34 24             	mov    %esi,(%esp)
 8049e34:	e8 f3 ea ff ff       	call   804892c <printf@plt>
 8049e39:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049e3e:	89 da                	mov    %ebx,%edx
 8049e40:	89 f8                	mov    %edi,%eax
 8049e42:	e8 ae f8 ff ff       	call   80496f5 <rio_readlineb>
 8049e47:	85 c0                	test   %eax,%eax
 8049e49:	75 e2                	jne    8049e2d <submitr+0x638>
 8049e4b:	c7 04 24 c5 a9 04 08 	movl   $0x804a9c5,(%esp)
 8049e52:	e8 45 eb ff ff       	call   804899c <puts@plt>
 8049e57:	8d 85 cc bf ff ff    	lea    -0x4034(%ebp),%eax
 8049e5d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049e61:	8d 85 cc 9f ff ff    	lea    -0x6034(%ebp),%eax
 8049e67:	89 04 24             	mov    %eax,(%esp)
 8049e6a:	e8 ad ea ff ff       	call   804891c <strcpy@plt>
 8049e6f:	8b 85 c8 5f ff ff    	mov    -0xa038(%ebp),%eax
 8049e75:	3d c8 00 00 00       	cmp    $0xc8,%eax
 8049e7a:	74 39                	je     8049eb5 <submitr+0x6c0>
 8049e7c:	8d 95 c8 3f ff ff    	lea    -0xc038(%ebp),%edx
 8049e82:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049e86:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049e8a:	c7 44 24 04 b8 ab 04 	movl   $0x804abb8,0x4(%esp)
 8049e91:	08 
 8049e92:	8b 75 20             	mov    0x20(%ebp),%esi
 8049e95:	89 34 24             	mov    %esi,(%esp)
 8049e98:	e8 2f e9 ff ff       	call   80487cc <sprintf@plt>
 8049e9d:	8b bd b0 3f ff ff    	mov    -0xc050(%ebp),%edi
 8049ea3:	89 3c 24             	mov    %edi,(%esp)
 8049ea6:	e8 b1 ea ff ff       	call   804895c <close@plt>
 8049eab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049eb0:	e9 a5 00 00 00       	jmp    8049f5a <submitr+0x765>
 8049eb5:	8d 85 cc 9f ff ff    	lea    -0x6034(%ebp),%eax
 8049ebb:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049ebf:	8b 4d 20             	mov    0x20(%ebp),%ecx
 8049ec2:	89 0c 24             	mov    %ecx,(%esp)
 8049ec5:	e8 52 ea ff ff       	call   804891c <strcpy@plt>
 8049eca:	8b b5 b0 3f ff ff    	mov    -0xc050(%ebp),%esi
 8049ed0:	89 34 24             	mov    %esi,(%esp)
 8049ed3:	e8 84 ea ff ff       	call   804895c <close@plt>
 8049ed8:	8b 7d 20             	mov    0x20(%ebp),%edi
 8049edb:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049edf:	c7 04 24 dd a9 04 08 	movl   $0x804a9dd,(%esp)
 8049ee6:	e8 41 ea ff ff       	call   804892c <printf@plt>
 8049eeb:	89 f8                	mov    %edi,%eax
 8049eed:	0f b6 17             	movzbl (%edi),%edx
 8049ef0:	b9 ec a9 04 08       	mov    $0x804a9ec,%ecx
 8049ef5:	0f b6 19             	movzbl (%ecx),%ebx
 8049ef8:	39 da                	cmp    %ebx,%edx
 8049efa:	75 1b                	jne    8049f17 <submitr+0x722>
 8049efc:	0f b6 5f 01          	movzbl 0x1(%edi),%ebx
 8049f00:	3a 59 01             	cmp    0x1(%ecx),%bl
 8049f03:	75 12                	jne    8049f17 <submitr+0x722>
 8049f05:	0f b6 5f 02          	movzbl 0x2(%edi),%ebx
 8049f09:	3a 59 02             	cmp    0x2(%ecx),%bl
 8049f0c:	75 09                	jne    8049f17 <submitr+0x722>
 8049f0e:	0f b6 5f 03          	movzbl 0x3(%edi),%ebx
 8049f12:	3a 59 03             	cmp    0x3(%ecx),%bl
 8049f15:	74 37                	je     8049f4e <submitr+0x759>
 8049f17:	8b 75 20             	mov    0x20(%ebp),%esi
 8049f1a:	bf f0 a9 04 08       	mov    $0x804a9f0,%edi
 8049f1f:	b9 05 00 00 00       	mov    $0x5,%ecx
 8049f24:	f3 a6                	repz cmpsb %es:(%edi),%ds:(%esi)
 8049f26:	0f 97 c3             	seta   %bl
 8049f29:	0f 92 c1             	setb   %cl
 8049f2c:	38 cb                	cmp    %cl,%bl
 8049f2e:	74 1e                	je     8049f4e <submitr+0x759>
 8049f30:	b9 f5 a9 04 08       	mov    $0x804a9f5,%ecx
 8049f35:	0f b6 19             	movzbl (%ecx),%ebx
 8049f38:	39 da                	cmp    %ebx,%edx
 8049f3a:	75 19                	jne    8049f55 <submitr+0x760>
 8049f3c:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 8049f40:	3a 51 01             	cmp    0x1(%ecx),%dl
 8049f43:	75 10                	jne    8049f55 <submitr+0x760>
 8049f45:	0f b6 40 02          	movzbl 0x2(%eax),%eax
 8049f49:	3a 41 02             	cmp    0x2(%ecx),%al
 8049f4c:	75 07                	jne    8049f55 <submitr+0x760>
 8049f4e:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f53:	eb 05                	jmp    8049f5a <submitr+0x765>
 8049f55:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049f5a:	81 c4 6c c0 00 00    	add    $0xc06c,%esp
 8049f60:	5b                   	pop    %ebx
 8049f61:	5e                   	pop    %esi
 8049f62:	5f                   	pop    %edi
 8049f63:	5d                   	pop    %ebp
 8049f64:	c3                   	ret    
 8049f65:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f68:	89 44 24 18          	mov    %eax,0x18(%esp)
 8049f6c:	8d 85 cc 7f ff ff    	lea    -0x8034(%ebp),%eax
 8049f72:	89 44 24 14          	mov    %eax,0x14(%esp)
 8049f76:	8b 4d 14             	mov    0x14(%ebp),%ecx
 8049f79:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 8049f7d:	8b 75 18             	mov    0x18(%ebp),%esi
 8049f80:	89 74 24 0c          	mov    %esi,0xc(%esp)
 8049f84:	8b 7d 10             	mov    0x10(%ebp),%edi
 8049f87:	89 7c 24 08          	mov    %edi,0x8(%esp)
 8049f8b:	c7 44 24 04 e8 ab 04 	movl   $0x804abe8,0x4(%esp)
 8049f92:	08 
 8049f93:	8d bd cc 9f ff ff    	lea    -0x6034(%ebp),%edi
 8049f99:	89 3c 24             	mov    %edi,(%esp)
 8049f9c:	e8 2b e8 ff ff       	call   80487cc <sprintf@plt>
 8049fa1:	b8 00 00 00 00       	mov    $0x0,%eax
 8049fa6:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049fab:	f2 ae                	repnz scas %es:(%edi),%al
 8049fad:	f7 d1                	not    %ecx
 8049faf:	89 cf                	mov    %ecx,%edi
 8049fb1:	83 ef 01             	sub    $0x1,%edi
 8049fb4:	0f 84 34 fc ff ff    	je     8049bee <submitr+0x3f9>
 8049fba:	89 fb                	mov    %edi,%ebx
 8049fbc:	8d b5 cc 9f ff ff    	lea    -0x6034(%ebp),%esi
 8049fc2:	89 bd b4 3f ff ff    	mov    %edi,-0xc04c(%ebp)
 8049fc8:	8b bd b0 3f ff ff    	mov    -0xc050(%ebp),%edi
 8049fce:	e9 86 fb ff ff       	jmp    8049b59 <submitr+0x364>

08049fd3 <driver_post>:
 8049fd3:	55                   	push   %ebp
 8049fd4:	89 e5                	mov    %esp,%ebp
 8049fd6:	53                   	push   %ebx
 8049fd7:	83 ec 24             	sub    $0x24,%esp
 8049fda:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fdd:	8b 55 14             	mov    0x14(%ebp),%edx
 8049fe0:	8b 5d 1c             	mov    0x1c(%ebp),%ebx
 8049fe3:	83 7d 18 00          	cmpl   $0x0,0x18(%ebp)
 8049fe7:	74 20                	je     804a009 <driver_post+0x36>
 8049fe9:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049fed:	c7 04 24 f8 a9 04 08 	movl   $0x804a9f8,(%esp)
 8049ff4:	e8 33 e9 ff ff       	call   804892c <printf@plt>
 8049ff9:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049ffe:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 804a002:	b8 00 00 00 00       	mov    $0x0,%eax
 804a007:	eb 47                	jmp    804a050 <driver_post+0x7d>
 804a009:	85 c0                	test   %eax,%eax
 804a00b:	74 35                	je     804a042 <driver_post+0x6f>
 804a00d:	80 38 00             	cmpb   $0x0,(%eax)
 804a010:	74 30                	je     804a042 <driver_post+0x6f>
 804a012:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 804a016:	89 54 24 14          	mov    %edx,0x14(%esp)
 804a01a:	8b 55 10             	mov    0x10(%ebp),%edx
 804a01d:	89 54 24 10          	mov    %edx,0x10(%esp)
 804a021:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804a025:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a028:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a02c:	c7 44 24 04 50 00 00 	movl   $0x50,0x4(%esp)
 804a033:	00 
 804a034:	c7 04 24 29 a9 04 08 	movl   $0x804a929,(%esp)
 804a03b:	e8 b5 f7 ff ff       	call   80497f5 <submitr>
 804a040:	eb 0e                	jmp    804a050 <driver_post+0x7d>
 804a042:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 804a047:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 804a04b:	b8 00 00 00 00       	mov    $0x0,%eax
 804a050:	83 c4 24             	add    $0x24,%esp
 804a053:	5b                   	pop    %ebx
 804a054:	5d                   	pop    %ebp
 804a055:	c3                   	ret    

0804a056 <sigalrm_handler>:
 804a056:	55                   	push   %ebp
 804a057:	89 e5                	mov    %esp,%ebp
 804a059:	83 ec 18             	sub    $0x18,%esp
 804a05c:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804a063:	00 
 804a064:	c7 44 24 04 48 ac 04 	movl   $0x804ac48,0x4(%esp)
 804a06b:	08 
 804a06c:	a1 00 b3 04 08       	mov    0x804b300,%eax
 804a071:	89 04 24             	mov    %eax,(%esp)
 804a074:	e8 03 e9 ff ff       	call   804897c <fprintf@plt>
 804a079:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804a080:	e8 67 e9 ff ff       	call   80489ec <exit@plt>
 804a085:	90                   	nop
 804a086:	90                   	nop
 804a087:	90                   	nop

0804a088 <hash>:
 804a088:	55                   	push   %ebp
 804a089:	89 e5                	mov    %esp,%ebp
 804a08b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804a08e:	0f b6 11             	movzbl (%ecx),%edx
 804a091:	b8 00 00 00 00       	mov    $0x0,%eax
 804a096:	84 d2                	test   %dl,%dl
 804a098:	74 13                	je     804a0ad <hash+0x25>
 804a09a:	6b c0 67             	imul   $0x67,%eax,%eax
 804a09d:	0f be d2             	movsbl %dl,%edx
 804a0a0:	8d 04 02             	lea    (%edx,%eax,1),%eax
 804a0a3:	83 c1 01             	add    $0x1,%ecx
 804a0a6:	0f b6 11             	movzbl (%ecx),%edx
 804a0a9:	84 d2                	test   %dl,%dl
 804a0ab:	75 ed                	jne    804a09a <hash+0x12>
 804a0ad:	5d                   	pop    %ebp
 804a0ae:	c3                   	ret    

0804a0af <check>:
 804a0af:	55                   	push   %ebp
 804a0b0:	89 e5                	mov    %esp,%ebp
 804a0b2:	8b 45 08             	mov    0x8(%ebp),%eax
 804a0b5:	89 c2                	mov    %eax,%edx
 804a0b7:	c1 ea 1c             	shr    $0x1c,%edx
 804a0ba:	85 d2                	test   %edx,%edx
 804a0bc:	74 24                	je     804a0e2 <check+0x33>
 804a0be:	3c 0a                	cmp    $0xa,%al
 804a0c0:	74 20                	je     804a0e2 <check+0x33>
 804a0c2:	0f b6 d4             	movzbl %ah,%edx
 804a0c5:	83 fa 0a             	cmp    $0xa,%edx
 804a0c8:	74 18                	je     804a0e2 <check+0x33>
 804a0ca:	89 c2                	mov    %eax,%edx
 804a0cc:	c1 ea 10             	shr    $0x10,%edx
 804a0cf:	80 fa 0a             	cmp    $0xa,%dl
 804a0d2:	74 0e                	je     804a0e2 <check+0x33>
 804a0d4:	c1 e8 18             	shr    $0x18,%eax
 804a0d7:	83 f8 0a             	cmp    $0xa,%eax
 804a0da:	0f 95 c0             	setne  %al
 804a0dd:	0f b6 c0             	movzbl %al,%eax
 804a0e0:	eb 05                	jmp    804a0e7 <check+0x38>
 804a0e2:	b8 00 00 00 00       	mov    $0x0,%eax
 804a0e7:	5d                   	pop    %ebp
 804a0e8:	c3                   	ret    

0804a0e9 <gencookie>:
 804a0e9:	55                   	push   %ebp
 804a0ea:	89 e5                	mov    %esp,%ebp
 804a0ec:	53                   	push   %ebx
 804a0ed:	83 ec 14             	sub    $0x14,%esp
 804a0f0:	8b 45 08             	mov    0x8(%ebp),%eax
 804a0f3:	89 04 24             	mov    %eax,(%esp)
 804a0f6:	e8 8d ff ff ff       	call   804a088 <hash>
 804a0fb:	89 04 24             	mov    %eax,(%esp)
 804a0fe:	e8 d9 e6 ff ff       	call   80487dc <srand@plt>
 804a103:	e8 a4 e8 ff ff       	call   80489ac <rand@plt>
 804a108:	89 c3                	mov    %eax,%ebx
 804a10a:	89 04 24             	mov    %eax,(%esp)
 804a10d:	e8 9d ff ff ff       	call   804a0af <check>
 804a112:	85 c0                	test   %eax,%eax
 804a114:	74 ed                	je     804a103 <gencookie+0x1a>
 804a116:	89 d8                	mov    %ebx,%eax
 804a118:	83 c4 14             	add    $0x14,%esp
 804a11b:	5b                   	pop    %ebx
 804a11c:	5d                   	pop    %ebp
 804a11d:	c3                   	ret    
 804a11e:	90                   	nop
 804a11f:	90                   	nop

0804a120 <__libc_csu_fini>:
 804a120:	55                   	push   %ebp
 804a121:	89 e5                	mov    %esp,%ebp
 804a123:	5d                   	pop    %ebp
 804a124:	c3                   	ret    
 804a125:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%eax,%eax,1)
 804a12c:	00 00 00 00 

0804a130 <__libc_csu_init>:
 804a130:	55                   	push   %ebp
 804a131:	89 e5                	mov    %esp,%ebp
 804a133:	57                   	push   %edi
 804a134:	56                   	push   %esi
 804a135:	53                   	push   %ebx
 804a136:	e8 4f 00 00 00       	call   804a18a <__i686.get_pc_thunk.bx>
 804a13b:	81 c3 a5 0f 00 00    	add    $0xfa5,%ebx
 804a141:	83 ec 1c             	sub    $0x1c,%esp
 804a144:	e8 33 e6 ff ff       	call   804877c <_init>
 804a149:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 804a14f:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 804a155:	29 c7                	sub    %eax,%edi
 804a157:	c1 ff 02             	sar    $0x2,%edi
 804a15a:	85 ff                	test   %edi,%edi
 804a15c:	74 24                	je     804a182 <__libc_csu_init+0x52>
 804a15e:	31 f6                	xor    %esi,%esi
 804a160:	8b 45 10             	mov    0x10(%ebp),%eax
 804a163:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a167:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a16a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a16e:	8b 45 08             	mov    0x8(%ebp),%eax
 804a171:	89 04 24             	mov    %eax,(%esp)
 804a174:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 804a17b:	83 c6 01             	add    $0x1,%esi
 804a17e:	39 fe                	cmp    %edi,%esi
 804a180:	72 de                	jb     804a160 <__libc_csu_init+0x30>
 804a182:	83 c4 1c             	add    $0x1c,%esp
 804a185:	5b                   	pop    %ebx
 804a186:	5e                   	pop    %esi
 804a187:	5f                   	pop    %edi
 804a188:	5d                   	pop    %ebp
 804a189:	c3                   	ret    

0804a18a <__i686.get_pc_thunk.bx>:
 804a18a:	8b 1c 24             	mov    (%esp),%ebx
 804a18d:	c3                   	ret    
 804a18e:	90                   	nop
 804a18f:	90                   	nop

0804a190 <__do_global_ctors_aux>:
 804a190:	55                   	push   %ebp
 804a191:	89 e5                	mov    %esp,%ebp
 804a193:	53                   	push   %ebx
 804a194:	83 ec 04             	sub    $0x4,%esp
 804a197:	a1 00 b0 04 08       	mov    0x804b000,%eax
 804a19c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a19f:	74 13                	je     804a1b4 <__do_global_ctors_aux+0x24>
 804a1a1:	bb 00 b0 04 08       	mov    $0x804b000,%ebx
 804a1a6:	66 90                	xchg   %ax,%ax
 804a1a8:	83 eb 04             	sub    $0x4,%ebx
 804a1ab:	ff d0                	call   *%eax
 804a1ad:	8b 03                	mov    (%ebx),%eax
 804a1af:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a1b2:	75 f4                	jne    804a1a8 <__do_global_ctors_aux+0x18>
 804a1b4:	83 c4 04             	add    $0x4,%esp
 804a1b7:	5b                   	pop    %ebx
 804a1b8:	5d                   	pop    %ebp
 804a1b9:	c3                   	ret    
 804a1ba:	90                   	nop
 804a1bb:	90                   	nop

Disassembly of section .fini:

0804a1bc <_fini>:
 804a1bc:	55                   	push   %ebp
 804a1bd:	89 e5                	mov    %esp,%ebp
 804a1bf:	53                   	push   %ebx
 804a1c0:	83 ec 04             	sub    $0x4,%esp
 804a1c3:	e8 00 00 00 00       	call   804a1c8 <_fini+0xc>
 804a1c8:	5b                   	pop    %ebx
 804a1c9:	81 c3 18 0f 00 00    	add    $0xf18,%ebx
 804a1cf:	e8 5c e8 ff ff       	call   8048a30 <__do_global_dtors_aux>
 804a1d4:	59                   	pop    %ecx
 804a1d5:	5b                   	pop    %ebx
 804a1d6:	c9                   	leave  
 804a1d7:	c3                   	ret    

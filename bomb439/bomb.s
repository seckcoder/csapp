
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b38 <_init>:
  400b38:	48 83 ec 08          	sub    $0x8,%rsp
  400b3c:	e8 1b 02 00 00       	callq  400d5c <call_gmon_start>
  400b41:	e8 aa 02 00 00       	callq  400df0 <frame_dummy>
  400b46:	e8 b5 1b 00 00       	callq  402700 <__do_global_ctors_aux>
  400b4b:	48 83 c4 08          	add    $0x8,%rsp
  400b4f:	c3                   	retq   

Disassembly of section .plt:

0000000000400b50 <getenv@plt-0x10>:
  400b50:	ff 35 9a 34 20 00    	pushq  0x20349a(%rip)        # 603ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b56:	ff 25 9c 34 20 00    	jmpq   *0x20349c(%rip)        # 603ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b60 <getenv@plt>:
  400b60:	ff 25 9a 34 20 00    	jmpq   *0x20349a(%rip)        # 604000 <_GLOBAL_OFFSET_TABLE_+0x18>
  400b66:	68 00 00 00 00       	pushq  $0x0
  400b6b:	e9 e0 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400b70 <strcasecmp@plt>:
  400b70:	ff 25 92 34 20 00    	jmpq   *0x203492(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x20>
  400b76:	68 01 00 00 00       	pushq  $0x1
  400b7b:	e9 d0 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400b80 <__errno_location@plt>:
  400b80:	ff 25 8a 34 20 00    	jmpq   *0x20348a(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x28>
  400b86:	68 02 00 00 00       	pushq  $0x2
  400b8b:	e9 c0 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400b90 <strcpy@plt>:
  400b90:	ff 25 82 34 20 00    	jmpq   *0x203482(%rip)        # 604018 <_GLOBAL_OFFSET_TABLE_+0x30>
  400b96:	68 03 00 00 00       	pushq  $0x3
  400b9b:	e9 b0 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400ba0 <puts@plt>:
  400ba0:	ff 25 7a 34 20 00    	jmpq   *0x20347a(%rip)        # 604020 <_GLOBAL_OFFSET_TABLE_+0x38>
  400ba6:	68 04 00 00 00       	pushq  $0x4
  400bab:	e9 a0 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400bb0 <write@plt>:
  400bb0:	ff 25 72 34 20 00    	jmpq   *0x203472(%rip)        # 604028 <_GLOBAL_OFFSET_TABLE_+0x40>
  400bb6:	68 05 00 00 00       	pushq  $0x5
  400bbb:	e9 90 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400bc0 <__stack_chk_fail@plt>:
  400bc0:	ff 25 6a 34 20 00    	jmpq   *0x20346a(%rip)        # 604030 <_GLOBAL_OFFSET_TABLE_+0x48>
  400bc6:	68 06 00 00 00       	pushq  $0x6
  400bcb:	e9 80 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400bd0 <alarm@plt>:
  400bd0:	ff 25 62 34 20 00    	jmpq   *0x203462(%rip)        # 604038 <_GLOBAL_OFFSET_TABLE_+0x50>
  400bd6:	68 07 00 00 00       	pushq  $0x7
  400bdb:	e9 70 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400be0 <close@plt>:
  400be0:	ff 25 5a 34 20 00    	jmpq   *0x20345a(%rip)        # 604040 <_GLOBAL_OFFSET_TABLE_+0x58>
  400be6:	68 08 00 00 00       	pushq  $0x8
  400beb:	e9 60 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400bf0 <read@plt>:
  400bf0:	ff 25 52 34 20 00    	jmpq   *0x203452(%rip)        # 604048 <_GLOBAL_OFFSET_TABLE_+0x60>
  400bf6:	68 09 00 00 00       	pushq  $0x9
  400bfb:	e9 50 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c00 <__libc_start_main@plt>:
  400c00:	ff 25 4a 34 20 00    	jmpq   *0x20344a(%rip)        # 604050 <_GLOBAL_OFFSET_TABLE_+0x68>
  400c06:	68 0a 00 00 00       	pushq  $0xa
  400c0b:	e9 40 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c10 <fgets@plt>:
  400c10:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 604058 <_GLOBAL_OFFSET_TABLE_+0x70>
  400c16:	68 0b 00 00 00       	pushq  $0xb
  400c1b:	e9 30 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c20 <signal@plt>:
  400c20:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 604060 <_GLOBAL_OFFSET_TABLE_+0x78>
  400c26:	68 0c 00 00 00       	pushq  $0xc
  400c2b:	e9 20 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c30 <gethostbyname@plt>:
  400c30:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 604068 <_GLOBAL_OFFSET_TABLE_+0x80>
  400c36:	68 0d 00 00 00       	pushq  $0xd
  400c3b:	e9 10 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c40 <__memmove_chk@plt>:
  400c40:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 604070 <_GLOBAL_OFFSET_TABLE_+0x88>
  400c46:	68 0e 00 00 00       	pushq  $0xe
  400c4b:	e9 00 ff ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c50 <__memcpy_chk@plt>:
  400c50:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 604078 <_GLOBAL_OFFSET_TABLE_+0x90>
  400c56:	68 0f 00 00 00       	pushq  $0xf
  400c5b:	e9 f0 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c60 <strtol@plt>:
  400c60:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 604080 <_GLOBAL_OFFSET_TABLE_+0x98>
  400c66:	68 10 00 00 00       	pushq  $0x10
  400c6b:	e9 e0 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c70 <fflush@plt>:
  400c70:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 604088 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400c76:	68 11 00 00 00       	pushq  $0x11
  400c7b:	e9 d0 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c80 <__isoc99_sscanf@plt>:
  400c80:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 604090 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400c86:	68 12 00 00 00       	pushq  $0x12
  400c8b:	e9 c0 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400c90 <__printf_chk@plt>:
  400c90:	ff 25 02 34 20 00    	jmpq   *0x203402(%rip)        # 604098 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400c96:	68 13 00 00 00       	pushq  $0x13
  400c9b:	e9 b0 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400ca0 <fopen@plt>:
  400ca0:	ff 25 fa 33 20 00    	jmpq   *0x2033fa(%rip)        # 6040a0 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400ca6:	68 14 00 00 00       	pushq  $0x14
  400cab:	e9 a0 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400cb0 <gethostname@plt>:
  400cb0:	ff 25 f2 33 20 00    	jmpq   *0x2033f2(%rip)        # 6040a8 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400cb6:	68 15 00 00 00       	pushq  $0x15
  400cbb:	e9 90 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400cc0 <exit@plt>:
  400cc0:	ff 25 ea 33 20 00    	jmpq   *0x2033ea(%rip)        # 6040b0 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400cc6:	68 16 00 00 00       	pushq  $0x16
  400ccb:	e9 80 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400cd0 <connect@plt>:
  400cd0:	ff 25 e2 33 20 00    	jmpq   *0x2033e2(%rip)        # 6040b8 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400cd6:	68 17 00 00 00       	pushq  $0x17
  400cdb:	e9 70 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400ce0 <__fprintf_chk@plt>:
  400ce0:	ff 25 da 33 20 00    	jmpq   *0x2033da(%rip)        # 6040c0 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400ce6:	68 18 00 00 00       	pushq  $0x18
  400ceb:	e9 60 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400cf0 <sleep@plt>:
  400cf0:	ff 25 d2 33 20 00    	jmpq   *0x2033d2(%rip)        # 6040c8 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400cf6:	68 19 00 00 00       	pushq  $0x19
  400cfb:	e9 50 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400d00 <__ctype_b_loc@plt>:
  400d00:	ff 25 ca 33 20 00    	jmpq   *0x2033ca(%rip)        # 6040d0 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400d06:	68 1a 00 00 00       	pushq  $0x1a
  400d0b:	e9 40 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400d10 <__sprintf_chk@plt>:
  400d10:	ff 25 c2 33 20 00    	jmpq   *0x2033c2(%rip)        # 6040d8 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400d16:	68 1b 00 00 00       	pushq  $0x1b
  400d1b:	e9 30 fe ff ff       	jmpq   400b50 <_init+0x18>

0000000000400d20 <socket@plt>:
  400d20:	ff 25 ba 33 20 00    	jmpq   *0x2033ba(%rip)        # 6040e0 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400d26:	68 1c 00 00 00       	pushq  $0x1c
  400d2b:	e9 20 fe ff ff       	jmpq   400b50 <_init+0x18>

Disassembly of section .text:

0000000000400d30 <_start>:
  400d30:	31 ed                	xor    %ebp,%ebp
  400d32:	49 89 d1             	mov    %rdx,%r9
  400d35:	5e                   	pop    %rsi
  400d36:	48 89 e2             	mov    %rsp,%rdx
  400d39:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400d3d:	50                   	push   %rax
  400d3e:	54                   	push   %rsp
  400d3f:	49 c7 c0 f0 26 40 00 	mov    $0x4026f0,%r8
  400d46:	48 c7 c1 60 26 40 00 	mov    $0x402660,%rcx
  400d4d:	48 c7 c7 14 0e 40 00 	mov    $0x400e14,%rdi
  400d54:	e8 a7 fe ff ff       	callq  400c00 <__libc_start_main@plt>
  400d59:	f4                   	hlt    
  400d5a:	90                   	nop
  400d5b:	90                   	nop

0000000000400d5c <call_gmon_start>:
  400d5c:	48 83 ec 08          	sub    $0x8,%rsp
  400d60:	48 8b 05 79 32 20 00 	mov    0x203279(%rip),%rax        # 603fe0 <_DYNAMIC+0x190>
  400d67:	48 85 c0             	test   %rax,%rax
  400d6a:	74 02                	je     400d6e <call_gmon_start+0x12>
  400d6c:	ff d0                	callq  *%rax
  400d6e:	48 83 c4 08          	add    $0x8,%rsp
  400d72:	c3                   	retq   
  400d73:	90                   	nop
  400d74:	90                   	nop
  400d75:	90                   	nop
  400d76:	90                   	nop
  400d77:	90                   	nop
  400d78:	90                   	nop
  400d79:	90                   	nop
  400d7a:	90                   	nop
  400d7b:	90                   	nop
  400d7c:	90                   	nop
  400d7d:	90                   	nop
  400d7e:	90                   	nop
  400d7f:	90                   	nop

0000000000400d80 <__do_global_dtors_aux>:
  400d80:	55                   	push   %rbp
  400d81:	48 89 e5             	mov    %rsp,%rbp
  400d84:	53                   	push   %rbx
  400d85:	48 83 ec 08          	sub    $0x8,%rsp
  400d89:	80 3d 88 48 20 00 00 	cmpb   $0x0,0x204888(%rip)        # 605618 <completed.6531>
  400d90:	75 4b                	jne    400ddd <__do_global_dtors_aux+0x5d>
  400d92:	bb 40 3e 60 00       	mov    $0x603e40,%ebx
  400d97:	48 8b 05 82 48 20 00 	mov    0x204882(%rip),%rax        # 605620 <dtor_idx.6533>
  400d9e:	48 81 eb 38 3e 60 00 	sub    $0x603e38,%rbx
  400da5:	48 c1 fb 03          	sar    $0x3,%rbx
  400da9:	48 83 eb 01          	sub    $0x1,%rbx
  400dad:	48 39 d8             	cmp    %rbx,%rax
  400db0:	73 24                	jae    400dd6 <__do_global_dtors_aux+0x56>
  400db2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400db8:	48 83 c0 01          	add    $0x1,%rax
  400dbc:	48 89 05 5d 48 20 00 	mov    %rax,0x20485d(%rip)        # 605620 <dtor_idx.6533>
  400dc3:	ff 14 c5 38 3e 60 00 	callq  *0x603e38(,%rax,8)
  400dca:	48 8b 05 4f 48 20 00 	mov    0x20484f(%rip),%rax        # 605620 <dtor_idx.6533>
  400dd1:	48 39 d8             	cmp    %rbx,%rax
  400dd4:	72 e2                	jb     400db8 <__do_global_dtors_aux+0x38>
  400dd6:	c6 05 3b 48 20 00 01 	movb   $0x1,0x20483b(%rip)        # 605618 <completed.6531>
  400ddd:	48 83 c4 08          	add    $0x8,%rsp
  400de1:	5b                   	pop    %rbx
  400de2:	5d                   	pop    %rbp
  400de3:	c3                   	retq   
  400de4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400deb:	00 00 00 00 00 

0000000000400df0 <frame_dummy>:
  400df0:	48 83 3d 50 30 20 00 	cmpq   $0x0,0x203050(%rip)        # 603e48 <__JCR_END__>
  400df7:	00 
  400df8:	55                   	push   %rbp
  400df9:	48 89 e5             	mov    %rsp,%rbp
  400dfc:	74 12                	je     400e10 <frame_dummy+0x20>
  400dfe:	b8 00 00 00 00       	mov    $0x0,%eax
  400e03:	48 85 c0             	test   %rax,%rax
  400e06:	74 08                	je     400e10 <frame_dummy+0x20>
  400e08:	5d                   	pop    %rbp
  400e09:	bf 48 3e 60 00       	mov    $0x603e48,%edi
  400e0e:	ff e0                	jmpq   *%rax
  400e10:	5d                   	pop    %rbp
  400e11:	c3                   	retq   
  400e12:	90                   	nop
  400e13:	90                   	nop

0000000000400e14 <main>:
  400e14:	53                   	push   %rbx
  400e15:	48 89 f3             	mov    %rsi,%rbx
  400e18:	83 ff 01             	cmp    $0x1,%edi
  400e1b:	75 10                	jne    400e2d <main+0x19>
  400e1d:	48 8b 05 e4 47 20 00 	mov    0x2047e4(%rip),%rax        # 605608 <stdin@@GLIBC_2.2.5>
  400e24:	48 89 05 05 48 20 00 	mov    %rax,0x204805(%rip)        # 605630 <infile>
  400e2b:	eb 60                	jmp    400e8d <main+0x79>
  400e2d:	83 ff 02             	cmp    $0x2,%edi
  400e30:	75 3a                	jne    400e6c <main+0x58>
  400e32:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400e36:	be 64 27 40 00       	mov    $0x402764,%esi
  400e3b:	e8 60 fe ff ff       	callq  400ca0 <fopen@plt>
  400e40:	48 89 05 e9 47 20 00 	mov    %rax,0x2047e9(%rip)        # 605630 <infile>
  400e47:	48 85 c0             	test   %rax,%rax
  400e4a:	75 41                	jne    400e8d <main+0x79>
  400e4c:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  400e50:	48 8b 13             	mov    (%rbx),%rdx
  400e53:	be 66 27 40 00       	mov    $0x402766,%esi
  400e58:	bf 01 00 00 00       	mov    $0x1,%edi
  400e5d:	e8 2e fe ff ff       	callq  400c90 <__printf_chk@plt>
  400e62:	bf 08 00 00 00       	mov    $0x8,%edi
  400e67:	e8 54 fe ff ff       	callq  400cc0 <exit@plt>
  400e6c:	48 8b 16             	mov    (%rsi),%rdx
  400e6f:	be 83 27 40 00       	mov    $0x402783,%esi
  400e74:	bf 01 00 00 00       	mov    $0x1,%edi
  400e79:	b8 00 00 00 00       	mov    $0x0,%eax
  400e7e:	e8 0d fe ff ff       	callq  400c90 <__printf_chk@plt>
  400e83:	bf 08 00 00 00       	mov    $0x8,%edi
  400e88:	e8 33 fe ff ff       	callq  400cc0 <exit@plt>
  400e8d:	e8 f3 05 00 00       	callq  401485 <initialize_bomb>
  400e92:	bf e8 27 40 00       	mov    $0x4027e8,%edi
  400e97:	e8 04 fd ff ff       	callq  400ba0 <puts@plt>
  400e9c:	bf 28 28 40 00       	mov    $0x402828,%edi
  400ea1:	e8 fa fc ff ff       	callq  400ba0 <puts@plt>
  400ea6:	e8 94 08 00 00       	callq  40173f <read_line>
  400eab:	48 89 c7             	mov    %rax,%rdi  // move result of read_line to rdi(first argument)
  400eae:	e8 9d 00 00 00       	callq  400f50 <phase_1>
  400eb3:	e8 f4 09 00 00       	callq  4018ac <phase_defused>
  400eb8:	bf 58 28 40 00       	mov    $0x402858,%edi
  400ebd:	e8 de fc ff ff       	callq  400ba0 <puts@plt>
  400ec2:	e8 78 08 00 00       	callq  40173f <read_line>
  400ec7:	48 89 c7             	mov    %rax,%rdi
  400eca:	e8 9d 00 00 00       	callq  400f6c <phase_2>
  400ecf:	e8 d8 09 00 00       	callq  4018ac <phase_defused>
  400ed4:	bf 9d 27 40 00       	mov    $0x40279d,%edi
  400ed9:	e8 c2 fc ff ff       	callq  400ba0 <puts@plt>
  400ede:	e8 5c 08 00 00       	callq  40173f <read_line>
  400ee3:	48 89 c7             	mov    %rax,%rdi
  400ee6:	e8 c5 00 00 00       	callq  400fb0 <phase_3>
  400eeb:	e8 bc 09 00 00       	callq  4018ac <phase_defused>
  400ef0:	bf bb 27 40 00       	mov    $0x4027bb,%edi
  400ef5:	e8 a6 fc ff ff       	callq  400ba0 <puts@plt>
  400efa:	e8 40 08 00 00       	callq  40173f <read_line>
  400eff:	48 89 c7             	mov    %rax,%rdi
  400f02:	e8 4c 02 00 00       	callq  401153 <phase_4>
  400f07:	e8 a0 09 00 00       	callq  4018ac <phase_defused>
  400f0c:	bf 88 28 40 00       	mov    $0x402888,%edi
  400f11:	e8 8a fc ff ff       	callq  400ba0 <puts@plt>
  400f16:	e8 24 08 00 00       	callq  40173f <read_line>
  400f1b:	48 89 c7             	mov    %rax,%rdi
  400f1e:	e8 83 02 00 00       	callq  4011a6 <phase_5>
  400f23:	e8 84 09 00 00       	callq  4018ac <phase_defused>
  400f28:	bf ca 27 40 00       	mov    $0x4027ca,%edi
  400f2d:	e8 6e fc ff ff       	callq  400ba0 <puts@plt>
  400f32:	e8 08 08 00 00       	callq  40173f <read_line>
  400f37:	48 89 c7             	mov    %rax,%rdi
  400f3a:	e8 a8 02 00 00       	callq  4011e7 <phase_6>
  400f3f:	e8 68 09 00 00       	callq  4018ac <phase_defused>
  400f44:	b8 00 00 00 00       	mov    $0x0,%eax
  400f49:	5b                   	pop    %rbx
  400f4a:	c3                   	retq   
  400f4b:	90                   	nop
  400f4c:	90                   	nop
  400f4d:	90                   	nop
  400f4e:	90                   	nop
  400f4f:	90                   	nop

0000000000400f50 <phase_1>:
  400f50:	48 83 ec 08          	sub    $0x8,%rsp
  400f54:	be b0 28 40 00       	mov    $0x4028b0,%esi  // move $0x4028b0 to esi, second argument
  400f59:	e8 a9 04 00 00       	callq  401407 <strings_not_equal> // call strings not equal. Return 1 if %edi != %esi
  400f5e:	85 c0                	test   %eax,%eax // if eax is 0, test eax will set ZF flag.
  400f60:	74 05                	je     400f67 <phase_1+0x17> // je jump if ZF flag is set
  400f62:	e8 a2 07 00 00       	callq  401709 <explode_bomb>
  400f67:	48 83 c4 08          	add    $0x8,%rsp
  400f6b:	c3                   	retq   

0000000000400f6c <phase_2>:
  400f6c:	55                   	push   %rbp
  400f6d:	53                   	push   %rbx
  400f6e:	48 83 ec 28          	sub    $0x28,%rsp
  400f72:	48 89 e6             	mov    %rsp,%rsi
  400f75:	e8 f0 08 00 00       	callq  40186a <read_six_numbers>
  400f7a:	83 3c 24 00          	cmpl   $0x0,(%rsp)
  400f7e:	79 05                	jns    400f85 <phase_2+0x19>
  400f80:	e8 84 07 00 00       	callq  401709 <explode_bomb>
  400f85:	48 8d 5c 24 04       	lea    0x4(%rsp),%rbx
  400f8a:	bd 01 00 00 00       	mov    $0x1,%ebp
  400f8f:	89 e8                	mov    %ebp,%eax
  400f91:	03 43 fc             	add    -0x4(%rbx),%eax
  400f94:	39 03                	cmp    %eax,(%rbx)
  400f96:	74 05                	je     400f9d <phase_2+0x31>
  400f98:	e8 6c 07 00 00       	callq  401709 <explode_bomb>
  400f9d:	83 c5 01             	add    $0x1,%ebp
  400fa0:	48 83 c3 04          	add    $0x4,%rbx
  400fa4:	83 fd 06             	cmp    $0x6,%ebp
  400fa7:	75 e6                	jne    400f8f <phase_2+0x23>
  400fa9:	48 83 c4 28          	add    $0x28,%rsp
  400fad:	5b                   	pop    %rbx
  400fae:	5d                   	pop    %rbp
  400faf:	c3                   	retq   

0000000000400fb0 <phase_3>:
  400fb0:	48 83 ec 18          	sub    $0x18,%rsp
  400fb4:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
  400fb9:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
  400fbe:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
  400fc3:	be 06 29 40 00       	mov    $0x402906,%esi
  400fc8:	b8 00 00 00 00       	mov    $0x0,%eax
  400fcd:	e8 ae fc ff ff       	callq  400c80 <__isoc99_sscanf@plt>
  400fd2:	83 f8 02             	cmp    $0x2,%eax
  400fd5:	7f 05                	jg     400fdc <phase_3+0x2c>
  400fd7:	e8 2d 07 00 00       	callq  401709 <explode_bomb>
  400fdc:	83 7c 24 04 07       	cmpl   $0x7,0x4(%rsp)
  400fe1:	0f 87 fc 00 00 00    	ja     4010e3 <phase_3+0x133>
  400fe7:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400feb:	ff 24 c5 20 29 40 00 	jmpq   *0x402920(,%rax,8)
  400ff2:	b8 6b 00 00 00       	mov    $0x6b,%eax
  400ff7:	81 7c 24 08 4a 03 00 	cmpl   $0x34a,0x8(%rsp)
  400ffe:	00 
  400fff:	0f 84 e8 00 00 00    	je     4010ed <phase_3+0x13d>
  401005:	e8 ff 06 00 00       	callq  401709 <explode_bomb>
  40100a:	b8 6b 00 00 00       	mov    $0x6b,%eax
  40100f:	e9 d9 00 00 00       	jmpq   4010ed <phase_3+0x13d>
  401014:	b8 62 00 00 00       	mov    $0x62,%eax
  401019:	81 7c 24 08 cc 01 00 	cmpl   $0x1cc,0x8(%rsp)
  401020:	00 
  401021:	0f 84 c6 00 00 00    	je     4010ed <phase_3+0x13d>
  401027:	e8 dd 06 00 00       	callq  401709 <explode_bomb>
  40102c:	b8 62 00 00 00       	mov    $0x62,%eax
  401031:	e9 b7 00 00 00       	jmpq   4010ed <phase_3+0x13d>
  401036:	b8 6b 00 00 00       	mov    $0x6b,%eax
  40103b:	81 7c 24 08 aa 00 00 	cmpl   $0xaa,0x8(%rsp)
  401042:	00 
  401043:	0f 84 a4 00 00 00    	je     4010ed <phase_3+0x13d>
  401049:	e8 bb 06 00 00       	callq  401709 <explode_bomb>
  40104e:	b8 6b 00 00 00       	mov    $0x6b,%eax
  401053:	e9 95 00 00 00       	jmpq   4010ed <phase_3+0x13d>
  401058:	b8 69 00 00 00       	mov    $0x69,%eax
  40105d:	81 7c 24 08 f6 01 00 	cmpl   $0x1f6,0x8(%rsp)
  401064:	00 
  401065:	0f 84 82 00 00 00    	je     4010ed <phase_3+0x13d>
  40106b:	e8 99 06 00 00       	callq  401709 <explode_bomb>
  401070:	b8 69 00 00 00       	mov    $0x69,%eax
  401075:	eb 76                	jmp    4010ed <phase_3+0x13d>
  401077:	b8 64 00 00 00       	mov    $0x64,%eax
  40107c:	81 7c 24 08 66 03 00 	cmpl   $0x366,0x8(%rsp)
  401083:	00 
  401084:	74 67                	je     4010ed <phase_3+0x13d>
  401086:	e8 7e 06 00 00       	callq  401709 <explode_bomb>
  40108b:	b8 64 00 00 00       	mov    $0x64,%eax
  401090:	eb 5b                	jmp    4010ed <phase_3+0x13d>
  401092:	b8 6f 00 00 00       	mov    $0x6f,%eax
  401097:	81 7c 24 08 87 03 00 	cmpl   $0x387,0x8(%rsp)
  40109e:	00 
  40109f:	74 4c                	je     4010ed <phase_3+0x13d>
  4010a1:	e8 63 06 00 00       	callq  401709 <explode_bomb>
  4010a6:	b8 6f 00 00 00       	mov    $0x6f,%eax
  4010ab:	eb 40                	jmp    4010ed <phase_3+0x13d>
  4010ad:	b8 78 00 00 00       	mov    $0x78,%eax
  4010b2:	81 7c 24 08 8e 00 00 	cmpl   $0x8e,0x8(%rsp)
  4010b9:	00 
  4010ba:	74 31                	je     4010ed <phase_3+0x13d>
  4010bc:	e8 48 06 00 00       	callq  401709 <explode_bomb>
  4010c1:	b8 78 00 00 00       	mov    $0x78,%eax
  4010c6:	eb 25                	jmp    4010ed <phase_3+0x13d>
  4010c8:	b8 71 00 00 00       	mov    $0x71,%eax
  4010cd:	81 7c 24 08 e9 02 00 	cmpl   $0x2e9,0x8(%rsp)
  4010d4:	00 
  4010d5:	74 16                	je     4010ed <phase_3+0x13d>
  4010d7:	e8 2d 06 00 00       	callq  401709 <explode_bomb>
  4010dc:	b8 71 00 00 00       	mov    $0x71,%eax
  4010e1:	eb 0a                	jmp    4010ed <phase_3+0x13d>
  4010e3:	e8 21 06 00 00       	callq  401709 <explode_bomb>
  4010e8:	b8 76 00 00 00       	mov    $0x76,%eax
  4010ed:	3a 44 24 0f          	cmp    0xf(%rsp),%al
  4010f1:	74 05                	je     4010f8 <phase_3+0x148>
  4010f3:	e8 11 06 00 00       	callq  401709 <explode_bomb>
  4010f8:	48 83 c4 18          	add    $0x18,%rsp
  4010fc:	c3                   	retq   

00000000004010fd <func4>:
  4010fd:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
  401102:	48 89 6c 24 f0       	mov    %rbp,-0x10(%rsp)
  401107:	4c 89 64 24 f8       	mov    %r12,-0x8(%rsp)
  40110c:	48 83 ec 18          	sub    $0x18,%rsp
  401110:	89 fd                	mov    %edi,%ebp
  401112:	89 f3                	mov    %esi,%ebx
  401114:	85 ff                	test   %edi,%edi
  401116:	7e 21                	jle    401139 <func4+0x3c>
  401118:	83 ff 01             	cmp    $0x1,%edi
  40111b:	74 21                	je     40113e <func4+0x41>
  40111d:	8d 7d ff             	lea    -0x1(%rbp),%edi
  401120:	e8 d8 ff ff ff       	callq  4010fd <func4>
  401125:	44 8d 24 18          	lea    (%rax,%rbx,1),%r12d
  401129:	8d 7d fe             	lea    -0x2(%rbp),%edi
  40112c:	89 de                	mov    %ebx,%esi
  40112e:	e8 ca ff ff ff       	callq  4010fd <func4>
  401133:	41 8d 1c 04          	lea    (%r12,%rax,1),%ebx
  401137:	eb 05                	jmp    40113e <func4+0x41>
  401139:	bb 00 00 00 00       	mov    $0x0,%ebx
  40113e:	89 d8                	mov    %ebx,%eax
  401140:	48 8b 1c 24          	mov    (%rsp),%rbx
  401144:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
  401149:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
  40114e:	48 83 c4 18          	add    $0x18,%rsp
  401152:	c3                   	retq   

0000000000401153 <phase_4>:
  401153:	48 83 ec 18          	sub    $0x18,%rsp
  401157:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  40115c:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  401161:	be 5a 2c 40 00       	mov    $0x402c5a,%esi
  401166:	b8 00 00 00 00       	mov    $0x0,%eax
  40116b:	e8 10 fb ff ff       	callq  400c80 <__isoc99_sscanf@plt>
  401170:	83 f8 02             	cmp    $0x2,%eax
  401173:	75 0e                	jne    401183 <phase_4+0x30>
  401175:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401179:	83 f8 01             	cmp    $0x1,%eax
  40117c:	7e 05                	jle    401183 <phase_4+0x30>
  40117e:	83 f8 04             	cmp    $0x4,%eax
  401181:	7e 05                	jle    401188 <phase_4+0x35>
  401183:	e8 81 05 00 00       	callq  401709 <explode_bomb>
  401188:	8b 74 24 08          	mov    0x8(%rsp),%esi
  40118c:	bf 06 00 00 00       	mov    $0x6,%edi
  401191:	e8 67 ff ff ff       	callq  4010fd <func4>
  401196:	3b 44 24 0c          	cmp    0xc(%rsp),%eax
  40119a:	74 05                	je     4011a1 <phase_4+0x4e>
  40119c:	e8 68 05 00 00       	callq  401709 <explode_bomb>
  4011a1:	48 83 c4 18          	add    $0x18,%rsp
  4011a5:	c3                   	retq   

00000000004011a6 <phase_5>:
  4011a6:	53                   	push   %rbx
  4011a7:	48 89 fb             	mov    %rdi,%rbx
  4011aa:	e8 3c 02 00 00       	callq  4013eb <string_length>
  4011af:	83 f8 06             	cmp    $0x6,%eax
  4011b2:	74 05                	je     4011b9 <phase_5+0x13>
  4011b4:	e8 50 05 00 00       	callq  401709 <explode_bomb>
  4011b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4011be:	ba 00 00 00 00       	mov    $0x0,%edx
  4011c3:	0f be 0c 03          	movsbl (%rbx,%rax,1),%ecx
  4011c7:	83 e1 0f             	and    $0xf,%ecx
  4011ca:	03 14 8d 60 29 40 00 	add    0x402960(,%rcx,4),%edx
  4011d1:	48 83 c0 01          	add    $0x1,%rax
  4011d5:	48 83 f8 06          	cmp    $0x6,%rax
  4011d9:	75 e8                	jne    4011c3 <phase_5+0x1d>
  4011db:	83 fa 2d             	cmp    $0x2d,%edx
  4011de:	74 05                	je     4011e5 <phase_5+0x3f>
  4011e0:	e8 24 05 00 00       	callq  401709 <explode_bomb>
  4011e5:	5b                   	pop    %rbx
  4011e6:	c3                   	retq   

00000000004011e7 <phase_6>:
  4011e7:	41 55                	push   %r13
  4011e9:	41 54                	push   %r12
  4011eb:	55                   	push   %rbp
  4011ec:	53                   	push   %rbx
  4011ed:	48 83 ec 58          	sub    $0x58,%rsp
  4011f1:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  4011f6:	e8 6f 06 00 00       	callq  40186a <read_six_numbers>
  4011fb:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  401200:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401206:	4c 89 e5             	mov    %r12,%rbp
  401209:	41 8b 04 24          	mov    (%r12),%eax
  40120d:	83 e8 01             	sub    $0x1,%eax
  401210:	83 f8 05             	cmp    $0x5,%eax
  401213:	76 05                	jbe    40121a <phase_6+0x33>
  401215:	e8 ef 04 00 00       	callq  401709 <explode_bomb>
  40121a:	41 83 c5 01          	add    $0x1,%r13d
  40121e:	41 83 fd 06          	cmp    $0x6,%r13d
  401222:	74 3d                	je     401261 <phase_6+0x7a>
  401224:	44 89 eb             	mov    %r13d,%ebx
  401227:	48 63 c3             	movslq %ebx,%rax
  40122a:	8b 54 84 30          	mov    0x30(%rsp,%rax,4),%edx
  40122e:	39 55 00             	cmp    %edx,0x0(%rbp)
  401231:	75 05                	jne    401238 <phase_6+0x51>
  401233:	e8 d1 04 00 00       	callq  401709 <explode_bomb>
  401238:	83 c3 01             	add    $0x1,%ebx
  40123b:	83 fb 05             	cmp    $0x5,%ebx
  40123e:	7e e7                	jle    401227 <phase_6+0x40>
  401240:	49 83 c4 04          	add    $0x4,%r12
  401244:	eb c0                	jmp    401206 <phase_6+0x1f>
  401246:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  40124a:	83 c0 01             	add    $0x1,%eax
  40124d:	39 c8                	cmp    %ecx,%eax
  40124f:	75 f5                	jne    401246 <phase_6+0x5f>
  401251:	48 89 14 74          	mov    %rdx,(%rsp,%rsi,2)
  401255:	48 83 c6 04          	add    $0x4,%rsi
  401259:	48 83 fe 18          	cmp    $0x18,%rsi
  40125d:	75 07                	jne    401266 <phase_6+0x7f>
  40125f:	eb 1a                	jmp    40127b <phase_6+0x94>
  401261:	be 00 00 00 00       	mov    $0x0,%esi
  401266:	8b 4c 34 30          	mov    0x30(%rsp,%rsi,1),%ecx
  40126a:	b8 01 00 00 00       	mov    $0x1,%eax
  40126f:	ba 00 43 60 00       	mov    $0x604300,%edx
  401274:	83 f9 01             	cmp    $0x1,%ecx
  401277:	7f cd                	jg     401246 <phase_6+0x5f>
  401279:	eb d6                	jmp    401251 <phase_6+0x6a>
  40127b:	48 8b 1c 24          	mov    (%rsp),%rbx
  40127f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  401284:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401288:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  40128d:	48 89 50 08          	mov    %rdx,0x8(%rax)
  401291:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  401296:	48 89 42 08          	mov    %rax,0x8(%rdx)
  40129a:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
  40129f:	48 89 50 08          	mov    %rdx,0x8(%rax)
  4012a3:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  4012a8:	48 89 42 08          	mov    %rax,0x8(%rdx)
  4012ac:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  4012b3:	00 
  4012b4:	bd 05 00 00 00       	mov    $0x5,%ebp
  4012b9:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4012bd:	8b 10                	mov    (%rax),%edx
  4012bf:	39 13                	cmp    %edx,(%rbx)
  4012c1:	7d 05                	jge    4012c8 <phase_6+0xe1>
  4012c3:	e8 41 04 00 00       	callq  401709 <explode_bomb>
  4012c8:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  4012cc:	83 ed 01             	sub    $0x1,%ebp
  4012cf:	75 e8                	jne    4012b9 <phase_6+0xd2>
  4012d1:	48 83 c4 58          	add    $0x58,%rsp
  4012d5:	5b                   	pop    %rbx
  4012d6:	5d                   	pop    %rbp
  4012d7:	41 5c                	pop    %r12
  4012d9:	41 5d                	pop    %r13
  4012db:	c3                   	retq   

00000000004012dc <fun7>:
  4012dc:	48 83 ec 08          	sub    $0x8,%rsp
  4012e0:	48 85 ff             	test   %rdi,%rdi
  4012e3:	74 2b                	je     401310 <fun7+0x34>
  4012e5:	8b 17                	mov    (%rdi),%edx
  4012e7:	39 f2                	cmp    %esi,%edx
  4012e9:	7e 0d                	jle    4012f8 <fun7+0x1c>
  4012eb:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  4012ef:	e8 e8 ff ff ff       	callq  4012dc <fun7>
  4012f4:	01 c0                	add    %eax,%eax
  4012f6:	eb 1d                	jmp    401315 <fun7+0x39>
  4012f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4012fd:	39 f2                	cmp    %esi,%edx
  4012ff:	74 14                	je     401315 <fun7+0x39>
  401301:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  401305:	e8 d2 ff ff ff       	callq  4012dc <fun7>
  40130a:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  40130e:	eb 05                	jmp    401315 <fun7+0x39>
  401310:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401315:	48 83 c4 08          	add    $0x8,%rsp
  401319:	c3                   	retq   

000000000040131a <secret_phase>:
  40131a:	53                   	push   %rbx
  40131b:	e8 1f 04 00 00       	callq  40173f <read_line>
  401320:	ba 0a 00 00 00       	mov    $0xa,%edx
  401325:	be 00 00 00 00       	mov    $0x0,%esi
  40132a:	48 89 c7             	mov    %rax,%rdi
  40132d:	e8 2e f9 ff ff       	callq  400c60 <strtol@plt>
  401332:	89 c3                	mov    %eax,%ebx
  401334:	8d 43 ff             	lea    -0x1(%rbx),%eax
  401337:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  40133c:	76 05                	jbe    401343 <secret_phase+0x29>
  40133e:	e8 c6 03 00 00       	callq  401709 <explode_bomb>
  401343:	89 de                	mov    %ebx,%esi
  401345:	bf 20 41 60 00       	mov    $0x604120,%edi
  40134a:	e8 8d ff ff ff       	callq  4012dc <fun7>
  40134f:	83 f8 05             	cmp    $0x5,%eax
  401352:	74 05                	je     401359 <secret_phase+0x3f>
  401354:	e8 b0 03 00 00       	callq  401709 <explode_bomb>
  401359:	bf e0 28 40 00       	mov    $0x4028e0,%edi
  40135e:	e8 3d f8 ff ff       	callq  400ba0 <puts@plt>
  401363:	e8 44 05 00 00       	callq  4018ac <phase_defused>
  401368:	5b                   	pop    %rbx
  401369:	c3                   	retq   
  40136a:	90                   	nop
  40136b:	90                   	nop
  40136c:	90                   	nop
  40136d:	90                   	nop
  40136e:	90                   	nop
  40136f:	90                   	nop

0000000000401370 <sig_handler>:
  401370:	48 83 ec 08          	sub    $0x8,%rsp
  401374:	bf a0 29 40 00       	mov    $0x4029a0,%edi
  401379:	e8 22 f8 ff ff       	callq  400ba0 <puts@plt>
  40137e:	bf 03 00 00 00       	mov    $0x3,%edi
  401383:	e8 68 f9 ff ff       	callq  400cf0 <sleep@plt>
  401388:	be 8f 2b 40 00       	mov    $0x402b8f,%esi
  40138d:	bf 01 00 00 00       	mov    $0x1,%edi
  401392:	b8 00 00 00 00       	mov    $0x0,%eax
  401397:	e8 f4 f8 ff ff       	callq  400c90 <__printf_chk@plt>
  40139c:	48 8b 3d 5d 42 20 00 	mov    0x20425d(%rip),%rdi        # 605600 <__bss_start>
  4013a3:	e8 c8 f8 ff ff       	callq  400c70 <fflush@plt>
  4013a8:	bf 01 00 00 00       	mov    $0x1,%edi
  4013ad:	e8 3e f9 ff ff       	callq  400cf0 <sleep@plt>
  4013b2:	bf 97 2b 40 00       	mov    $0x402b97,%edi
  4013b7:	e8 e4 f7 ff ff       	callq  400ba0 <puts@plt>
  4013bc:	bf 10 00 00 00       	mov    $0x10,%edi
  4013c1:	e8 fa f8 ff ff       	callq  400cc0 <exit@plt>

00000000004013c6 <invalid_phase>:
  4013c6:	48 83 ec 08          	sub    $0x8,%rsp
  4013ca:	48 89 fa             	mov    %rdi,%rdx
  4013cd:	be 9f 2b 40 00       	mov    $0x402b9f,%esi
  4013d2:	bf 01 00 00 00       	mov    $0x1,%edi
  4013d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4013dc:	e8 af f8 ff ff       	callq  400c90 <__printf_chk@plt>
  4013e1:	bf 08 00 00 00       	mov    $0x8,%edi
  4013e6:	e8 d5 f8 ff ff       	callq  400cc0 <exit@plt>

00000000004013eb <string_length>:
  4013eb:	b8 00 00 00 00       	mov    $0x0,%eax
  4013f0:	80 3f 00             	cmpb   $0x0,(%rdi)
  4013f3:	74 10                	je     401405 <string_length+0x1a>
  4013f5:	48 89 fa             	mov    %rdi,%rdx
  4013f8:	48 83 c2 01          	add    $0x1,%rdx
  4013fc:	89 d0                	mov    %edx,%eax
  4013fe:	29 f8                	sub    %edi,%eax
  401400:	80 3a 00             	cmpb   $0x0,(%rdx)
  401403:	75 f3                	jne    4013f8 <string_length+0xd>
  401405:	f3 c3                	repz retq 

0000000000401407 <strings_not_equal>:
  401407:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
  40140c:	48 89 6c 24 f0       	mov    %rbp,-0x10(%rsp)
  401411:	4c 89 64 24 f8       	mov    %r12,-0x8(%rsp)
  401416:	48 83 ec 18          	sub    $0x18,%rsp
  40141a:	48 89 fb             	mov    %rdi,%rbx
  40141d:	48 89 f5             	mov    %rsi,%rbp
  401420:	e8 c6 ff ff ff       	callq  4013eb <string_length>
  401425:	41 89 c4             	mov    %eax,%r12d
  401428:	48 89 ef             	mov    %rbp,%rdi
  40142b:	e8 bb ff ff ff       	callq  4013eb <string_length>
  401430:	ba 01 00 00 00       	mov    $0x1,%edx
  401435:	41 39 c4             	cmp    %eax,%r12d
  401438:	75 36                	jne    401470 <strings_not_equal+0x69>
  40143a:	0f b6 03             	movzbl (%rbx),%eax
  40143d:	b2 00                	mov    $0x0,%dl
  40143f:	84 c0                	test   %al,%al
  401441:	74 2d                	je     401470 <strings_not_equal+0x69>
  401443:	b2 01                	mov    $0x1,%dl
  401445:	3a 45 00             	cmp    0x0(%rbp),%al
  401448:	75 26                	jne    401470 <strings_not_equal+0x69>
  40144a:	b8 00 00 00 00       	mov    $0x0,%eax
  40144f:	eb 0a                	jmp    40145b <strings_not_equal+0x54>
  401451:	48 83 c0 01          	add    $0x1,%rax
  401455:	3a 54 05 00          	cmp    0x0(%rbp,%rax,1),%dl
  401459:	75 10                	jne    40146b <strings_not_equal+0x64>
  40145b:	0f b6 54 03 01       	movzbl 0x1(%rbx,%rax,1),%edx
  401460:	84 d2                	test   %dl,%dl
  401462:	75 ed                	jne    401451 <strings_not_equal+0x4a>
  401464:	ba 00 00 00 00       	mov    $0x0,%edx
  401469:	eb 05                	jmp    401470 <strings_not_equal+0x69>
  40146b:	ba 01 00 00 00       	mov    $0x1,%edx
  401470:	89 d0                	mov    %edx,%eax
  401472:	48 8b 1c 24          	mov    (%rsp),%rbx
  401476:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
  40147b:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
  401480:	48 83 c4 18          	add    $0x18,%rsp
  401484:	c3                   	retq   

0000000000401485 <initialize_bomb>:
  401485:	53                   	push   %rbx
  401486:	48 81 ec 50 20 00 00 	sub    $0x2050,%rsp
  40148d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401494:	00 00 
  401496:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
  40149d:	00 
  40149e:	31 c0                	xor    %eax,%eax
  4014a0:	be 70 13 40 00       	mov    $0x401370,%esi
  4014a5:	bf 02 00 00 00       	mov    $0x2,%edi
  4014aa:	e8 71 f7 ff ff       	callq  400c20 <signal@plt>
  4014af:	be 40 00 00 00       	mov    $0x40,%esi
  4014b4:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  4014bb:	00 
  4014bc:	e8 ef f7 ff ff       	callq  400cb0 <gethostname@plt>
  4014c1:	85 c0                	test   %eax,%eax
  4014c3:	75 13                	jne    4014d8 <initialize_bomb+0x53>
  4014c5:	48 8b 3d b4 3e 20 00 	mov    0x203eb4(%rip),%rdi        # 605380 <host_table>
  4014cc:	bb 88 53 60 00       	mov    $0x605388,%ebx
  4014d1:	48 85 ff             	test   %rdi,%rdi
  4014d4:	75 16                	jne    4014ec <initialize_bomb+0x67>
  4014d6:	eb 61                	jmp    401539 <initialize_bomb+0xb4>
  4014d8:	bf d8 29 40 00       	mov    $0x4029d8,%edi
  4014dd:	e8 be f6 ff ff       	callq  400ba0 <puts@plt>
  4014e2:	bf 08 00 00 00       	mov    $0x8,%edi
  4014e7:	e8 d4 f7 ff ff       	callq  400cc0 <exit@plt>
  4014ec:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  4014f3:	00 
  4014f4:	e8 77 f6 ff ff       	callq  400b70 <strcasecmp@plt>
  4014f9:	85 c0                	test   %eax,%eax
  4014fb:	74 0f                	je     40150c <initialize_bomb+0x87>
  4014fd:	48 83 c3 08          	add    $0x8,%rbx
  401501:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
  401505:	48 85 ff             	test   %rdi,%rdi
  401508:	75 e2                	jne    4014ec <initialize_bomb+0x67>
  40150a:	eb 2d                	jmp    401539 <initialize_bomb+0xb4>
  40150c:	48 89 e7             	mov    %rsp,%rdi
  40150f:	e8 de 0e 00 00       	callq  4023f2 <init_driver>
  401514:	85 c0                	test   %eax,%eax
  401516:	79 35                	jns    40154d <initialize_bomb+0xc8>
  401518:	48 89 e2             	mov    %rsp,%rdx
  40151b:	be b0 2b 40 00       	mov    $0x402bb0,%esi
  401520:	bf 01 00 00 00       	mov    $0x1,%edi
  401525:	b8 00 00 00 00       	mov    $0x0,%eax
  40152a:	e8 61 f7 ff ff       	callq  400c90 <__printf_chk@plt>
  40152f:	bf 08 00 00 00       	mov    $0x8,%edi
  401534:	e8 87 f7 ff ff       	callq  400cc0 <exit@plt>
  401539:	bf 10 2a 40 00       	mov    $0x402a10,%edi
  40153e:	e8 5d f6 ff ff       	callq  400ba0 <puts@plt>
  401543:	bf 08 00 00 00       	mov    $0x8,%edi
  401548:	e8 73 f7 ff ff       	callq  400cc0 <exit@plt>
  40154d:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
  401554:	00 
  401555:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40155c:	00 00 
  40155e:	74 05                	je     401565 <initialize_bomb+0xe0>
  401560:	e8 5b f6 ff ff       	callq  400bc0 <__stack_chk_fail@plt>
  401565:	48 81 c4 50 20 00 00 	add    $0x2050,%rsp
  40156c:	5b                   	pop    %rbx
  40156d:	c3                   	retq   

000000000040156e <initialize_bomb_solve>:
  40156e:	f3 c3                	repz retq 

0000000000401570 <blank_line>:
  401570:	55                   	push   %rbp
  401571:	53                   	push   %rbx
  401572:	48 83 ec 08          	sub    $0x8,%rsp
  401576:	48 89 fd             	mov    %rdi,%rbp
  401579:	eb 17                	jmp    401592 <blank_line+0x22>
  40157b:	e8 80 f7 ff ff       	callq  400d00 <__ctype_b_loc@plt>
  401580:	48 83 c5 01          	add    $0x1,%rbp
  401584:	48 0f be db          	movsbq %bl,%rbx
  401588:	48 8b 00             	mov    (%rax),%rax
  40158b:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  401590:	74 0f                	je     4015a1 <blank_line+0x31>
  401592:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  401596:	84 db                	test   %bl,%bl
  401598:	75 e1                	jne    40157b <blank_line+0xb>
  40159a:	b8 01 00 00 00       	mov    $0x1,%eax
  40159f:	eb 05                	jmp    4015a6 <blank_line+0x36>
  4015a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4015a6:	48 83 c4 08          	add    $0x8,%rsp
  4015aa:	5b                   	pop    %rbx
  4015ab:	5d                   	pop    %rbp
  4015ac:	c3                   	retq   

00000000004015ad <skip>:
  4015ad:	53                   	push   %rbx
  4015ae:	48 63 05 73 40 20 00 	movslq 0x204073(%rip),%rax        # 605628 <num_input_strings>
  4015b5:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  4015b9:	48 c1 e7 04          	shl    $0x4,%rdi
  4015bd:	48 81 c7 40 56 60 00 	add    $0x605640,%rdi
  4015c4:	48 8b 15 65 40 20 00 	mov    0x204065(%rip),%rdx        # 605630 <infile>
  4015cb:	be 50 00 00 00       	mov    $0x50,%esi
  4015d0:	e8 3b f6 ff ff       	callq  400c10 <fgets@plt>
  4015d5:	48 89 c3             	mov    %rax,%rbx
  4015d8:	48 85 c0             	test   %rax,%rax
  4015db:	74 0c                	je     4015e9 <skip+0x3c>
  4015dd:	48 89 c7             	mov    %rax,%rdi
  4015e0:	e8 8b ff ff ff       	callq  401570 <blank_line>
  4015e5:	85 c0                	test   %eax,%eax
  4015e7:	75 c5                	jne    4015ae <skip+0x1>
  4015e9:	48 89 d8             	mov    %rbx,%rax
  4015ec:	5b                   	pop    %rbx
  4015ed:	c3                   	retq   

00000000004015ee <send_msg>:
  4015ee:	48 81 ec 38 40 00 00 	sub    $0x4038,%rsp
  4015f5:	41 89 f8             	mov    %edi,%r8d
  4015f8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4015ff:	00 00 
  401601:	48 89 84 24 28 40 00 	mov    %rax,0x4028(%rsp)
  401608:	00 
  401609:	31 c0                	xor    %eax,%eax
  40160b:	8b 15 17 40 20 00    	mov    0x204017(%rip),%edx        # 605628 <num_input_strings>
  401611:	48 63 c2             	movslq %edx,%rax
  401614:	48 8d 74 80 fb       	lea    -0x5(%rax,%rax,4),%rsi
  401619:	48 c1 e6 04          	shl    $0x4,%rsi
  40161d:	48 81 c6 40 56 60 00 	add    $0x605640,%rsi
  401624:	48 89 f7             	mov    %rsi,%rdi
  401627:	b8 00 00 00 00       	mov    $0x0,%eax
  40162c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401633:	f2 ae                	repnz scas %es:(%rdi),%al
  401635:	48 f7 d1             	not    %rcx
  401638:	48 83 c1 63          	add    $0x63,%rcx
  40163c:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  401643:	76 19                	jbe    40165e <send_msg+0x70>
  401645:	be 48 2a 40 00       	mov    $0x402a48,%esi
  40164a:	bf 01 00 00 00       	mov    $0x1,%edi
  40164f:	e8 3c f6 ff ff       	callq  400c90 <__printf_chk@plt>
  401654:	bf 08 00 00 00       	mov    $0x8,%edi
  401659:	e8 62 f6 ff ff       	callq  400cc0 <exit@plt>
  40165e:	45 85 c0             	test   %r8d,%r8d
  401661:	b8 ca 2b 40 00       	mov    $0x402bca,%eax
  401666:	b9 d2 2b 40 00       	mov    $0x402bd2,%ecx
  40166b:	48 0f 44 c1          	cmove  %rcx,%rax
  40166f:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  401674:	89 54 24 08          	mov    %edx,0x8(%rsp)
  401678:	48 89 04 24          	mov    %rax,(%rsp)
  40167c:	41 b9 60 4b 60 00    	mov    $0x604b60,%r9d
  401682:	44 8b 05 d7 3c 20 00 	mov    0x203cd7(%rip),%r8d        # 605360 <bomb_id>
  401689:	b9 db 2b 40 00       	mov    $0x402bdb,%ecx
  40168e:	ba 00 20 00 00       	mov    $0x2000,%edx
  401693:	be 01 00 00 00       	mov    $0x1,%esi
  401698:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40169d:	b8 00 00 00 00       	mov    $0x0,%eax
  4016a2:	e8 69 f6 ff ff       	callq  400d10 <__sprintf_chk@plt>
  4016a7:	4c 8d 8c 24 20 20 00 	lea    0x2020(%rsp),%r9
  4016ae:	00 
  4016af:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4016b5:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4016ba:	ba 60 43 60 00       	mov    $0x604360,%edx
  4016bf:	be 60 47 60 00       	mov    $0x604760,%esi
  4016c4:	bf 60 4f 60 00       	mov    $0x604f60,%edi
  4016c9:	e8 17 0f 00 00       	callq  4025e5 <driver_post>
  4016ce:	85 c0                	test   %eax,%eax
  4016d0:	79 17                	jns    4016e9 <send_msg+0xfb>
  4016d2:	48 8d bc 24 20 20 00 	lea    0x2020(%rsp),%rdi
  4016d9:	00 
  4016da:	e8 c1 f4 ff ff       	callq  400ba0 <puts@plt>
  4016df:	bf 00 00 00 00       	mov    $0x0,%edi
  4016e4:	e8 d7 f5 ff ff       	callq  400cc0 <exit@plt>
  4016e9:	48 8b 84 24 28 40 00 	mov    0x4028(%rsp),%rax
  4016f0:	00 
  4016f1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4016f8:	00 00 
  4016fa:	74 05                	je     401701 <send_msg+0x113>
  4016fc:	e8 bf f4 ff ff       	callq  400bc0 <__stack_chk_fail@plt>
  401701:	48 81 c4 38 40 00 00 	add    $0x4038,%rsp
  401708:	c3                   	retq   

0000000000401709 <explode_bomb>:
  401709:	48 83 ec 08          	sub    $0x8,%rsp
  40170d:	bf ea 2b 40 00       	mov    $0x402bea,%edi
  401712:	e8 89 f4 ff ff       	callq  400ba0 <puts@plt>
  401717:	bf f3 2b 40 00       	mov    $0x402bf3,%edi
  40171c:	e8 7f f4 ff ff       	callq  400ba0 <puts@plt>
  401721:	bf 00 00 00 00       	mov    $0x0,%edi
  401726:	e8 c3 fe ff ff       	callq  4015ee <send_msg>
  40172b:	bf 70 2a 40 00       	mov    $0x402a70,%edi
  401730:	e8 6b f4 ff ff       	callq  400ba0 <puts@plt>
  401735:	bf 08 00 00 00       	mov    $0x8,%edi
  40173a:	e8 81 f5 ff ff       	callq  400cc0 <exit@plt>

000000000040173f <read_line>:
  40173f:	48 83 ec 08          	sub    $0x8,%rsp
  401743:	b8 00 00 00 00       	mov    $0x0,%eax
  401748:	e8 60 fe ff ff       	callq  4015ad <skip>
  40174d:	48 85 c0             	test   %rax,%rax
  401750:	75 6e                	jne    4017c0 <read_line+0x81>
  401752:	48 8b 05 af 3e 20 00 	mov    0x203eaf(%rip),%rax        # 605608 <stdin@@GLIBC_2.2.5>
  401759:	48 39 05 d0 3e 20 00 	cmp    %rax,0x203ed0(%rip)        # 605630 <infile>
  401760:	75 14                	jne    401776 <read_line+0x37>
  401762:	bf 0a 2c 40 00       	mov    $0x402c0a,%edi
  401767:	e8 34 f4 ff ff       	callq  400ba0 <puts@plt>
  40176c:	bf 08 00 00 00       	mov    $0x8,%edi
  401771:	e8 4a f5 ff ff       	callq  400cc0 <exit@plt>
  401776:	bf 28 2c 40 00       	mov    $0x402c28,%edi
  40177b:	e8 e0 f3 ff ff       	callq  400b60 <getenv@plt>
  401780:	48 85 c0             	test   %rax,%rax
  401783:	74 0a                	je     40178f <read_line+0x50>
  401785:	bf 00 00 00 00       	mov    $0x0,%edi
  40178a:	e8 31 f5 ff ff       	callq  400cc0 <exit@plt>
  40178f:	48 8b 05 72 3e 20 00 	mov    0x203e72(%rip),%rax        # 605608 <stdin@@GLIBC_2.2.5>
  401796:	48 89 05 93 3e 20 00 	mov    %rax,0x203e93(%rip)        # 605630 <infile>
  40179d:	b8 00 00 00 00       	mov    $0x0,%eax
  4017a2:	e8 06 fe ff ff       	callq  4015ad <skip>
  4017a7:	48 85 c0             	test   %rax,%rax
  4017aa:	75 14                	jne    4017c0 <read_line+0x81>
  4017ac:	bf 0a 2c 40 00       	mov    $0x402c0a,%edi
  4017b1:	e8 ea f3 ff ff       	callq  400ba0 <puts@plt>
  4017b6:	bf 00 00 00 00       	mov    $0x0,%edi
  4017bb:	e8 00 f5 ff ff       	callq  400cc0 <exit@plt>
  4017c0:	8b 15 62 3e 20 00    	mov    0x203e62(%rip),%edx        # 605628 <num_input_strings>
  4017c6:	48 63 c2             	movslq %edx,%rax
  4017c9:	48 8d 34 80          	lea    (%rax,%rax,4),%rsi
  4017cd:	48 c1 e6 04          	shl    $0x4,%rsi
  4017d1:	48 81 c6 40 56 60 00 	add    $0x605640,%rsi
  4017d8:	48 89 f7             	mov    %rsi,%rdi
  4017db:	b8 00 00 00 00       	mov    $0x0,%eax
  4017e0:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4017e7:	f2 ae                	repnz scas %es:(%rdi),%al
  4017e9:	48 f7 d1             	not    %rcx
  4017ec:	83 e9 01             	sub    $0x1,%ecx
  4017ef:	83 f9 4e             	cmp    $0x4e,%ecx
  4017f2:	7e 4c                	jle    401840 <read_line+0x101>
  4017f4:	bf 33 2c 40 00       	mov    $0x402c33,%edi
  4017f9:	e8 a2 f3 ff ff       	callq  400ba0 <puts@plt>
  4017fe:	8b 05 24 3e 20 00    	mov    0x203e24(%rip),%eax        # 605628 <num_input_strings>
  401804:	8d 50 01             	lea    0x1(%rax),%edx
  401807:	89 15 1b 3e 20 00    	mov    %edx,0x203e1b(%rip)        # 605628 <num_input_strings>
  40180d:	48 98                	cltq   
  40180f:	48 6b c0 50          	imul   $0x50,%rax,%rax
  401813:	c7 80 40 56 60 00 2a 	movl   $0x742a2a2a,0x605640(%rax)
  40181a:	2a 2a 74 
  40181d:	c7 80 44 56 60 00 72 	movl   $0x636e7572,0x605644(%rax)
  401824:	75 6e 63 
  401827:	c7 80 48 56 60 00 61 	movl   $0x64657461,0x605648(%rax)
  40182e:	74 65 64 
  401831:	c7 80 4c 56 60 00 2a 	movl   $0x2a2a2a,0x60564c(%rax)
  401838:	2a 2a 00 
  40183b:	e8 c9 fe ff ff       	callq  401709 <explode_bomb>
  401840:	83 e9 01             	sub    $0x1,%ecx
  401843:	48 63 c9             	movslq %ecx,%rcx
  401846:	48 63 c2             	movslq %edx,%rax
  401849:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40184d:	48 c1 e0 04          	shl    $0x4,%rax
  401851:	c6 84 01 40 56 60 00 	movb   $0x0,0x605640(%rcx,%rax,1)
  401858:	00 
  401859:	83 c2 01             	add    $0x1,%edx
  40185c:	89 15 c6 3d 20 00    	mov    %edx,0x203dc6(%rip)        # 605628 <num_input_strings>
  401862:	48 89 f0             	mov    %rsi,%rax
  401865:	48 83 c4 08          	add    $0x8,%rsp
  401869:	c3                   	retq   

000000000040186a <read_six_numbers>:
  40186a:	48 83 ec 18          	sub    $0x18,%rsp
  40186e:	48 89 f2             	mov    %rsi,%rdx
  401871:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  401875:	48 8d 46 14          	lea    0x14(%rsi),%rax
  401879:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40187e:	48 8d 46 10          	lea    0x10(%rsi),%rax
  401882:	48 89 04 24          	mov    %rax,(%rsp)
  401886:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  40188a:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  40188e:	be 4e 2c 40 00       	mov    $0x402c4e,%esi
  401893:	b8 00 00 00 00       	mov    $0x0,%eax
  401898:	e8 e3 f3 ff ff       	callq  400c80 <__isoc99_sscanf@plt>
  40189d:	83 f8 05             	cmp    $0x5,%eax
  4018a0:	7f 05                	jg     4018a7 <read_six_numbers+0x3d>
  4018a2:	e8 62 fe ff ff       	callq  401709 <explode_bomb>
  4018a7:	48 83 c4 18          	add    $0x18,%rsp
  4018ab:	c3                   	retq   

00000000004018ac <phase_defused>:
  4018ac:	48 83 ec 78          	sub    $0x78,%rsp
  4018b0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4018b7:	00 00 
  4018b9:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  4018be:	31 c0                	xor    %eax,%eax
  4018c0:	bf 01 00 00 00       	mov    $0x1,%edi
  4018c5:	e8 24 fd ff ff       	callq  4015ee <send_msg>
  4018ca:	83 3d 57 3d 20 00 06 	cmpl   $0x6,0x203d57(%rip)        # 605628 <num_input_strings>
  4018d1:	75 6d                	jne    401940 <phase_defused+0x94>
  4018d3:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  4018d8:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  4018dd:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  4018e2:	be 60 2c 40 00       	mov    $0x402c60,%esi
  4018e7:	bf 30 57 60 00       	mov    $0x605730,%edi
  4018ec:	b8 00 00 00 00       	mov    $0x0,%eax
  4018f1:	e8 8a f3 ff ff       	callq  400c80 <__isoc99_sscanf@plt>
  4018f6:	83 f8 03             	cmp    $0x3,%eax
  4018f9:	75 31                	jne    40192c <phase_defused+0x80>
  4018fb:	be 69 2c 40 00       	mov    $0x402c69,%esi
  401900:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401905:	e8 fd fa ff ff       	callq  401407 <strings_not_equal>
  40190a:	85 c0                	test   %eax,%eax
  40190c:	75 1e                	jne    40192c <phase_defused+0x80>
  40190e:	bf 98 2a 40 00       	mov    $0x402a98,%edi
  401913:	e8 88 f2 ff ff       	callq  400ba0 <puts@plt>
  401918:	bf c0 2a 40 00       	mov    $0x402ac0,%edi
  40191d:	e8 7e f2 ff ff       	callq  400ba0 <puts@plt>
  401922:	b8 00 00 00 00       	mov    $0x0,%eax
  401927:	e8 ee f9 ff ff       	callq  40131a <secret_phase>
  40192c:	bf f8 2a 40 00       	mov    $0x402af8,%edi
  401931:	e8 6a f2 ff ff       	callq  400ba0 <puts@plt>
  401936:	bf 28 2b 40 00       	mov    $0x402b28,%edi
  40193b:	e8 60 f2 ff ff       	callq  400ba0 <puts@plt>
  401940:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  401945:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40194c:	00 00 
  40194e:	74 05                	je     401955 <phase_defused+0xa9>
  401950:	e8 6b f2 ff ff       	callq  400bc0 <__stack_chk_fail@plt>
  401955:	48 83 c4 78          	add    $0x78,%rsp
  401959:	c3                   	retq   
  40195a:	90                   	nop
  40195b:	90                   	nop
  40195c:	90                   	nop
  40195d:	90                   	nop
  40195e:	90                   	nop
  40195f:	90                   	nop

0000000000401960 <rio_readlineb>:
  401960:	41 57                	push   %r15
  401962:	41 56                	push   %r14
  401964:	41 55                	push   %r13
  401966:	41 54                	push   %r12
  401968:	55                   	push   %rbp
  401969:	53                   	push   %rbx
  40196a:	48 83 ec 28          	sub    $0x28,%rsp
  40196e:	48 89 fd             	mov    %rdi,%rbp
  401971:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  401976:	49 89 f7             	mov    %rsi,%r15
  401979:	41 be 01 00 00 00    	mov    $0x1,%r14d
  40197f:	4c 8d 6f 10          	lea    0x10(%rdi),%r13
  401983:	48 83 fa 01          	cmp    $0x1,%rdx
  401987:	77 38                	ja     4019c1 <rio_readlineb+0x61>
  401989:	e9 a7 00 00 00       	jmpq   401a35 <rio_readlineb+0xd5>
  40198e:	ba 00 20 00 00       	mov    $0x2000,%edx
  401993:	4c 89 ee             	mov    %r13,%rsi
  401996:	8b 7d 00             	mov    0x0(%rbp),%edi
  401999:	e8 52 f2 ff ff       	callq  400bf0 <read@plt>
  40199e:	89 45 04             	mov    %eax,0x4(%rbp)
  4019a1:	85 c0                	test   %eax,%eax
  4019a3:	79 10                	jns    4019b5 <rio_readlineb+0x55>
  4019a5:	e8 d6 f1 ff ff       	callq  400b80 <__errno_location@plt>
  4019aa:	83 38 04             	cmpl   $0x4,(%rax)
  4019ad:	74 12                	je     4019c1 <rio_readlineb+0x61>
  4019af:	90                   	nop
  4019b0:	e9 99 00 00 00       	jmpq   401a4e <rio_readlineb+0xee>
  4019b5:	85 c0                	test   %eax,%eax
  4019b7:	0f 84 9a 00 00 00    	je     401a57 <rio_readlineb+0xf7>
  4019bd:	4c 89 6d 08          	mov    %r13,0x8(%rbp)
  4019c1:	44 8b 65 04          	mov    0x4(%rbp),%r12d
  4019c5:	45 85 e4             	test   %r12d,%r12d
  4019c8:	7e c4                	jle    40198e <rio_readlineb+0x2e>
  4019ca:	45 85 e4             	test   %r12d,%r12d
  4019cd:	0f 85 8e 00 00 00    	jne    401a61 <rio_readlineb+0x101>
  4019d3:	49 63 dc             	movslq %r12d,%rbx
  4019d6:	48 8b 75 08          	mov    0x8(%rbp),%rsi
  4019da:	b9 01 00 00 00       	mov    $0x1,%ecx
  4019df:	48 89 da             	mov    %rbx,%rdx
  4019e2:	48 8d 7c 24 1f       	lea    0x1f(%rsp),%rdi
  4019e7:	e8 64 f2 ff ff       	callq  400c50 <__memcpy_chk@plt>
  4019ec:	48 01 5d 08          	add    %rbx,0x8(%rbp)
  4019f0:	44 29 65 04          	sub    %r12d,0x4(%rbp)
  4019f4:	44 89 e0             	mov    %r12d,%eax
  4019f7:	41 83 fc 01          	cmp    $0x1,%r12d
  4019fb:	75 12                	jne    401a0f <rio_readlineb+0xaf>
  4019fd:	0f b6 44 24 1f       	movzbl 0x1f(%rsp),%eax
  401a02:	41 88 07             	mov    %al,(%r15)
  401a05:	49 83 c7 01          	add    $0x1,%r15
  401a09:	3c 0a                	cmp    $0xa,%al
  401a0b:	75 1d                	jne    401a2a <rio_readlineb+0xca>
  401a0d:	eb 26                	jmp    401a35 <rio_readlineb+0xd5>
  401a0f:	4c 89 f2             	mov    %r14,%rdx
  401a12:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401a19:	85 c0                	test   %eax,%eax
  401a1b:	75 1f                	jne    401a3c <rio_readlineb+0xdc>
  401a1d:	b9 00 00 00 00       	mov    $0x0,%ecx
  401a22:	48 83 fa 01          	cmp    $0x1,%rdx
  401a26:	75 0d                	jne    401a35 <rio_readlineb+0xd5>
  401a28:	eb 12                	jmp    401a3c <rio_readlineb+0xdc>
  401a2a:	49 83 c6 01          	add    $0x1,%r14
  401a2e:	4c 3b 74 24 08       	cmp    0x8(%rsp),%r14
  401a33:	75 8c                	jne    4019c1 <rio_readlineb+0x61>
  401a35:	41 c6 07 00          	movb   $0x0,(%r15)
  401a39:	4c 89 f1             	mov    %r14,%rcx
  401a3c:	48 89 c8             	mov    %rcx,%rax
  401a3f:	48 83 c4 28          	add    $0x28,%rsp
  401a43:	5b                   	pop    %rbx
  401a44:	5d                   	pop    %rbp
  401a45:	41 5c                	pop    %r12
  401a47:	41 5d                	pop    %r13
  401a49:	41 5e                	pop    %r14
  401a4b:	41 5f                	pop    %r15
  401a4d:	c3                   	retq   
  401a4e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401a55:	eb 05                	jmp    401a5c <rio_readlineb+0xfc>
  401a57:	b8 00 00 00 00       	mov    $0x0,%eax
  401a5c:	4c 89 f2             	mov    %r14,%rdx
  401a5f:	eb b1                	jmp    401a12 <rio_readlineb+0xb2>
  401a61:	48 8b 45 08          	mov    0x8(%rbp),%rax
  401a65:	0f b6 00             	movzbl (%rax),%eax
  401a68:	88 44 24 1f          	mov    %al,0x1f(%rsp)
  401a6c:	48 83 45 08 01       	addq   $0x1,0x8(%rbp)
  401a71:	83 6d 04 01          	subl   $0x1,0x4(%rbp)
  401a75:	eb 86                	jmp    4019fd <rio_readlineb+0x9d>

0000000000401a77 <sigalrm_handler>:
  401a77:	48 83 ec 08          	sub    $0x8,%rsp
  401a7b:	b9 00 00 00 00       	mov    $0x0,%ecx
  401a80:	ba a8 2d 40 00       	mov    $0x402da8,%edx
  401a85:	be 01 00 00 00       	mov    $0x1,%esi
  401a8a:	48 8b 3d 7f 3b 20 00 	mov    0x203b7f(%rip),%rdi        # 605610 <stderr@@GLIBC_2.2.5>
  401a91:	b8 00 00 00 00       	mov    $0x0,%eax
  401a96:	e8 45 f2 ff ff       	callq  400ce0 <__fprintf_chk@plt>
  401a9b:	bf 01 00 00 00       	mov    $0x1,%edi
  401aa0:	e8 1b f2 ff ff       	callq  400cc0 <exit@plt>

0000000000401aa5 <submitr>:
  401aa5:	41 57                	push   %r15
  401aa7:	41 56                	push   %r14
  401aa9:	41 55                	push   %r13
  401aab:	41 54                	push   %r12
  401aad:	55                   	push   %rbp
  401aae:	53                   	push   %rbx
  401aaf:	48 81 ec 88 a0 00 00 	sub    $0xa088,%rsp
  401ab6:	49 89 ff             	mov    %rdi,%r15
  401ab9:	89 f5                	mov    %esi,%ebp
  401abb:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401ac0:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
  401ac5:	4c 89 44 24 38       	mov    %r8,0x38(%rsp)
  401aca:	4c 89 cb             	mov    %r9,%rbx
  401acd:	4c 8b b4 24 c0 a0 00 	mov    0xa0c0(%rsp),%r14
  401ad4:	00 
  401ad5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401adc:	00 00 
  401ade:	48 89 84 24 78 a0 00 	mov    %rax,0xa078(%rsp)
  401ae5:	00 
  401ae6:	31 c0                	xor    %eax,%eax
  401ae8:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%rsp)
  401aef:	00 
  401af0:	ba 00 00 00 00       	mov    $0x0,%edx
  401af5:	be 01 00 00 00       	mov    $0x1,%esi
  401afa:	bf 02 00 00 00       	mov    $0x2,%edi
  401aff:	e8 1c f2 ff ff       	callq  400d20 <socket@plt>
  401b04:	41 89 c5             	mov    %eax,%r13d
  401b07:	85 c0                	test   %eax,%eax
  401b09:	79 58                	jns    401b63 <submitr+0xbe>
  401b0b:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401b12:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  401b19:	43 
  401b1a:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  401b21:	6e 
  401b22:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  401b29:	6e 
  401b2a:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  401b31:	65 
  401b32:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  401b39:	20 
  401b3a:	41 c7 46 18 63 72 65 	movl   $0x61657263,0x18(%r14)
  401b41:	61 
  401b42:	41 c7 46 1c 74 65 20 	movl   $0x73206574,0x1c(%r14)
  401b49:	73 
  401b4a:	41 c7 46 20 6f 63 6b 	movl   $0x656b636f,0x20(%r14)
  401b51:	65 
  401b52:	66 41 c7 46 24 74 00 	movw   $0x74,0x24(%r14)
  401b59:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b5e:	e9 bc 07 00 00       	jmpq   40231f <submitr+0x87a>
  401b63:	4c 89 ff             	mov    %r15,%rdi
  401b66:	e8 c5 f0 ff ff       	callq  400c30 <gethostbyname@plt>
  401b6b:	48 85 c0             	test   %rax,%rax
  401b6e:	0f 85 85 00 00 00    	jne    401bf9 <submitr+0x154>
  401b74:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401b7b:	41 c7 46 04 72 3a 20 	movl   $0x44203a72,0x4(%r14)
  401b82:	44 
  401b83:	41 c7 46 08 4e 53 20 	movl   $0x6920534e,0x8(%r14)
  401b8a:	69 
  401b8b:	41 c7 46 0c 73 20 75 	movl   $0x6e752073,0xc(%r14)
  401b92:	6e 
  401b93:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  401b9a:	65 
  401b9b:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  401ba2:	20 
  401ba3:	41 c7 46 18 72 65 73 	movl   $0x6f736572,0x18(%r14)
  401baa:	6f 
  401bab:	41 c7 46 1c 6c 76 65 	movl   $0x2065766c,0x1c(%r14)
  401bb2:	20 
  401bb3:	41 c7 46 20 41 75 74 	movl   $0x6f747541,0x20(%r14)
  401bba:	6f 
  401bbb:	41 c7 46 24 6c 61 62 	movl   $0x2062616c,0x24(%r14)
  401bc2:	20 
  401bc3:	41 c7 46 28 73 65 72 	movl   $0x76726573,0x28(%r14)
  401bca:	76 
  401bcb:	41 c7 46 2c 65 72 20 	movl   $0x61207265,0x2c(%r14)
  401bd2:	61 
  401bd3:	41 c7 46 30 64 64 72 	movl   $0x65726464,0x30(%r14)
  401bda:	65 
  401bdb:	66 41 c7 46 34 73 73 	movw   $0x7373,0x34(%r14)
  401be2:	41 c6 46 36 00       	movb   $0x0,0x36(%r14)
  401be7:	44 89 ef             	mov    %r13d,%edi
  401bea:	e8 f1 ef ff ff       	callq  400be0 <close@plt>
  401bef:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401bf4:	e9 26 07 00 00       	jmpq   40231f <submitr+0x87a>
  401bf9:	48 c7 84 24 60 a0 00 	movq   $0x0,0xa060(%rsp)
  401c00:	00 00 00 00 00 
  401c05:	48 c7 84 24 68 a0 00 	movq   $0x0,0xa068(%rsp)
  401c0c:	00 00 00 00 00 
  401c11:	66 c7 84 24 60 a0 00 	movw   $0x2,0xa060(%rsp)
  401c18:	00 02 00 
  401c1b:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401c1f:	48 8b 40 18          	mov    0x18(%rax),%rax
  401c23:	48 8d bc 24 64 a0 00 	lea    0xa064(%rsp),%rdi
  401c2a:	00 
  401c2b:	b9 0c 00 00 00       	mov    $0xc,%ecx
  401c30:	48 8b 30             	mov    (%rax),%rsi
  401c33:	e8 08 f0 ff ff       	callq  400c40 <__memmove_chk@plt>
  401c38:	66 c1 cd 08          	ror    $0x8,%bp
  401c3c:	66 89 ac 24 62 a0 00 	mov    %bp,0xa062(%rsp)
  401c43:	00 
  401c44:	ba 10 00 00 00       	mov    $0x10,%edx
  401c49:	48 8d b4 24 60 a0 00 	lea    0xa060(%rsp),%rsi
  401c50:	00 
  401c51:	44 89 ef             	mov    %r13d,%edi
  401c54:	e8 77 f0 ff ff       	callq  400cd0 <connect@plt>
  401c59:	85 c0                	test   %eax,%eax
  401c5b:	79 75                	jns    401cd2 <submitr+0x22d>
  401c5d:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401c64:	41 c7 46 04 72 3a 20 	movl   $0x55203a72,0x4(%r14)
  401c6b:	55 
  401c6c:	41 c7 46 08 6e 61 62 	movl   $0x6c62616e,0x8(%r14)
  401c73:	6c 
  401c74:	41 c7 46 0c 65 20 74 	movl   $0x6f742065,0xc(%r14)
  401c7b:	6f 
  401c7c:	41 c7 46 10 20 63 6f 	movl   $0x6e6f6320,0x10(%r14)
  401c83:	6e 
  401c84:	41 c7 46 14 6e 65 63 	movl   $0x7463656e,0x14(%r14)
  401c8b:	74 
  401c8c:	41 c7 46 18 20 74 6f 	movl   $0x206f7420,0x18(%r14)
  401c93:	20 
  401c94:	41 c7 46 1c 74 68 65 	movl   $0x20656874,0x1c(%r14)
  401c9b:	20 
  401c9c:	41 c7 46 20 41 75 74 	movl   $0x6f747541,0x20(%r14)
  401ca3:	6f 
  401ca4:	41 c7 46 24 6c 61 62 	movl   $0x2062616c,0x24(%r14)
  401cab:	20 
  401cac:	41 c7 46 28 73 65 72 	movl   $0x76726573,0x28(%r14)
  401cb3:	76 
  401cb4:	66 41 c7 46 2c 65 72 	movw   $0x7265,0x2c(%r14)
  401cbb:	41 c6 46 2e 00       	movb   $0x0,0x2e(%r14)
  401cc0:	44 89 ef             	mov    %r13d,%edi
  401cc3:	e8 18 ef ff ff       	callq  400be0 <close@plt>
  401cc8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ccd:	e9 4d 06 00 00       	jmpq   40231f <submitr+0x87a>
  401cd2:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401cd9:	48 89 df             	mov    %rbx,%rdi
  401cdc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ce1:	48 89 d1             	mov    %rdx,%rcx
  401ce4:	f2 ae                	repnz scas %es:(%rdi),%al
  401ce6:	48 89 ce             	mov    %rcx,%rsi
  401ce9:	48 f7 d6             	not    %rsi
  401cec:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  401cf1:	48 89 d1             	mov    %rdx,%rcx
  401cf4:	f2 ae                	repnz scas %es:(%rdi),%al
  401cf6:	49 89 c8             	mov    %rcx,%r8
  401cf9:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  401cfe:	48 89 d1             	mov    %rdx,%rcx
  401d01:	f2 ae                	repnz scas %es:(%rdi),%al
  401d03:	49 89 c9             	mov    %rcx,%r9
  401d06:	49 f7 d1             	not    %r9
  401d09:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  401d0e:	48 89 d1             	mov    %rdx,%rcx
  401d11:	f2 ae                	repnz scas %es:(%rdi),%al
  401d13:	4d 29 c1             	sub    %r8,%r9
  401d16:	49 29 c9             	sub    %rcx,%r9
  401d19:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  401d1e:	49 8d 44 01 7b       	lea    0x7b(%r9,%rax,1),%rax
  401d23:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401d29:	0f 86 81 00 00 00    	jbe    401db0 <submitr+0x30b>
  401d2f:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401d36:	41 c7 46 04 72 3a 20 	movl   $0x52203a72,0x4(%r14)
  401d3d:	52 
  401d3e:	41 c7 46 08 65 73 75 	movl   $0x6c757365,0x8(%r14)
  401d45:	6c 
  401d46:	41 c7 46 0c 74 20 73 	movl   $0x74732074,0xc(%r14)
  401d4d:	74 
  401d4e:	41 c7 46 10 72 69 6e 	movl   $0x676e6972,0x10(%r14)
  401d55:	67 
  401d56:	41 c7 46 14 20 74 6f 	movl   $0x6f6f7420,0x14(%r14)
  401d5d:	6f 
  401d5e:	41 c7 46 18 20 6c 61 	movl   $0x72616c20,0x18(%r14)
  401d65:	72 
  401d66:	41 c7 46 1c 67 65 2e 	movl   $0x202e6567,0x1c(%r14)
  401d6d:	20 
  401d6e:	41 c7 46 20 49 6e 63 	movl   $0x72636e49,0x20(%r14)
  401d75:	72 
  401d76:	41 c7 46 24 65 61 73 	movl   $0x65736165,0x24(%r14)
  401d7d:	65 
  401d7e:	41 c7 46 28 20 53 55 	movl   $0x42555320,0x28(%r14)
  401d85:	42 
  401d86:	41 c7 46 2c 4d 49 54 	movl   $0x5254494d,0x2c(%r14)
  401d8d:	52 
  401d8e:	41 c7 46 30 5f 4d 41 	movl   $0x58414d5f,0x30(%r14)
  401d95:	58 
  401d96:	41 c7 46 34 42 55 46 	movl   $0x465542,0x34(%r14)
  401d9d:	00 
  401d9e:	44 89 ef             	mov    %r13d,%edi
  401da1:	e8 3a ee ff ff       	callq  400be0 <close@plt>
  401da6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401dab:	e9 6f 05 00 00       	jmpq   40231f <submitr+0x87a>
  401db0:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
  401db7:	00 
  401db8:	b9 00 04 00 00       	mov    $0x400,%ecx
  401dbd:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc2:	48 89 d7             	mov    %rdx,%rdi
  401dc5:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401dc8:	48 89 df             	mov    %rbx,%rdi
  401dcb:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401dd2:	f2 ae                	repnz scas %es:(%rdi),%al
  401dd4:	48 f7 d1             	not    %rcx
  401dd7:	48 83 e9 01          	sub    $0x1,%rcx
  401ddb:	85 c9                	test   %ecx,%ecx
  401ddd:	0f 84 55 05 00 00    	je     402338 <submitr+0x893>
  401de3:	83 e9 01             	sub    $0x1,%ecx
  401de6:	4c 8d 64 0b 01       	lea    0x1(%rbx,%rcx,1),%r12
  401deb:	48 89 d5             	mov    %rdx,%rbp
  401dee:	44 0f b6 03          	movzbl (%rbx),%r8d
  401df2:	41 80 f8 2a          	cmp    $0x2a,%r8b
  401df6:	74 2a                	je     401e22 <submitr+0x37d>
  401df8:	41 80 f8 2d          	cmp    $0x2d,%r8b
  401dfc:	74 24                	je     401e22 <submitr+0x37d>
  401dfe:	41 80 f8 2e          	cmp    $0x2e,%r8b
  401e02:	74 1e                	je     401e22 <submitr+0x37d>
  401e04:	41 80 f8 5f          	cmp    $0x5f,%r8b
  401e08:	74 18                	je     401e22 <submitr+0x37d>
  401e0a:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  401e0e:	3c 09                	cmp    $0x9,%al
  401e10:	76 10                	jbe    401e22 <submitr+0x37d>
  401e12:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  401e16:	3c 19                	cmp    $0x19,%al
  401e18:	76 08                	jbe    401e22 <submitr+0x37d>
  401e1a:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  401e1e:	3c 19                	cmp    $0x19,%al
  401e20:	77 0a                	ja     401e2c <submitr+0x387>
  401e22:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  401e26:	48 83 c5 01          	add    $0x1,%rbp
  401e2a:	eb 68                	jmp    401e94 <submitr+0x3ef>
  401e2c:	41 80 f8 20          	cmp    $0x20,%r8b
  401e30:	75 0a                	jne    401e3c <submitr+0x397>
  401e32:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401e36:	48 83 c5 01          	add    $0x1,%rbp
  401e3a:	eb 58                	jmp    401e94 <submitr+0x3ef>
  401e3c:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  401e40:	3c 5f                	cmp    $0x5f,%al
  401e42:	76 06                	jbe    401e4a <submitr+0x3a5>
  401e44:	41 80 f8 09          	cmp    $0x9,%r8b
  401e48:	75 5c                	jne    401ea6 <submitr+0x401>
  401e4a:	45 0f b6 c0          	movzbl %r8b,%r8d
  401e4e:	b9 60 2e 40 00       	mov    $0x402e60,%ecx
  401e53:	ba 08 00 00 00       	mov    $0x8,%edx
  401e58:	be 01 00 00 00       	mov    $0x1,%esi
  401e5d:	48 8d bc 24 70 a0 00 	lea    0xa070(%rsp),%rdi
  401e64:	00 
  401e65:	b8 00 00 00 00       	mov    $0x0,%eax
  401e6a:	e8 a1 ee ff ff       	callq  400d10 <__sprintf_chk@plt>
  401e6f:	0f b6 84 24 70 a0 00 	movzbl 0xa070(%rsp),%eax
  401e76:	00 
  401e77:	88 45 00             	mov    %al,0x0(%rbp)
  401e7a:	0f b6 84 24 71 a0 00 	movzbl 0xa071(%rsp),%eax
  401e81:	00 
  401e82:	88 45 01             	mov    %al,0x1(%rbp)
  401e85:	0f b6 84 24 72 a0 00 	movzbl 0xa072(%rsp),%eax
  401e8c:	00 
  401e8d:	88 45 02             	mov    %al,0x2(%rbp)
  401e90:	48 83 c5 03          	add    $0x3,%rbp
  401e94:	48 83 c3 01          	add    $0x1,%rbx
  401e98:	4c 39 e3             	cmp    %r12,%rbx
  401e9b:	0f 85 4d ff ff ff    	jne    401dee <submitr+0x349>
  401ea1:	e9 92 04 00 00       	jmpq   402338 <submitr+0x893>
  401ea6:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401ead:	41 c7 46 04 72 3a 20 	movl   $0x52203a72,0x4(%r14)
  401eb4:	52 
  401eb5:	41 c7 46 08 65 73 75 	movl   $0x6c757365,0x8(%r14)
  401ebc:	6c 
  401ebd:	41 c7 46 0c 74 20 73 	movl   $0x74732074,0xc(%r14)
  401ec4:	74 
  401ec5:	41 c7 46 10 72 69 6e 	movl   $0x676e6972,0x10(%r14)
  401ecc:	67 
  401ecd:	41 c7 46 14 20 63 6f 	movl   $0x6e6f6320,0x14(%r14)
  401ed4:	6e 
  401ed5:	41 c7 46 18 74 61 69 	movl   $0x6e696174,0x18(%r14)
  401edc:	6e 
  401edd:	41 c7 46 1c 73 20 61 	movl   $0x6e612073,0x1c(%r14)
  401ee4:	6e 
  401ee5:	41 c7 46 20 20 69 6c 	movl   $0x6c6c6920,0x20(%r14)
  401eec:	6c 
  401eed:	41 c7 46 24 65 67 61 	movl   $0x6c616765,0x24(%r14)
  401ef4:	6c 
  401ef5:	41 c7 46 28 20 6f 72 	movl   $0x20726f20,0x28(%r14)
  401efc:	20 
  401efd:	41 c7 46 2c 75 6e 70 	movl   $0x72706e75,0x2c(%r14)
  401f04:	72 
  401f05:	41 c7 46 30 69 6e 74 	movl   $0x61746e69,0x30(%r14)
  401f0c:	61 
  401f0d:	41 c7 46 34 62 6c 65 	movl   $0x20656c62,0x34(%r14)
  401f14:	20 
  401f15:	41 c7 46 38 63 68 61 	movl   $0x72616863,0x38(%r14)
  401f1c:	72 
  401f1d:	41 c7 46 3c 61 63 74 	movl   $0x65746361,0x3c(%r14)
  401f24:	65 
  401f25:	66 41 c7 46 40 72 2e 	movw   $0x2e72,0x40(%r14)
  401f2c:	41 c6 46 42 00       	movb   $0x0,0x42(%r14)
  401f31:	44 89 ef             	mov    %r13d,%edi
  401f34:	e8 a7 ec ff ff       	callq  400be0 <close@plt>
  401f39:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f3e:	e9 dc 03 00 00       	jmpq   40231f <submitr+0x87a>
  401f43:	48 89 da             	mov    %rbx,%rdx
  401f46:	48 89 ee             	mov    %rbp,%rsi
  401f49:	44 89 ef             	mov    %r13d,%edi
  401f4c:	e8 5f ec ff ff       	callq  400bb0 <write@plt>
  401f51:	48 85 c0             	test   %rax,%rax
  401f54:	7f 11                	jg     401f67 <submitr+0x4c2>
  401f56:	e8 25 ec ff ff       	callq  400b80 <__errno_location@plt>
  401f5b:	83 38 04             	cmpl   $0x4,(%rax)
  401f5e:	66 90                	xchg   %ax,%ax
  401f60:	75 12                	jne    401f74 <submitr+0x4cf>
  401f62:	b8 00 00 00 00       	mov    $0x0,%eax
  401f67:	48 01 c5             	add    %rax,%rbp
  401f6a:	48 29 c3             	sub    %rax,%rbx
  401f6d:	75 d4                	jne    401f43 <submitr+0x49e>
  401f6f:	4d 85 e4             	test   %r12,%r12
  401f72:	79 79                	jns    401fed <submitr+0x548>
  401f74:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401f7b:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  401f82:	43 
  401f83:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  401f8a:	6e 
  401f8b:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  401f92:	6e 
  401f93:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  401f9a:	65 
  401f9b:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  401fa2:	20 
  401fa3:	41 c7 46 18 77 72 69 	movl   $0x74697277,0x18(%r14)
  401faa:	74 
  401fab:	41 c7 46 1c 65 20 74 	movl   $0x6f742065,0x1c(%r14)
  401fb2:	6f 
  401fb3:	41 c7 46 20 20 74 68 	movl   $0x65687420,0x20(%r14)
  401fba:	65 
  401fbb:	41 c7 46 24 20 41 75 	movl   $0x74754120,0x24(%r14)
  401fc2:	74 
  401fc3:	41 c7 46 28 6f 6c 61 	movl   $0x62616c6f,0x28(%r14)
  401fca:	62 
  401fcb:	41 c7 46 2c 20 73 65 	movl   $0x72657320,0x2c(%r14)
  401fd2:	72 
  401fd3:	41 c7 46 30 76 65 72 	movl   $0x726576,0x30(%r14)
  401fda:	00 
  401fdb:	44 89 ef             	mov    %r13d,%edi
  401fde:	e8 fd eb ff ff       	callq  400be0 <close@plt>
  401fe3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401fe8:	e9 32 03 00 00       	jmpq   40231f <submitr+0x87a>
  401fed:	44 89 6c 24 50       	mov    %r13d,0x50(%rsp)
  401ff2:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
  401ff9:	00 
  401ffa:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
  401fff:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  402004:	ba 00 20 00 00       	mov    $0x2000,%edx
  402009:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
  402010:	00 
  402011:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  402016:	e8 45 f9 ff ff       	callq  401960 <rio_readlineb>
  40201b:	48 85 c0             	test   %rax,%rax
  40201e:	0f 8f 90 00 00 00    	jg     4020b4 <submitr+0x60f>
  402024:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  40202b:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  402032:	43 
  402033:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  40203a:	6e 
  40203b:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  402042:	6e 
  402043:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  40204a:	65 
  40204b:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  402052:	20 
  402053:	41 c7 46 18 72 65 61 	movl   $0x64616572,0x18(%r14)
  40205a:	64 
  40205b:	41 c7 46 1c 20 66 69 	movl   $0x72696620,0x1c(%r14)
  402062:	72 
  402063:	41 c7 46 20 73 74 20 	movl   $0x68207473,0x20(%r14)
  40206a:	68 
  40206b:	41 c7 46 24 65 61 64 	movl   $0x65646165,0x24(%r14)
  402072:	65 
  402073:	41 c7 46 28 72 20 66 	movl   $0x72662072,0x28(%r14)
  40207a:	72 
  40207b:	41 c7 46 2c 6f 6d 20 	movl   $0x41206d6f,0x2c(%r14)
  402082:	41 
  402083:	41 c7 46 30 75 74 6f 	movl   $0x6c6f7475,0x30(%r14)
  40208a:	6c 
  40208b:	41 c7 46 34 61 62 20 	movl   $0x73206261,0x34(%r14)
  402092:	73 
  402093:	41 c7 46 38 65 72 76 	movl   $0x65767265,0x38(%r14)
  40209a:	65 
  40209b:	66 41 c7 46 3c 72 00 	movw   $0x72,0x3c(%r14)
  4020a2:	44 89 ef             	mov    %r13d,%edi
  4020a5:	e8 36 eb ff ff       	callq  400be0 <close@plt>
  4020aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020af:	e9 6b 02 00 00       	jmpq   40231f <submitr+0x87a>
  4020b4:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
  4020bb:	00 
  4020bc:	48 8d 4c 24 4c       	lea    0x4c(%rsp),%rcx
  4020c1:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
  4020c8:	00 
  4020c9:	be 67 2e 40 00       	mov    $0x402e67,%esi
  4020ce:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
  4020d5:	00 
  4020d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4020db:	e8 a0 eb ff ff       	callq  400c80 <__isoc99_sscanf@plt>
  4020e0:	e9 a6 00 00 00       	jmpq   40218b <submitr+0x6e6>
  4020e5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4020ea:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
  4020f1:	00 
  4020f2:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  4020f7:	e8 64 f8 ff ff       	callq  401960 <rio_readlineb>
  4020fc:	48 85 c0             	test   %rax,%rax
  4020ff:	0f 8f 86 00 00 00    	jg     40218b <submitr+0x6e6>
  402105:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  40210c:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  402113:	43 
  402114:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  40211b:	6e 
  40211c:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  402123:	6e 
  402124:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  40212b:	65 
  40212c:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  402133:	20 
  402134:	41 c7 46 18 72 65 61 	movl   $0x64616572,0x18(%r14)
  40213b:	64 
  40213c:	41 c7 46 1c 20 68 65 	movl   $0x61656820,0x1c(%r14)
  402143:	61 
  402144:	41 c7 46 20 64 65 72 	movl   $0x73726564,0x20(%r14)
  40214b:	73 
  40214c:	41 c7 46 24 20 66 72 	movl   $0x6f726620,0x24(%r14)
  402153:	6f 
  402154:	41 c7 46 28 6d 20 41 	movl   $0x7541206d,0x28(%r14)
  40215b:	75 
  40215c:	41 c7 46 2c 74 6f 6c 	movl   $0x616c6f74,0x2c(%r14)
  402163:	61 
  402164:	41 c7 46 30 62 20 73 	movl   $0x65732062,0x30(%r14)
  40216b:	65 
  40216c:	41 c7 46 34 72 76 65 	movl   $0x72657672,0x34(%r14)
  402173:	72 
  402174:	41 c6 46 38 00       	movb   $0x0,0x38(%r14)
  402179:	44 89 ef             	mov    %r13d,%edi
  40217c:	e8 5f ea ff ff       	callq  400be0 <close@plt>
  402181:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402186:	e9 94 01 00 00       	jmpq   40231f <submitr+0x87a>
  40218b:	80 bc 24 60 20 00 00 	cmpb   $0xd,0x2060(%rsp)
  402192:	0d 
  402193:	0f 85 4c ff ff ff    	jne    4020e5 <submitr+0x640>
  402199:	80 bc 24 61 20 00 00 	cmpb   $0xa,0x2061(%rsp)
  4021a0:	0a 
  4021a1:	0f 85 3e ff ff ff    	jne    4020e5 <submitr+0x640>
  4021a7:	80 bc 24 62 20 00 00 	cmpb   $0x0,0x2062(%rsp)
  4021ae:	00 
  4021af:	0f 85 30 ff ff ff    	jne    4020e5 <submitr+0x640>
  4021b5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4021ba:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
  4021c1:	00 
  4021c2:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  4021c7:	e8 94 f7 ff ff       	callq  401960 <rio_readlineb>
  4021cc:	48 85 c0             	test   %rax,%rax
  4021cf:	0f 8f 91 00 00 00    	jg     402266 <submitr+0x7c1>
  4021d5:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  4021dc:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  4021e3:	43 
  4021e4:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  4021eb:	6e 
  4021ec:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  4021f3:	6e 
  4021f4:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  4021fb:	65 
  4021fc:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  402203:	20 
  402204:	41 c7 46 18 72 65 61 	movl   $0x64616572,0x18(%r14)
  40220b:	64 
  40220c:	41 c7 46 1c 20 73 74 	movl   $0x61747320,0x1c(%r14)
  402213:	61 
  402214:	41 c7 46 20 74 75 73 	movl   $0x20737574,0x20(%r14)
  40221b:	20 
  40221c:	41 c7 46 24 6d 65 73 	movl   $0x7373656d,0x24(%r14)
  402223:	73 
  402224:	41 c7 46 28 61 67 65 	movl   $0x20656761,0x28(%r14)
  40222b:	20 
  40222c:	41 c7 46 2c 66 72 6f 	movl   $0x6d6f7266,0x2c(%r14)
  402233:	6d 
  402234:	41 c7 46 30 20 41 75 	movl   $0x74754120,0x30(%r14)
  40223b:	74 
  40223c:	41 c7 46 34 6f 6c 61 	movl   $0x62616c6f,0x34(%r14)
  402243:	62 
  402244:	41 c7 46 38 20 73 65 	movl   $0x72657320,0x38(%r14)
  40224b:	72 
  40224c:	41 c7 46 3c 76 65 72 	movl   $0x726576,0x3c(%r14)
  402253:	00 
  402254:	44 89 ef             	mov    %r13d,%edi
  402257:	e8 84 e9 ff ff       	callq  400be0 <close@plt>
  40225c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402261:	e9 b9 00 00 00       	jmpq   40231f <submitr+0x87a>
  402266:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
  40226b:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402272:	74 35                	je     4022a9 <submitr+0x804>
  402274:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
  40227b:	00 
  40227c:	b9 d0 2d 40 00       	mov    $0x402dd0,%ecx
  402281:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402288:	be 01 00 00 00       	mov    $0x1,%esi
  40228d:	4c 89 f7             	mov    %r14,%rdi
  402290:	b8 00 00 00 00       	mov    $0x0,%eax
  402295:	e8 76 ea ff ff       	callq  400d10 <__sprintf_chk@plt>
  40229a:	44 89 ef             	mov    %r13d,%edi
  40229d:	e8 3e e9 ff ff       	callq  400be0 <close@plt>
  4022a2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022a7:	eb 76                	jmp    40231f <submitr+0x87a>
  4022a9:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
  4022b0:	00 
  4022b1:	4c 89 f7             	mov    %r14,%rdi
  4022b4:	e8 d7 e8 ff ff       	callq  400b90 <strcpy@plt>
  4022b9:	44 89 ef             	mov    %r13d,%edi
  4022bc:	e8 1f e9 ff ff       	callq  400be0 <close@plt>
  4022c1:	41 0f b6 16          	movzbl (%r14),%edx
  4022c5:	83 ea 4f             	sub    $0x4f,%edx
  4022c8:	75 15                	jne    4022df <submitr+0x83a>
  4022ca:	41 80 7e 01 4b       	cmpb   $0x4b,0x1(%r14)
  4022cf:	75 0e                	jne    4022df <submitr+0x83a>
  4022d1:	41 80 7e 02 0a       	cmpb   $0xa,0x2(%r14)
  4022d6:	75 07                	jne    4022df <submitr+0x83a>
  4022d8:	41 80 7e 03 00       	cmpb   $0x0,0x3(%r14)
  4022dd:	74 3b                	je     40231a <submitr+0x875>
  4022df:	bf 78 2e 40 00       	mov    $0x402e78,%edi
  4022e4:	b9 05 00 00 00       	mov    $0x5,%ecx
  4022e9:	4c 89 f6             	mov    %r14,%rsi
  4022ec:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4022ee:	40 0f 97 c6          	seta   %sil
  4022f2:	0f 92 c1             	setb   %cl
  4022f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4022fa:	40 38 ce             	cmp    %cl,%sil
  4022fd:	74 20                	je     40231f <submitr+0x87a>
  4022ff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402304:	85 d2                	test   %edx,%edx
  402306:	75 17                	jne    40231f <submitr+0x87a>
  402308:	41 80 7e 01 4b       	cmpb   $0x4b,0x1(%r14)
  40230d:	75 10                	jne    40231f <submitr+0x87a>
  40230f:	41 80 7e 02 01       	cmpb   $0x1,0x2(%r14)
  402314:	19 c0                	sbb    %eax,%eax
  402316:	f7 d0                	not    %eax
  402318:	eb 05                	jmp    40231f <submitr+0x87a>
  40231a:	b8 00 00 00 00       	mov    $0x0,%eax
  40231f:	48 8b 94 24 78 a0 00 	mov    0xa078(%rsp),%rdx
  402326:	00 
  402327:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  40232e:	00 00 
  402330:	0f 84 83 00 00 00    	je     4023b9 <submitr+0x914>
  402336:	eb 7c                	jmp    4023b4 <submitr+0x90f>
  402338:	4c 89 7c 24 10       	mov    %r15,0x10(%rsp)
  40233d:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402344:	00 
  402345:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40234a:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  40234f:	48 89 0c 24          	mov    %rcx,(%rsp)
  402353:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  402358:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  40235d:	b9 00 2e 40 00       	mov    $0x402e00,%ecx
  402362:	ba 00 20 00 00       	mov    $0x2000,%edx
  402367:	be 01 00 00 00       	mov    $0x1,%esi
  40236c:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
  402373:	00 
  402374:	b8 00 00 00 00       	mov    $0x0,%eax
  402379:	e8 92 e9 ff ff       	callq  400d10 <__sprintf_chk@plt>
  40237e:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
  402385:	00 
  402386:	b8 00 00 00 00       	mov    $0x0,%eax
  40238b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402392:	f2 ae                	repnz scas %es:(%rdi),%al
  402394:	48 f7 d1             	not    %rcx
  402397:	4c 8d 61 ff          	lea    -0x1(%rcx),%r12
  40239b:	4c 89 e3             	mov    %r12,%rbx
  40239e:	48 8d ac 24 60 20 00 	lea    0x2060(%rsp),%rbp
  4023a5:	00 
  4023a6:	4d 85 e4             	test   %r12,%r12
  4023a9:	0f 85 94 fb ff ff    	jne    401f43 <submitr+0x49e>
  4023af:	e9 39 fc ff ff       	jmpq   401fed <submitr+0x548>
  4023b4:	e8 07 e8 ff ff       	callq  400bc0 <__stack_chk_fail@plt>
  4023b9:	48 81 c4 88 a0 00 00 	add    $0xa088,%rsp
  4023c0:	5b                   	pop    %rbx
  4023c1:	5d                   	pop    %rbp
  4023c2:	41 5c                	pop    %r12
  4023c4:	41 5d                	pop    %r13
  4023c6:	41 5e                	pop    %r14
  4023c8:	41 5f                	pop    %r15
  4023ca:	c3                   	retq   

00000000004023cb <init_timeout>:
  4023cb:	53                   	push   %rbx
  4023cc:	89 fb                	mov    %edi,%ebx
  4023ce:	85 ff                	test   %edi,%edi
  4023d0:	74 1e                	je     4023f0 <init_timeout+0x25>
  4023d2:	be 77 1a 40 00       	mov    $0x401a77,%esi
  4023d7:	bf 0e 00 00 00       	mov    $0xe,%edi
  4023dc:	e8 3f e8 ff ff       	callq  400c20 <signal@plt>
  4023e1:	85 db                	test   %ebx,%ebx
  4023e3:	bf 00 00 00 00       	mov    $0x0,%edi
  4023e8:	0f 49 fb             	cmovns %ebx,%edi
  4023eb:	e8 e0 e7 ff ff       	callq  400bd0 <alarm@plt>
  4023f0:	5b                   	pop    %rbx
  4023f1:	c3                   	retq   

00000000004023f2 <init_driver>:
  4023f2:	55                   	push   %rbp
  4023f3:	53                   	push   %rbx
  4023f4:	48 83 ec 28          	sub    $0x28,%rsp
  4023f8:	48 89 fd             	mov    %rdi,%rbp
  4023fb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402402:	00 00 
  402404:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402409:	31 c0                	xor    %eax,%eax
  40240b:	be 01 00 00 00       	mov    $0x1,%esi
  402410:	bf 0d 00 00 00       	mov    $0xd,%edi
  402415:	e8 06 e8 ff ff       	callq  400c20 <signal@plt>
  40241a:	be 01 00 00 00       	mov    $0x1,%esi
  40241f:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402424:	e8 f7 e7 ff ff       	callq  400c20 <signal@plt>
  402429:	be 01 00 00 00       	mov    $0x1,%esi
  40242e:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402433:	e8 e8 e7 ff ff       	callq  400c20 <signal@plt>
  402438:	ba 00 00 00 00       	mov    $0x0,%edx
  40243d:	be 01 00 00 00       	mov    $0x1,%esi
  402442:	bf 02 00 00 00       	mov    $0x2,%edi
  402447:	e8 d4 e8 ff ff       	callq  400d20 <socket@plt>
  40244c:	89 c3                	mov    %eax,%ebx
  40244e:	85 c0                	test   %eax,%eax
  402450:	79 4f                	jns    4024a1 <init_driver+0xaf>
  402452:	c7 45 00 45 72 72 6f 	movl   $0x6f727245,0x0(%rbp)
  402459:	c7 45 04 72 3a 20 43 	movl   $0x43203a72,0x4(%rbp)
  402460:	c7 45 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%rbp)
  402467:	c7 45 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%rbp)
  40246e:	c7 45 10 61 62 6c 65 	movl   $0x656c6261,0x10(%rbp)
  402475:	c7 45 14 20 74 6f 20 	movl   $0x206f7420,0x14(%rbp)
  40247c:	c7 45 18 63 72 65 61 	movl   $0x61657263,0x18(%rbp)
  402483:	c7 45 1c 74 65 20 73 	movl   $0x73206574,0x1c(%rbp)
  40248a:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402491:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402497:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40249c:	e9 28 01 00 00       	jmpq   4025c9 <init_driver+0x1d7>
  4024a1:	bf 8b 2c 40 00       	mov    $0x402c8b,%edi
  4024a6:	e8 85 e7 ff ff       	callq  400c30 <gethostbyname@plt>
  4024ab:	48 85 c0             	test   %rax,%rax
  4024ae:	75 68                	jne    402518 <init_driver+0x126>
  4024b0:	c7 45 00 45 72 72 6f 	movl   $0x6f727245,0x0(%rbp)
  4024b7:	c7 45 04 72 3a 20 44 	movl   $0x44203a72,0x4(%rbp)
  4024be:	c7 45 08 4e 53 20 69 	movl   $0x6920534e,0x8(%rbp)
  4024c5:	c7 45 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%rbp)
  4024cc:	c7 45 10 61 62 6c 65 	movl   $0x656c6261,0x10(%rbp)
  4024d3:	c7 45 14 20 74 6f 20 	movl   $0x206f7420,0x14(%rbp)
  4024da:	c7 45 18 72 65 73 6f 	movl   $0x6f736572,0x18(%rbp)
  4024e1:	c7 45 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%rbp)
  4024e8:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  4024ef:	c7 45 24 65 72 20 61 	movl   $0x61207265,0x24(%rbp)
  4024f6:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4024fd:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402503:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402507:	89 df                	mov    %ebx,%edi
  402509:	e8 d2 e6 ff ff       	callq  400be0 <close@plt>
  40250e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402513:	e9 b1 00 00 00       	jmpq   4025c9 <init_driver+0x1d7>
  402518:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  40251f:	00 
  402520:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402527:	00 00 
  402529:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  40252f:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402533:	48 8b 40 18          	mov    0x18(%rax),%rax
  402537:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  40253c:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402541:	48 8b 30             	mov    (%rax),%rsi
  402544:	e8 f7 e6 ff ff       	callq  400c40 <__memmove_chk@plt>
  402549:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  402550:	ba 10 00 00 00       	mov    $0x10,%edx
  402555:	48 89 e6             	mov    %rsp,%rsi
  402558:	89 df                	mov    %ebx,%edi
  40255a:	e8 71 e7 ff ff       	callq  400cd0 <connect@plt>
  40255f:	85 c0                	test   %eax,%eax
  402561:	79 50                	jns    4025b3 <init_driver+0x1c1>
  402563:	c7 45 00 45 72 72 6f 	movl   $0x6f727245,0x0(%rbp)
  40256a:	c7 45 04 72 3a 20 55 	movl   $0x55203a72,0x4(%rbp)
  402571:	c7 45 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%rbp)
  402578:	c7 45 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%rbp)
  40257f:	c7 45 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%rbp)
  402586:	c7 45 14 6e 65 63 74 	movl   $0x7463656e,0x14(%rbp)
  40258d:	c7 45 18 20 74 6f 20 	movl   $0x206f7420,0x18(%rbp)
  402594:	c7 45 1c 73 65 72 76 	movl   $0x76726573,0x1c(%rbp)
  40259b:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  4025a1:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  4025a5:	89 df                	mov    %ebx,%edi
  4025a7:	e8 34 e6 ff ff       	callq  400be0 <close@plt>
  4025ac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025b1:	eb 16                	jmp    4025c9 <init_driver+0x1d7>
  4025b3:	89 df                	mov    %ebx,%edi
  4025b5:	e8 26 e6 ff ff       	callq  400be0 <close@plt>
  4025ba:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4025c0:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4025c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4025c9:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  4025ce:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  4025d5:	00 00 
  4025d7:	74 05                	je     4025de <init_driver+0x1ec>
  4025d9:	e8 e2 e5 ff ff       	callq  400bc0 <__stack_chk_fail@plt>
  4025de:	48 83 c4 28          	add    $0x28,%rsp
  4025e2:	5b                   	pop    %rbx
  4025e3:	5d                   	pop    %rbp
  4025e4:	c3                   	retq   

00000000004025e5 <driver_post>:
  4025e5:	53                   	push   %rbx
  4025e6:	48 83 ec 10          	sub    $0x10,%rsp
  4025ea:	4c 89 cb             	mov    %r9,%rbx
  4025ed:	45 85 c0             	test   %r8d,%r8d
  4025f0:	74 27                	je     402619 <driver_post+0x34>
  4025f2:	48 89 ca             	mov    %rcx,%rdx
  4025f5:	be 7d 2e 40 00       	mov    $0x402e7d,%esi
  4025fa:	bf 01 00 00 00       	mov    $0x1,%edi
  4025ff:	b8 00 00 00 00       	mov    $0x0,%eax
  402604:	e8 87 e6 ff ff       	callq  400c90 <__printf_chk@plt>
  402609:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40260e:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402612:	b8 00 00 00 00       	mov    $0x0,%eax
  402617:	eb 39                	jmp    402652 <driver_post+0x6d>
  402619:	48 85 ff             	test   %rdi,%rdi
  40261c:	74 26                	je     402644 <driver_post+0x5f>
  40261e:	80 3f 00             	cmpb   $0x0,(%rdi)
  402621:	74 21                	je     402644 <driver_post+0x5f>
  402623:	4c 89 0c 24          	mov    %r9,(%rsp)
  402627:	49 89 c9             	mov    %rcx,%r9
  40262a:	49 89 d0             	mov    %rdx,%r8
  40262d:	48 89 f9             	mov    %rdi,%rcx
  402630:	48 89 f2             	mov    %rsi,%rdx
  402633:	be 50 00 00 00       	mov    $0x50,%esi
  402638:	bf 8b 2c 40 00       	mov    $0x402c8b,%edi
  40263d:	e8 63 f4 ff ff       	callq  401aa5 <submitr>
  402642:	eb 0e                	jmp    402652 <driver_post+0x6d>
  402644:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402649:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40264d:	b8 00 00 00 00       	mov    $0x0,%eax
  402652:	48 83 c4 10          	add    $0x10,%rsp
  402656:	5b                   	pop    %rbx
  402657:	c3                   	retq   
  402658:	90                   	nop
  402659:	90                   	nop
  40265a:	90                   	nop
  40265b:	90                   	nop
  40265c:	90                   	nop
  40265d:	90                   	nop
  40265e:	90                   	nop
  40265f:	90                   	nop

0000000000402660 <__libc_csu_init>:
  402660:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  402665:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  40266a:	48 8d 2d b3 17 20 00 	lea    0x2017b3(%rip),%rbp        # 603e24 <__init_array_end>
  402671:	4c 8d 25 ac 17 20 00 	lea    0x2017ac(%rip),%r12        # 603e24 <__init_array_end>
  402678:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  40267d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  402682:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  402687:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  40268c:	48 83 ec 38          	sub    $0x38,%rsp
  402690:	4c 29 e5             	sub    %r12,%rbp
  402693:	41 89 fd             	mov    %edi,%r13d
  402696:	49 89 f6             	mov    %rsi,%r14
  402699:	48 c1 fd 03          	sar    $0x3,%rbp
  40269d:	49 89 d7             	mov    %rdx,%r15
  4026a0:	e8 93 e4 ff ff       	callq  400b38 <_init>
  4026a5:	48 85 ed             	test   %rbp,%rbp
  4026a8:	74 1c                	je     4026c6 <__libc_csu_init+0x66>
  4026aa:	31 db                	xor    %ebx,%ebx
  4026ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4026b0:	4c 89 fa             	mov    %r15,%rdx
  4026b3:	4c 89 f6             	mov    %r14,%rsi
  4026b6:	44 89 ef             	mov    %r13d,%edi
  4026b9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4026bd:	48 83 c3 01          	add    $0x1,%rbx
  4026c1:	48 39 eb             	cmp    %rbp,%rbx
  4026c4:	75 ea                	jne    4026b0 <__libc_csu_init+0x50>
  4026c6:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  4026cb:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  4026d0:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  4026d5:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  4026da:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  4026df:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  4026e4:	48 83 c4 38          	add    $0x38,%rsp
  4026e8:	c3                   	retq   
  4026e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004026f0 <__libc_csu_fini>:
  4026f0:	f3 c3                	repz retq 
  4026f2:	90                   	nop
  4026f3:	90                   	nop
  4026f4:	90                   	nop
  4026f5:	90                   	nop
  4026f6:	90                   	nop
  4026f7:	90                   	nop
  4026f8:	90                   	nop
  4026f9:	90                   	nop
  4026fa:	90                   	nop
  4026fb:	90                   	nop
  4026fc:	90                   	nop
  4026fd:	90                   	nop
  4026fe:	90                   	nop
  4026ff:	90                   	nop

0000000000402700 <__do_global_ctors_aux>:
  402700:	55                   	push   %rbp
  402701:	48 89 e5             	mov    %rsp,%rbp
  402704:	53                   	push   %rbx
  402705:	48 83 ec 08          	sub    $0x8,%rsp
  402709:	48 8b 05 18 17 20 00 	mov    0x201718(%rip),%rax        # 603e28 <__CTOR_LIST__>
  402710:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  402714:	74 19                	je     40272f <__do_global_ctors_aux+0x2f>
  402716:	bb 28 3e 60 00       	mov    $0x603e28,%ebx
  40271b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402720:	48 83 eb 08          	sub    $0x8,%rbx
  402724:	ff d0                	callq  *%rax
  402726:	48 8b 03             	mov    (%rbx),%rax
  402729:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40272d:	75 f1                	jne    402720 <__do_global_ctors_aux+0x20>
  40272f:	48 83 c4 08          	add    $0x8,%rsp
  402733:	5b                   	pop    %rbx
  402734:	5d                   	pop    %rbp
  402735:	c3                   	retq   
  402736:	90                   	nop
  402737:	90                   	nop

Disassembly of section .fini:

0000000000402738 <_fini>:
  402738:	48 83 ec 08          	sub    $0x8,%rsp
  40273c:	e8 3f e6 ff ff       	callq  400d80 <__do_global_dtors_aux>
  402741:	48 83 c4 08          	add    $0x8,%rsp
  402745:	c3                   	retq   

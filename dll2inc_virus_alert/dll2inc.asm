; ref, https://board.flatassembler.net/topic.php?t=3911
; FASM 1.73.31, folder E:\FASM\INCLUDE
; edit FASMW.INI,
;   [Environment]
;   Include=E:\fasm\INCLUDE
; 2023-11-01, testing, msvcrt.inc is created, but 0 bytes of file size, why ??

;; original source code download from,
;https://board.flatassembler.net/topic.php?p=204766

format PE Console
entry start

include 'win32ax.inc'


include 'API\KERNEL32.INC'
include 'API\USER32.INC'
;include 'API\MSVCRT.INC'


; -------------------------------------------------
section '.idata' import data readable writeable
; -------------------------------------------------
library kernel32,'KERNEL32.DLL',\
	user32,'USER32.DLL',\
	msvcrt,'MSVCRT.DLL'

import msvcrt,\ 	     ; modified import, assembly ok, xiaolaba
       abort,'abort',\
       abs,'abs',\
       acos,'acos',\
       asctime,'asctime',\
       asin,'asin',\
       atan,'atan',\
       atan2,'atan2',\
       atexit,'atexit',\
       atof,'atof',\
       atoi,'atoi',\
       atol,'atol',\
       bsearch,'bsearch',\
       calloc,'calloc',\
       ceil,'ceil',\
       clearerr,'clearerr',\
       clock,'clock',\
       cos,'cos',\
       cosh,'cosh',\
       ctime,'ctime',\
       difftime,'difftime',\
       div_,'div',\
       exit,'exit',\
       exp,'exp',\
       fabs_,'fabs',\
       fclose,'fclose',\
       feof,'feof',\
       ferror,'ferror',\
       fflush,'fflush',\
       fgetc,'fgetc',\
       fgetpos,'fgetpos',\
       fgets,'fgets',\
       fgetwc,'fgetwc',\
       fgetws,'fgetws',\
       floor,'floor',\
       fmod,'fmod',\
       fopen,'fopen',\
       fprintf,'fprintf',\
       fputc,'fputc',\
       fputs,'fputs',\
       fputwc,'fputwc',\
       fputws,'fputws',\
       fread,'fread',\
       free,'free',\
       freopen,'freopen',\
       frexp,'frexp',\
       fscanf,'fscanf',\
       fseek,'fseek',\
       fsetpos,'fsetpos',\
       ftell,'ftell',\
       fwprintf,'fwprintf',\
       fwrite,'fwrite',\
       fwscanf,'fwscanf',\
       getc,'getc',\
       getchar,'getchar',\
       getenv,'getenv',\
       gets,'gets',\
       getwc,'getwc',\
       getwchar,'getwchar',\
       gmtime,'gmtime',\
       is_wctype,'is_wctype',\
       isalnum,'isalnum',\
       isalpha,'isalpha',\
       iscntrl,'iscntrl',\
       isdigit,'isdigit',\
       isgraph,'isgraph',\
       isleadbyte,'isleadbyte',\
       islower,'islower',\
       isprint,'isprint',\
       ispunct,'ispunct',\
       isspace,'isspace',\
       isupper,'isupper',\
       iswalnum,'iswalnum',\
       iswalpha,'iswalpha',\
       iswascii,'iswascii',\
       iswcntrl,'iswcntrl',\
       iswctype,'iswctype',\
       iswdigit,'iswdigit',\
       iswgraph,'iswgraph',\
       iswlower,'iswlower',\
       iswprint,'iswprint',\
       iswpunct,'iswpunct',\
       iswspace,'iswspace',\
       iswupper,'iswupper',\
       iswxdigit,'iswxdigit',\
       isxdigit,'isxdigit',\
       labs,'labs',\
       ldexp,'ldexp',\
       ldiv,'ldiv',\
       localeconv,'localeconv',\
       localtime,'localtime',\
       log,'log',\
       log10,'log10',\
       longjmp,'longjmp',\
       malloc,'malloc',\
       mblen,'mblen',\
       mbstowcs,'mbstowcs',\
       mbtowc,'mbtowc',\
       memchr,'memchr',\
       memcmp,'memcmp',\
       memcpy,'memcpy',\
       memmove,'memmove',\
       memset,'memset',\
       mktime,'mktime',\
       modf,'modf',\
       perror,'perror',\
       pow,'pow',\
       printf,'printf',\
       putc,'putc',\
       putchar,'putchar',\
       puts,'puts',\
       putwc,'putwc',\
       putwchar,'putwchar',\
       qsort,'qsort',\
       raise,'raise',\
       rand,'rand',\
       realloc,'realloc',\
       remove,'remove',\
       rename,'rename',\
       rewind,'rewind',\
       scanf,'scanf',\
       setbuf,'setbuf',\
       setlocale,'setlocale',\
       setvbuf,'setvbuf',\
       signal,'signal',\
       sin,'sin',\
       sinh,'sinh',\
       sprintf,'sprintf',\
       sqrt,'sqrt',\
       srand,'srand',\
       sscanf,'sscanf',\
       strcat,'strcat',\
       strchr,'strchr',\
       strcmp,'strcmp',\
       strcoll,'strcoll',\
       strcpy,'strcpy',\
       strcspn,'strcspn',\
       strerror,'strerror',\
       strftime,'strftime',\
       strlen,'strlen',\
       strncat,'strncat',\
       strncmp,'strncmp',\
       strncpy,'strncpy',\
       strpbrk,'strpbrk',\
       strrchr,'strrchr',\
       strspn,'strspn',\
       strstr,'strstr',\
       strtod,'strtod',\
       strtok,'strtok',\
       strtol,'strtol',\
       strtoul,'strtoul',\
       strxfrm,'strxfrm',\
       swprintf,'swprintf',\
       swscanf,'swscanf',\
       system,'system',\
       tan,'tan',\
       tanh,'tanh',\
       time,'time',\
       tmpfile,'tmpfile',\
       tmpnam,'tmpnam',\
       tolower,'tolower',\
       toupper,'toupper',\
       towlower,'towlower',\
       towupper,'towupper',\
       ungetc,'ungetc',\
       ungetwc,'ungetwc',\
       vfprintf,'vfprintf',\
       vfwprintf,'vfwprintf',\
       vprintf,'vprintf',\
       vsprintf,'vsprintf',\
       vswprintf,'vswprintf',\
       vwprintf,'vwprintf',\
       wcscat,'wcscat',\
       wcschr,'wcschr',\
       wcscmp,'wcscmp',\
       wcscoll,'wcscoll',\
       wcscpy,'wcscpy',\
       wcscspn,'wcscspn',\
       wcsftime,'wcsftime',\
       wcslen,'wcslen',\
       wcsncat,'wcsncat',\
       wcsncmp,'wcsncmp',\
       wcsncpy,'wcsncpy',\
       wcspbrk,'wcspbrk',\
       wcsrchr,'wcsrchr',\
       wcsspn,'wcsspn',\
       wcsstr,'wcsstr',\
       wcstod,'wcstod',\
       wcstok,'wcstok',\
       wcstol,'wcstol',\
       wcstombs,'wcstombs',\
       wcstoul,'wcstoul',\
       wcsxfrm,'wcsxfrm',\
       wctomb,'wctomb',\
       wprintf,'wprintf',\
       wscanf,'wscanf'
;;kernel32
;import ExitProcess,'ExitProcess'



struct IMAGE_DOS_HEADER
 e_magic	   dw	   ? 
 e_cblp 	   dw	   ? 
 e_cp		   dw	   ? 
 e_crlc 	   dw	   ? 
 e_cparhdr	   dw	   ? 
 e_minalloc	   dw	   ? 
 e_maxalloc	   dw	   ? 
 e_ss		   dw	   ? 
 e_sp		   dw	   ? 
 e_csum 	   dw	   ? 
 e_ip		   dw	   ? 
 e_cs		   dw	   ? 
 e_lfarlc	   dw	   ? 
 e_ovno 	   dw	   ? 
 e_res		   rw	   4 
 e_oemid	   dw	   ? 
 e_oeminfo	   dw	   ? 
 e_res2 	   rw	   10 
 e_lfanew	   dd	   ? 
ends

struct IMAGE_FILE_HEADER  
 Machine	       dw    ? 
 NumberOfSections      dw    ? 
 TimeDateStamp	       dd    ? 
 PointerToSymbolTable  dd    ? 
 NumberOfSymbols       dd    ? 
 SizeOfOptionalHeader  dw    ? 
 Characteristics       dw    ?		  
ends  

struct IMAGE_EXPORT_DIRECTORY
 Characteristics       dd  ?
 TimeDateStamp	       dd  ?
 MajorVersion	       dw  ?
 MinorVersion	       dw  ?
 nName		       dd  ?
 nBase		       dd  ?
 NumberOfFunctions     dd  ?
 NumberOfNames	       dd  ?
 AddressOfFunctions    dd  ?
 AddressOfNames        dd  ?
 AddressOfNameOrdinals dd  ?
ends

; -------------------------------------------------
section '.data' data readable writeable
; -------------------------------------------------
pbuf1		rb 0xff

pdllh		dd 0
pntheader	dd 0
poptheader	dd 0
pexport 	dd 0
pexportfcount	dd 0
pexportaddrname dd 0
pfname		rb 0xFF

poufwriteh	dd 0

infread 	rb 0xFF
oufwrite	rb 0xFF

args		rb 0xFF
arg0		dd 0

; -------------------------------------------------
section '.code' code readable executable
; -------------------------------------------------
start:
	; -------------------------------------------------
	; process command line
	; -------------------------------------------------
	invoke	GetCommandLine
	invoke	lstrcpy,args,eax

	; -------------------------------------------------
	; separate arguments into usable section
	; -------------------------------------------------
	  mov	esi,args
	; 2 spaces = after program name
	; dll2inc.exe  D:\project\sqlite3.6.dll
	@@:
	  inc	esi
	  cmp	byte [esi],46	; a dot
	  jne	@b
	@@:
	  inc	esi
	  inc	esi
	  cmp	dword [esi],'xe  '  ;; command line, ensure command is dll2inc.exe
	  jne	.exitShowHelp
	  add	esi,4

	  mov	[arg0],esi
	  mov	ecx,esi
	  add	ecx,60

	._finddotdll:
	  inc	esi
	  cmp	ecx,esi
	  je	.exitShowHelp
	  cmp	byte [esi],'.'
	  jne	._finddotdll
	._checkdotdll:
	  cmp	dword [esi],'.dll'
	  jne	._finddotdll
	  mov	byte [esi],0

	cinvoke lstrcpy,pfname,[arg0]
	cinvoke wsprintf,infread,<'%s%s',0>,pfname,<'.dll',0>
	cinvoke wsprintf,oufwrite,<'%s%s',0>,pfname,<'.inc',0>
	cinvoke printf,<13,10,0>

	invoke	LoadLibraryEx,infread,NULL,DONT_RESOLVE_DLL_REFERENCES
	  cmp	eax,NULL
	  je	.exitShowHelp
	  mov	[pdllh],eax

	  push	eax
	cinvoke wsprintf,pbuf1,<'[pdllh]  . . . . . . . . . . . . . . . . = 0x%lX',13,10,0>,eax
	cinvoke printf,pbuf1
	  pop	eax

	  mov	edx,[eax]
	  xor	ecx,ecx
	  mov	cx,[eax + IMAGE_DOS_HEADER.e_magic]
	cinvoke wsprintf,pbuf1,<'e_magic                                  = 0x%lX',13,10,0>, ecx
	cinvoke printf,pbuf1

	  mov	eax,[pdllh]
	  mov	edx,[eax + IMAGE_DOS_HEADER.e_lfanew]
	  push	edx
	cinvoke wsprintf,pbuf1,<'e_lfanew . . . . . . . . . . . . . . . . = 0x%lX',13,10,0>, edx
	cinvoke printf,pbuf1

	  mov	eax,[pdllh]
	  pop	edx
	  add	eax,edx
	  mov	[pntheader],eax
	cinvoke wsprintf,pbuf1,<'e_lfanew addr                            = 0x%lX',13,10,0>, eax
	cinvoke printf,pbuf1

	  mov	eax,[pntheader]
	  mov	edx,[eax]
	cinvoke wsprintf,pbuf1,<'signature  . . . . . . . . . . . . . . . = 0x%lX',13,10,0>,edx
	cinvoke printf,pbuf1

	  mov	eax,[pntheader]
	  add	eax, 4 + sizeof.IMAGE_FILE_HEADER
	  mov	[poptheader],eax
	  xor	edx,edx
	  mov	dx, word [eax]
	cinvoke wsprintf,pbuf1,<'magic                                    = 0x%lX',13,10,0>,edx
	cinvoke printf,pbuf1

	  mov	eax,[poptheader]
	  add	eax,92
	cinvoke wsprintf,pbuf1,<'RvaAndSizes  . . . . . . . . . . . . . . = %lu',13,10,0>, dword [eax]
	cinvoke printf,pbuf1

	  mov	eax,[poptheader]
	  add	eax,96	; IMAGE_DATA_DIRECTORY[0] // export table and size
	  mov	edx,[pdllh]
	  add	edx,[eax]
	  mov	[pexport],edx

	cinvoke wsprintf,pbuf1,<'IMAGE_DATA_DIRECTORY[0].VirtualAddress   = 0x%lX',13,10,0>, edx
	cinvoke printf,pbuf1

	  mov	eax,[pexport]
	  add	eax,IMAGE_EXPORT_DIRECTORY.NumberOfNames
	  push	dword [eax]
	  pop	[pexportfcount]
	cinvoke wsprintf,pbuf1,<'NumberOfNames  . . . . . . . . . . . . . = %lu',13,10,0>, dword [pexportfcount]
	cinvoke printf,pbuf1

	  mov	eax,[pexport]
	  add	eax,IMAGE_EXPORT_DIRECTORY.AddressOfNames
	  push	dword [eax]
	  pop	[pexportaddrname]
	cinvoke wsprintf,pbuf1,<'AddressOfNames                           = 0x%lX',13,10,0>, dword [pexportaddrname]
	cinvoke printf,pbuf1

	; ---------------------------------------------------------------------------
	; file output set up
	; ---------------------------------------------------------------------------
	cinvoke fopen,oufwrite,<'wb+',0>
	  mov	[poufwriteh],eax
	cinvoke lstrlen,pfname
	  mov	esi,pfname
	  add	esi,eax

	._findSlash:
	  dec	esi
	  cmp	byte [esi],'-'
	  jne	@f
	  mov	byte [esi],'_'
	@@:
	  cmp	byte [esi],'\'
	  jne	._findSlash

	  mov	byte [esi],0
	  inc	esi

	cinvoke fprintf,[poufwriteh],<'%s%s,\',13,10,0>,<'import ',0>,esi

	; ---------------------------------------------------------------------------
	; start displaying functions
	; ---------------------------------------------------------------------------
	  mov	esi,[pexportfcount]
	  mov	edi,[pdllh]
	  add	edi,[pexportaddrname]

	._displayFunc:
	  dec	esi
	  cmp	esi,0
	  je	._displayFuncEnd
		mov	eax,[pdllh]
		add	eax,[edi]
		add	edi,4
		cmp	esi,1
		je	._displayFuncLastRow
		cinvoke wsprintf,pbuf1,<'     %s,',39,'%s',39,',\',13,10,0>,eax,eax
		jmp	@f

		._displayFuncLastRow:
		cinvoke wsprintf,pbuf1,<'     %s,',39,'%s',39,13,10,0>,eax,eax
		@@:
		;cinvoke	printf,pbuf1
		cinvoke fprintf,[poufwriteh],<'%s',0>,pbuf1
		

	  jmp	._displayFunc
	._displayFuncEnd:

	cinvoke fclose,[poufwriteh]
	invoke	FreeLibrary,[pdllh]
	cinvoke wsprintf,pbuf1,<13,10,'   %lu functions exported',13,10,0>,[pexportfcount]
	cinvoke printf,pbuf1
	  jmp	.exit

.exitShowHelp:
	cinvoke printf,<' +----------------------------------------------------+',13,10,0>
	cinvoke printf,<' | dll2inc - export dll functions into fasm inc file. |',13,10,0>
	cinvoke printf,<' +----------------------------------------------------+',13,10,13,10,0>
	cinvoke printf,<'   [ usage ]  = D:\dll2inc.exe D:\dlldir\dllfilename.1-2.3.dll',13,10,13,10,0>
	cinvoke printf,<'   [ output ] = D:\dlldir\dllfilename.1-2.3.inc',13,10,13,10,0>
	cinvoke printf,<' ------------------------------------------------------',13,10,0>
	  

.exit:
	invoke	ExitProcess,0








# encoding: utf-8

=begin
Para trocar a codificacao utiliza-se o comentario acima
OS TESTE DEVEM SER EXECUTADOS NO TERMINAL

O ruby suporta a multilingualizarion m17n

As classes que implementam suporte a codificação como String, Regexp, Symbol, IO e File

=end
      
### CONSTANTE PARA RETORNAR A CODIFICACAO DO ARQUIVO
puts File.basename(__FILE__) +" : " + __ENCODING__.name       





## LISTA DE CODIFICACOES
=begin

ASCII-8BIT GB1988 Big5 GB2312 CP51932 GBK CP850 IBM437 CP852 IBM737 CP855 IBM775 CP949 IBM852 Emacs-Mule IBM855 EUC-JP IBM857 EUC-KR IBM860 EUC-TW IBM861 eucJP-ms IBM862 GB12345 IBM863 GB18030 IBM864
IBM865 IBM866 IBM869 ISO-2022-JP ISO-2022-JP-2 ISO-8859-1 ISO-8859-10 ISO-8859-11 ISO-8859-13 ISO-8859-14 ISO-8859-15 ISO-8859-16 ISO-8859-2 ISO-8859-3
ISO-8859-4 ISO-8859-5 ISO-8859-6 ISO-8859-7 ISO-8859-8 ISO-8859-9 KOI8-R KOI8-U macCentEuro macCroatian macCyrillic macGreek macIceland MacJapanese
macRoman macRomania macThai
macTurkish macUkraine
Shift_JIS stateless-ISO-2022-JP TIS-620
US-ASCII UTF-16BE UTF-16LE UTF-32BE UTF-32LE UTF-7
UTF-8 UTF8-MAC Windows-1250 Windows-1251 Windows-1252 Windows-1253 Windows-1254 Windows-1255 Windows-1256 Windows-1257 Windows-1258 Windows-31J Windows-874

=end
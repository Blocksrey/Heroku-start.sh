local ffi = require("ffi")
if nil == FFI_INCLUDED then
	FFI_INCLUDED = {}
end
if not FFI_INCLUDED["AquesTalk/AquesTalk.h"] then
ffi.cdef[[
typedef struct _AQTK_PARAM_ {
 int bas;
 int spd;
 int vol;
 int pit;
 int acc;
 int lmd;
 int fsc;
} AQTK_VOICE;
enum VoiceBase { F1E =0, F2E, M1E };
const AQTK_VOICE gVoice_F1 = { F1E, 100, 100, 100, 100, 100, 100};
const AQTK_VOICE gVoice_F2 = { F2E, 100, 100, 77, 150, 100, 100};
const AQTK_VOICE gVoice_F3 = { F1E, 80, 100, 100, 100, 61, 148};
const AQTK_VOICE gVoice_M1 = { M1E, 100, 100, 30, 100, 100, 100};
const AQTK_VOICE gVoice_M2 = { M1E, 105, 100, 45, 130, 120, 100};
const AQTK_VOICE gVoice_R1 = { M1E, 100, 100, 30, 20, 190, 100};
const AQTK_VOICE gVoice_R2 = { F2E, 70, 100, 50, 50, 50, 180};
unsigned char * AquesTalk_Synthe(const AQTK_VOICE *pParam, const char *koe, int *pSize);
unsigned char * AquesTalk_Synthe_Utf8(const AQTK_VOICE *pParam, const char *koe, int *pSize);
unsigned char * AquesTalk_Synthe_Utf16(const AQTK_VOICE *pParam, const unsigned short *koe, int *pSize);
void AquesTalk_FreeWave(unsigned char *wav);
int AquesTalk_SetDevKey(const char *key);
int AquesTalk_SetUsrKey(const char *key);

]]
end
FFI_INCLUDED["<built-in>"] = true
FFI_INCLUDED["<command-line>"] = true
FFI_INCLUDED["/usr/include/stdc-predef.h"] = true
FFI_INCLUDED["AquesTalk/AquesTalk.h"] = true

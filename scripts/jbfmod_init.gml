var DLL,tp;

DLL='jbfmod.dll';
tp=dll_cdecl;

if !file_exists(DLL)
  {
    show_message('Library JBFMOD.DLL not found.');
    exit;
  }
if !file_exists('fmod.dll')
  {
    show_message('Library FMOD.DLL not found.');
    exit;
  }

global.JBFMODClose=external_define(DLL,'Close',tp,ty_real,0);
global.JBFMODCloseSpectrum=external_define(DLL,'CloseSpectrum',tp,ty_real,0);
global.JBFMODGetBPM=external_define(DLL,'GetBPM',tp,ty_real,0);
global.JBFMODGetChannelsPlaying=external_define(DLL,'GetChannelsPlaying',tp,ty_real,0);
global.JBFMODGetCPUUsage=external_define(DLL,'GetCPUUsage',tp,ty_real,0);
global.JBFMODGetCurrentSong=external_define(DLL,'GetCurrentSong',tp,ty_real,0);
global.JBFMODGetErrorCode=external_define(DLL,'GetErrorCode',tp,ty_real,0);
global.JBFMODGetErrorMessage=external_define(DLL,'GetErrorMessage',tp,ty_string,0);
global.JBFMODGetFrequency=external_define(DLL,'GetFrequency',tp,ty_real,1,ty_real);
global.JBFMODGetJBInfo=external_define(DLL,'GetJBInfo',tp,ty_string,1,ty_real);
global.JBFMODGetInstrumentPlayed=external_define(DLL,'GetInstrumentPlayed',tp,ty_real,1,ty_real);
global.JBFMODGetInstrumentPlayedOnce=external_define(DLL,'GetInstrumentPlayedOnce',tp,ty_real,1,ty_real);
global.JBFMODGetMasterVolume=external_define(DLL,'GetMasterVolume',tp,ty_real,0);
global.JBFMODGetName=external_define(DLL,'GetName',tp,ty_string,1,ty_real);
global.JBFMODGetNumChannels=external_define(DLL,'GetNumChannels',tp,ty_real,1,ty_real);
global.JBFMODGetNumInstruments=external_define(DLL,'GetNumInstruments',tp,ty_real,1,ty_real);
global.JBFMODGetNumOrders=external_define(DLL,'GetNumOrders',tp,ty_real,1,ty_real);
global.JBFMODGetNumPatterns=external_define(DLL,'GetNumPatterns',tp,ty_real,1,ty_real);
global.JBFMODGetNumSamples=external_define(DLL,'GetNumSamples',tp,ty_real,1,ty_real);
global.JBFMODGetOrder=external_define(DLL,'GetOrder',tp,ty_real,0);
global.JBFMODGetPackInfo=external_define(DLL,'GetPackInfo',tp,ty_string,0);
global.JBFMODGetPattern=external_define(DLL,'GetPattern',tp,ty_real,0);
global.JBFMODGetPatternLength=external_define(DLL,'GetPatternLength',tp,ty_real,0);
global.JBFMODGetPaused=external_define(DLL,'GetPaused',tp,ty_real,0);
global.JBFMODGetRow=external_define(DLL,'GetRow',tp,ty_real,0);
global.JBFMODGetSongExists=external_define(DLL,'GetSongExists',tp,ty_real,1,ty_real);
global.JBFMODGetSpectrum=external_define(DLL,'GetSpectrum',tp,ty_real,1,ty_real);
global.JBFMODGetSpectrumMean=external_define(DLL,'GetSpectrum',tp,ty_real,2,ty_real,ty_real);
global.JBFMODGetSpeed=external_define(DLL,'GetSpeed',tp,ty_real,0);
global.JBFMODGetTime=external_define(DLL,'GetTime',tp,ty_real,0);
global.JBFMODGetTimeFormat=external_define(DLL,'GetTimeFormat',tp,ty_string,0);
global.JBFMODGetType=external_define(DLL,'GetType',tp,ty_real,1,ty_real);
global.JBFMODGetZxx=external_define(DLL,'GetZxx',tp,ty_real,0);
global.JBFMODGetZxxPlayed=external_define(DLL,'GetZxxPlayed',tp,ty_real,1,ty_real);
global.JBFMODGetZxxPlayedOnce=external_define(DLL,'GetZxxPlayedOnce',tp,ty_real,1,ty_real);
global.JBFMODGetZxxOnce=external_define(DLL,'GetZxxOnce',tp,ty_real,0);
global.JBFMODInit=external_define(DLL,'Init',tp,ty_real,2,ty_real,ty_real);
global.JBFMODInitSpectrum=external_define(DLL,'InitSpectrum',tp,ty_real,0);
global.JBFMODIsFinished=external_define(DLL,'IsFinished',tp,ty_real,0);
global.JBFMODIsPlaying=external_define(DLL,'IsPlaying',tp,ty_real,0);
global.JBFMODLoadSong=external_define(DLL,'LoadSong',tp,ty_real,2,ty_real,ty_string);
global.JBFMODLoadSongPack=external_define(DLL,'LoadSongPack',tp,ty_real,3,ty_real,ty_real,ty_string);
global.JBFMODPlaySong=external_define(DLL,'PlaySong',tp,ty_real,1,ty_real);
global.JBFMODSetLooping=external_define(DLL,'SetLooping',tp,ty_real,1,ty_real);
global.JBFMODSetMasterVolume=external_define(DLL,'SetMasterVolume',tp,ty_real,1,ty_real);
global.JBFMODSetOrder=external_define(DLL,'SetOrder',tp,ty_real,1,ty_real);
global.JBFMODSetPanSeperation=external_define(DLL,'SetPanSeperation',tp,ty_real,1,ty_real);
global.JBFMODSetPaused=external_define(DLL,'SetPaused',tp,ty_real,1,ty_real);
global.JBFMODStopSong=external_define(DLL,'StopSong',tp,ty_real,0);

Result=external_call(global.JBFMODInit,argument0,argument1);

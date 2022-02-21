#define jbfmod_close
return(external_call(global.JBFMODClose));

#define jbfmod_close_spectrum
return(external_call(global.JBFMODCloseSpectrum));
#define jbfmod_get_bpm
return(external_call(global.JBFMODGetBPM));

#define jbfmod_get_channels_playing
return(external_call(global.JBFMODGetChannelsPlaying));

#define jbfmod_get_cpu_usage
return(external_call(global.JBFMODGetCPUUsage));

#define jbfmod_get_current_song
return(external_call(global.JBFMODGetCurrentSong));
#define jbfmod_get_errorcode
return(external_call(global.JBFMODGetErrorCode));

#define jbfmod_get_errormessage
return(external_call(global.JBFMODGetErrorMessage));

#define jbfmod_get_frequency
return(external_call(global.JBFMODGetFrequency,argument0));

#define jbfmod_get_info
return(external_call(global.JBFMODGetJBInfo,argument0));

#define jbfmod_get_instrument_played
return(external_call(global.JBFMODGetInstrumentPlayed,argument0));

#define jbfmod_get_instrument_playedonce
return(external_call(global.JBFMODGetInstrumentPlayedOnce,argument0));

#define jbfmod_get_master_volume
return(external_call(global.JBFMODGetMasterVolume));

#define jbfmod_get_name
return(external_call(global.JBFMODGetName,argument0));

#define jbfmod_get_num_channels
return(external_call(global.JBFMODGetNumChannels,argument0));


#define jbfmod_get_num_instruments
return(external_call(global.JBFMODGetNumInstruments,argument0));

#define jbfmod_get_num_orders
return(external_call(global.JBFMODGetNumOrders,argument0));

#define jbfmod_get_num_patterns
return(external_call(global.JBFMODGetNumPatterns,argument0));

#define jbfmod_get_num_samples
return(external_call(global.JBFMODGetNumSamples,argument0));

#define jbfmod_get_order
return(external_call(global.JBFMODGetOrder));

#define jbfmod_get_packinfo
return(external_call(global.JBFMODGetPackInfo));

#define jbfmod_get_pattern
return(external_call(global.JBFMODGetPattern));

#define jbfmod_get_pattern_length
return(external_call(global.JBFMODGetPatternLength));

#define jbfmod_get_paused
return(external_call(global.JBFMODGetPaused));

#define jbfmod_get_row
return(external_call(global.JBFMODGetRow));

#define jbfmod_get_song_exists
return(external_call(global.JBFMODGetSongExists,argument0));

#define jbfmod_get_spectrum
return(external_call(global.JBFMODGetSpectrum,argument0));

#define jbfmod_get_spectrum_mean
return(external_call(global.JBFMODGetSpectrumMean,argument0,argument1));

#define jbfmod_get_speed
return(external_call(global.JBFMODGetSpeed));

#define jbfmod_get_time
return(external_call(global.JBFMODGetTime));

#define jbfmod_get_timeformat
return(external_call(global.JBFMODGetTimeFormat));

#define jbfmod_get_type
return(external_call(global.JBFMODGetType,argument0));

#define jbfmod_get_zxx
return(external_call(global.JBFMODGetZxx));

#define jbfmod_get_zxx_played
return(external_call(global.JBFMODGetZxxPlayed,argument0));

#define jbfmod_get_zxx_playedonce
return(external_call(global.JBFMODGetZxxPlayedOnce,argument0));

#define jbfmod_get_zxxonce
return(external_call(global.JBFMODGetZxxOnce));

#define jbfmod_init
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
#define jbfmod_init_spectrum
return(external_call(global.JBFMODInitSpectrum));
#define jbfmod_is_finished
return(external_call(global.JBFMODIsFinished));

#define jbfmod_is_playing
return(external_call(global.JBFMODIsPlaying));

#define jbfmod_load_song
return(external_call(global.JBFMODLoadSong,argument0,argument1));

#define jbfmod_load_song_pack
return(external_call(global.JBFMODLoadSongPack,argument0,argument1,argument2));

#define jbfmod_play_song
return(external_call(global.JBFMODPlaySong,argument0));

#define jbfmod_set_looping
return(external_call(global.JBFMODSetLooping,argument0));

#define jbfmod_set_master_volume
return(external_call(global.JBFMODSetMasterVolume,argument0));

#define jbfmod_set_order
return(external_call(global.JBFMODSetOrder,argument0));

#define jbfmod_set_pan_seperation
return(external_call(global.JBFMODSetPanSeperation,argument0));

#define jbfmod_set_paused
return(external_call(global.JBFMODSetPaused,argument0));

#define jbfmod_stop_song
return(external_call(global.JBFMODStopSong));


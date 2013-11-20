.class public Lcom/samsung/wfd/WfdService;
.super Lcom/samsung/wfd/IWfdManager$Stub;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdService$WfdStateMachine;,
        Lcom/samsung/wfd/WfdService$WifiStateReceiver;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x23000

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WfdService"


# instance fields
.field private final WFD_CHECK_TURN_OFF_INTERVAL:I

.field private final WFD_CHECK_TURN_OFF_MSG:I

.field private mAudioCnt:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectedDeviceMacAddr:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentDimm:Ljava/lang/String;

.field private mCurrentResln:I

.field private mDongleUpdateResult:Z

.field private mDongleVer:Ljava/lang/String;

.field private mFrequencyAp:I

.field private mFrequencyWfd:I

.field mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mHDMIConnected:Z

.field private mHDMITrigger:Z

.field private mInterface:Ljava/lang/String;

.field private mIsShowingNotification:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mRemoteIP:Ljava/lang/String;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mRequestSessionControl:Ljava/lang/String;

.field private mResolutionBitMask:I

.field private mScreenStatus:Z

.field private mSourceReslnBitMask:I

.field private mUpdateURL:Ljava/lang/String;

.field private mUseRTSPService:Z

.field private mWaitHotspotDone:Z

.field private mWfdEnabledFromPicker:Z

.field private mWfdInfo:Lcom/samsung/wfd/WfdInfo;

.field private mWfdOffTimer:Z

.field private mWfdRestartOngoing:Z

.field private mWfdRestartTrigger:Z

.field private mWfdSourceConnection:Landroid/content/ServiceConnection;

.field mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

.field private final mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

.field private final mWfdSupported:Z

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pConnected:Z

.field private mWifiP2pEnabled:Z

.field private mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pTrigger:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 203
    invoke-direct {p0}, Lcom/samsung/wfd/IWfdManager$Stub;-><init>()V

    .line 115
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    .line 116
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mInterface:Ljava/lang/String;

    .line 117
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;

    .line 119
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mNwService:Landroid/os/INetworkManagementService;

    .line 122
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    .line 123
    new-instance v1, Lcom/samsung/wfd/WfdService$1;

    invoke-direct {v1, p0}, Lcom/samsung/wfd/WfdService$1;-><init>(Lcom/samsung/wfd/WfdService;)V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceConnection:Landroid/content/ServiceConnection;

    .line 140
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 142
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    .line 143
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 144
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 146
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 147
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 148
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 149
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 150
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;

    .line 151
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;

    .line 152
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;

    .line 153
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mAudioCnt:I

    .line 158
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    .line 163
    const/16 v1, 0x19

    iput v1, p0, Lcom/samsung/wfd/WfdService;->mSourceReslnBitMask:I

    .line 165
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    .line 167
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;

    .line 169
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;

    .line 171
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 173
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z

    .line 174
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    .line 175
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z

    .line 176
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z

    .line 177
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z

    .line 178
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    .line 179
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z

    .line 180
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mFrequencyAp:I

    .line 181
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I

    .line 183
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z

    .line 184
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mHDMITrigger:Z

    .line 186
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 187
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z

    .line 188
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z

    .line 190
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mScreenStatus:Z

    .line 191
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdOffTimer:Z

    .line 192
    const/16 v1, 0x2bc

    iput v1, p0, Lcom/samsung/wfd/WfdService;->WFD_CHECK_TURN_OFF_MSG:I

    .line 193
    const v1, 0x493e0

    iput v1, p0, Lcom/samsung/wfd/WfdService;->WFD_CHECK_TURN_OFF_INTERVAL:I

    .line 194
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mAudioManager:Landroid/media/AudioManager;

    .line 196
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mConnectedDeviceMacAddr:Ljava/lang/String;

    .line 197
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 201
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mIsShowingNotification:Z

    .line 204
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    .line 206
    const-string v1, "wifi.interface"

    const-string v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mInterface:Ljava/lang/String;

    .line 208
    const-string v1, "wlan.wfd.status"

    const-string v2, "disconnected"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iput-boolean v3, p0, Lcom/samsung/wfd/WfdService;->mWfdSupported:Z

    .line 214
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z

    .line 215
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z

    .line 216
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z

    .line 217
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z

    .line 218
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    .line 219
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z

    .line 220
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z

    .line 221
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mFrequencyAp:I

    .line 222
    iput v4, p0, Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I

    .line 223
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z

    .line 224
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mScreenStatus:Z

    .line 225
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mWfdOffTimer:Z

    .line 228
    new-instance v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v2, "WfdService"

    iget-boolean v3, p0, Lcom/samsung/wfd/WfdService;->mWfdSupported:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;-><init>(Lcom/samsung/wfd/WfdService;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    .line 229
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->start()V

    .line 231
    new-instance v1, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v1}, Lcom/samsung/wfd/WfdInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 236
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v2, "wifip2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 238
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 240
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_0

    .line 242
    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 243
    iput-object v5, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 249
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mAudioManager:Landroid/media/AudioManager;

    .line 250
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_1

    .line 251
    const-string v1, "mAudioManager is null !"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 255
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v1, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v1, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v1, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v1, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v1, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v1, "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v1, "android.intent.action.WIFI_DISPLAY_PARAM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v1, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v1, "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v1, "com.samsung.wfd.RESULT_WFD_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v1, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_BROKER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v1, "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "android.intent.action.WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    invoke-direct {v2, p0, v5}, Lcom/samsung/wfd/WfdService$WifiStateReceiver;-><init>(Lcom/samsung/wfd/WfdService;Lcom/samsung/wfd/WfdService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    .line 289
    return-void

    .line 246
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    const-string v1, "mWifiP2pManager is null !"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private WfdStartHDCPSuspend()V
    .locals 5

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/samsung/wfd/WfdService;->WFDGetSuspendStatus()Z

    move-result v0

    .line 1216
    .local v0, nRet:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WFDGetSuspendStatus >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1217
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/wfd/WfdService;->WFDSetSuspendStatus(Z)Z

    move-result v0

    .line 1219
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1220
    .local v1, r:Landroid/content/res/Resources;
    const v3, 0x1040568

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1221
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/wfd/WfdService;->WFDPostSuspend(Ljava/lang/String;)Z

    .line 1223
    return-void
.end method

.method private WfdStopHDCPSuspend()V
    .locals 2

    .prologue
    .line 1228
    invoke-virtual {p0}, Lcom/samsung/wfd/WfdService;->WFDGetSuspendStatus()Z

    move-result v0

    .line 1230
    .local v0, nRet:Z
    if-eqz v0, :cond_0

    .line 1231
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->WFDSetSuspendStatus(Z)Z

    move-result v0

    .line 1232
    const-string v1, "done WfdStopHDCPSuspend"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1235
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mAudioCnt:I

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/samsung/wfd/WfdService;->mAudioCnt:I

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->broadcastDongleVerToFota()V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/samsung/wfd/WfdService;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I

    return v0
.end method

.method static synthetic access$2302(Lcom/samsung/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I

    return p1
.end method

.method static synthetic access$2400(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    return v0
.end method

.method static synthetic access$2402(Lcom/samsung/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mSourceReslnBitMask:I

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->broadcastWfdSessionInfo()V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    return v0
.end method

.method static synthetic access$2702(Lcom/samsung/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    return p1
.end method

.method static synthetic access$2800(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/wfd/WfdService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mFrequencyAp:I

    return v0
.end method

.method static synthetic access$3002(Lcom/samsung/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/samsung/wfd/WfdService;->mFrequencyAp:I

    return p1
.end method

.method static synthetic access$3100(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/samsung/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService;->sendToWfdPickerControlInfo(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->WfdStartHDCPSuspend()V

    return-void
.end method

.method static synthetic access$3502(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mScreenStatus:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/samsung/wfd/WfdService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService;->setWfdState(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/samsung/wfd/WfdService;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->WfdStopHDCPSuspend()V

    return-void
.end method

.method static synthetic access$4902(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWfdOffTimer:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/samsung/wfd/WfdService;Lcom/samsung/wfd/WfdInfo;)Lcom/samsung/wfd/WfdInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    return-object p1
.end method

.method static synthetic access$502(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/samsung/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService;->broadcastIntent2HDMI(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/samsung/wfd/WfdService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mIsShowingNotification:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mIsShowingNotification:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->startWfdRoutine()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/wfd/WfdService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/wfd/WfdService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    return p1
.end method

.method static synthetic access$802(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mConnectedDeviceMacAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    return-object v0
.end method

.method private broadcastDongleVerToFota()V
    .locals 4

    .prologue
    .line 372
    const-string v2, "broadcastDongleVerToFota"

    invoke-virtual {p0, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 374
    const-string v0, "com.samsung.wfd.START_WFD"

    .line 376
    .local v0, ACTION_START_WFD:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.START_WFD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 380
    const-string v2, "version"

    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 384
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    return-void
.end method

.method private broadcastIntent2HDMI(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastIntent2HDMI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wfd/WfdService;->mHDMITrigger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 298
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z

    if-eqz v1, :cond_1

    .line 299
    if-nez p1, :cond_0

    .line 301
    const-string v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    iput-boolean v3, p0, Lcom/samsung/wfd/WfdService;->mHDMITrigger:Z

    .line 321
    :goto_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send broadcastIntent2HDMI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 324
    :goto_1
    return-void

    .line 304
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no send broadcastIntent2HDMI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 307
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mHDMITrigger:Z

    if-eqz v1, :cond_3

    .line 308
    if-ne p1, v3, :cond_2

    .line 310
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    iput-boolean v4, p0, Lcom/samsung/wfd/WfdService;->mHDMITrigger:Z

    goto :goto_0

    .line 313
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no send broadcastIntent2HDMI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 317
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDMI is not triggered! no send broadcastIntent2HDMI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private broadcastWfdSessionInfo()V
    .locals 3

    .prologue
    .line 389
    const-string v1, "broadcastWfdSessionInfo"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_RES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, activityIntent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 393
    const-string v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const-string v1, "resBitMask"

    iget v2, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    const-string v1, "curRes"

    iget v2, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s:1 ResBit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ResIn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 398
    return-void
.end method

.method private broadcastWfdSessionState(I)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x800

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastWfdSessionState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, activityIntent:Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    const-string v3, "state"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string v3, "resBitMask"

    iget v4, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const-string v3, "curRes"

    iget v4, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    iget v3, p0, Lcom/samsung/wfd/WfdService;->mAudioCnt:I

    if-eqz v3, :cond_2

    .line 337
    const-string v3, "count"

    iget v4, p0, Lcom/samsung/wfd/WfdService;->mAudioCnt:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ResBit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ResIn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/wfd/WfdService;->mCurrentResln:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 345
    const-string v3, "broadcastWfdSessionInfo << to AllShare!"

    invoke-virtual {p0, v3}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 346
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.allshare.intent.action.CAST_GETSTATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v2, mAllShareCastState:Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 348
    if-ne p1, v7, :cond_3

    .line 349
    const-string v3, "com.sec.android.allshare.intent.extra.CAST_STATE"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 352
    const-string v3, "com.sec.android.allshare.intent.extra.CAST_IPADDR"

    iget-object v4, p0, Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 361
    if-nez p1, :cond_1

    .line 363
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, intent_chage_transport_mode:Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 365
    const-string v3, "CONNECTION_MODE"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 368
    .end local v1           #intent_chage_transport_mode:Landroid/content/Intent;
    :cond_1
    return-void

    .line 339
    .end local v2           #mAllShareCastState:Landroid/content/Intent;
    :cond_2
    const-string v3, "count"

    const/16 v4, 0x780

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 356
    .restart local v2       #mAllShareCastState:Landroid/content/Intent;
    :cond_3
    const-string v3, "com.sec.android.allshare.intent.extra.CAST_STATE"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 859
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WfdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 864
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WfdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method private getDefaultDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 871
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isHotspotOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 894
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 899
    const-string v0, "isHotspotOn >> No wifiManager."

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 915
    :goto_0
    return v0

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 911
    const-string v0, "Hotspot is Off"

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 915
    goto :goto_0

    .line 907
    :pswitch_0
    const-string v0, "Hotspot is ON"

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 908
    const/4 v0, 0x1

    goto :goto_0

    .line 903
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isSBeamOn()Z
    .locals 1

    .prologue
    .line 941
    const/4 v0, 0x0

    return v0
.end method

.method private isSplitWindow()Z
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x0

    return v0
.end method

.method private sendToWfdPickerControlInfo(I)V
    .locals 3
    .parameter "cause"

    .prologue
    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendToWfdPickerControlInfo << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 423
    const-string v1, "cause"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 425
    return-void
.end method

.method private sendWfdBrokerStartForPopup(I)V
    .locals 3
    .parameter "cause"

    .prologue
    .line 429
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 432
    packed-switch p1, :pswitch_data_0

    .line 482
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendWfdStartForPopup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->loge(Ljava/lang/String;)V

    .line 488
    :goto_0
    return-void

    .line 436
    :pswitch_1
    const-string v1, "sendWfdStartForPopup << POPUP_CAUSE_TERMINATE"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 486
    :goto_1
    const-string v1, "cause"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 440
    :pswitch_2
    const-string v1, "sendWfdStartForPopup << POPUP_CAUSE_P2P_BUSY"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 445
    :pswitch_3
    const-string v1, "sendWfdStartForPopup << POPUP_CAUSE_CONNECTION_DISCONNECT"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 446
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    if-eqz v1, :cond_0

    .line 447
    const-string v1, "do not show disconnect popup when restart!"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/wfd/WfdService;->setWfdTerminate()Z

    goto :goto_1

    .line 455
    :pswitch_4
    const-string v1, "sendWfdStartForPopup << POPUP_CAUSE_RESTART"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :pswitch_5
    const-string v1, "sendWfdStartForPopup << POPUP_CAUSE_HDMI_BUSY"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 463
    :pswitch_6
    const-string v1, "sendWfdStartForPopup << POPUP_CAUSE_HOTSPOT_BUSY"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 467
    :pswitch_7
    const-string v1, "sendWfdStartForPopup << POPUP_CAUSE_SBEAM_BUSY"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 471
    :pswitch_8
    const-string v1, "sendWfdStartForPopup << POPUP_CAUSE_DONGLE_UPDATE"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 472
    const-string v1, "url"

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;

    goto :goto_1

    .line 477
    :pswitch_9
    const-string v1, "sendWfdStartForPopup << POPUP_CAUSE_SPLIT_WINDOW"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x22070
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private setHotspotOff()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 919
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 924
    const-string v0, "setHotspotOff >> No wifiManager."

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 931
    :goto_0
    return v0

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 929
    iput-boolean v2, p0, Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z

    move v0, v2

    .line 931
    goto :goto_0
.end method

.method private setSBeamOff()Z
    .locals 1

    .prologue
    .line 946
    const/4 v0, 0x1

    return v0
.end method

.method private setWfdState(I)V
    .locals 3
    .parameter "wfdState"

    .prologue
    .line 401
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfdState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 404
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 405
    const-string v1, "setWfdState just returned"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 416
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->disableWiFiP2P()V
    invoke-static {v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$100(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    .line 412
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 414
    const-string v1, "wfd_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startWfdRoutine()V
    .locals 5

    .prologue
    .line 491
    const-string v0, "49152"

    .line 493
    .local v0, lWfdPort:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settting ctrl port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_1

    .line 496
    :cond_0
    const-string v1, "startWfdRoutine failed"

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 506
    :goto_0
    return-void

    .line 499
    :cond_1
    new-instance v1, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v1}, Lcom/samsung/wfd/WfdInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 501
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const-string v3, "enable 1"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWfdParam(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const-string v3, "dev_info 0110"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWfdParam(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ctrl_port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWfdParam(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const-string v3, "max_tput 40"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWfdParam(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const-string v3, "cpled_sink_status 00"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWfdParam(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public WFDGetSubtitleStatus()Z
    .locals 1

    .prologue
    .line 1139
    const-string v0, "WFDGetSubtitleStatus :"

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1140
    const/4 v0, 0x0

    return v0
.end method

.method public WFDGetSuspendStatus()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1173
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v2, :cond_0

    .line 1175
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdSourceService;->WFDGetSuspendStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1183
    :cond_0
    :goto_0
    return v1

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public WFDPostSubtitle(Ljava/lang/String;I)Z
    .locals 2
    .parameter "subtitle"
    .parameter "nFontSize"

    .prologue
    .line 1160
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v1, :cond_0

    .line 1162
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/wfd/IWfdSourceService;->WFDPostSubtitle(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public WFDPostSuspend(Ljava/lang/String;)Z
    .locals 2
    .parameter "subtitle"

    .prologue
    .line 1203
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v1, :cond_0

    .line 1205
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdSourceService;->WFDPostSuspend(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public WFDSetSubtitleStatus(Z)Z
    .locals 4
    .parameter "bStatus"

    .prologue
    const/4 v1, 0x0

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WFDSetSubtitleStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1145
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v2, :cond_0

    .line 1147
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdSourceService;->WFDSetSubtitleStatus(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public WFDSetSuspendStatus(Z)Z
    .locals 4
    .parameter "bStatus"

    .prologue
    const/4 v1, 0x0

    .line 1187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WFDSetSuspendStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1188
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v2, :cond_0

    .line 1190
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdSourceService;->WFDSetSuspendStatus(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WfdService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1248
    :cond_0
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1131
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceAccessPermission()V

    .line 1132
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 1133
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    .locals 2

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceAccessPermission()V

    .line 1106
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mConnectedDeviceMacAddr:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/wfd/WfdInfo;->coupledDeviceAddress:Ljava/lang/String;

    .line 1111
    :goto_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    return-object v0

    .line 1109
    :cond_0
    const-string v0, "getWfdInfo is null"

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getWfdSinkResolution()I
    .locals 1

    .prologue
    .line 1119
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    return v0
.end method

.method public getWfdState()I
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isSessionEstablished()Z
    .locals 2

    .prologue
    .line 1123
    const-string v0, "wlan.wfd.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWiFiConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 877
    if-nez p1, :cond_0

    .line 878
    const-string v2, "isWiFiConnected context is null"

    invoke-virtual {p0, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 879
    const/4 v1, 0x0

    .line 886
    :goto_0
    return v1

    .line 882
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 884
    .local v0, manager:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    .line 886
    .local v1, result:Z
    goto :goto_0
.end method

.method logd(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1758
    const-string v0, "WfdService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    return-void
.end method

.method loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1762
    const-string v0, "WfdService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    return-void
.end method

.method public setWfdEnabled(I)Z
    .locals 4
    .parameter "option"

    .prologue
    const v3, 0x2206f

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1022
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 1024
    packed-switch p1, :pswitch_data_0

    .line 1063
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v1, v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 1064
    :goto_0
    return v0

    .line 1027
    :pswitch_0
    const-string v1, "enforce to disconnect currrent p2p..."

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1028
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/samsung/wfd/WfdService$2;

    invoke-direct {v3, p0}, Lcom/samsung/wfd/WfdService$2;-><init>(Lcom/samsung/wfd/WfdService;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 1041
    :pswitch_1
    const-string v2, "enforce to disconnect currrent HDMI..."

    invoke-virtual {p0, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1042
    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->broadcastIntent2HDMI(I)V

    .line 1043
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v1, v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1047
    :pswitch_2
    const-string v0, "enforce to disconnect currrent hotspot..."

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1048
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->setHotspotOff()Z

    move v0, v1

    .line 1051
    goto :goto_0

    .line 1054
    :pswitch_3
    const-string v1, "enforce to disconnect currrent sbeam..."

    invoke-virtual {p0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1055
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->setSBeamOff()Z

    goto :goto_0

    .line 1024
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setWfdEnabledDialog(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v0, 0x0

    .line 988
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 990
    if-eqz p1, :cond_6

    .line 992
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z

    if-eqz v1, :cond_0

    .line 993
    const v1, 0x22074

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    .line 1017
    :goto_0
    return v0

    .line 995
    :cond_0
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->isHotspotOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 996
    const v1, 0x22075

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    goto :goto_0

    .line 998
    :cond_1
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->isSBeamOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 999
    const v1, 0x22076

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    goto :goto_0

    .line 1001
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    if-nez v1, :cond_3

    .line 1002
    const v1, 0x22072

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    goto :goto_0

    .line 1004
    :cond_3
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->isSplitWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1005
    const v1, 0x2207f

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    goto :goto_0

    .line 1008
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    if-eqz v0, :cond_5

    .line 1009
    const-string v0, "already Wfd running..."

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1013
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1011
    :cond_5
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const v1, 0x2206f

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1016
    :cond_6
    const v1, 0x22070

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V

    goto :goto_0
.end method

.method public setWfdRestart()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1077
    iput-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    .line 1078
    invoke-virtual {p0}, Lcom/samsung/wfd/WfdService;->setWfdTerminate()Z

    .line 1079
    return v0
.end method

.method public setWfdRestartOption(I)Z
    .locals 1
    .parameter "option"

    .prologue
    const/4 v0, 0x1

    .line 1084
    iput-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z

    .line 1086
    packed-switch p1, :pswitch_data_0

    .line 1096
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/wfd/WfdService;->setWfdTerminate()Z

    .line 1097
    return v0

    .line 1089
    :pswitch_0
    iput-boolean v0, p0, Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z

    goto :goto_0

    .line 1086
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public setWfdTerminate()Z
    .locals 2

    .prologue
    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWfdTerminate called with mUseRTSPService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1070
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 1071
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const v1, 0x22068

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 1072
    const/4 v0, 0x1

    return v0
.end method

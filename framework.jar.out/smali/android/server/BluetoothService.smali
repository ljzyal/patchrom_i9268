.class public Landroid/server/BluetoothService;
.super Landroid/bluetooth/IBluetooth$Stub;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothService$Reaper;,
        Landroid/server/BluetoothService$RemoteService;,
        Landroid/server/BluetoothService$ServiceRecordClient;
    }
.end annotation


# static fields
.field private static final ALL_TETHER_DISABLE:I = 0x1

.field private static final ALL_TETHER_ENABLE:I = 0x3

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PROPERTY_SECURITY_POLICY:Ljava/lang/String; = "service.bt.security.policy.mode"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DOCK_ADDRESS_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_addr"

.field private static final DOCK_PIN_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_pin"

.field private static final FACTORY_START:Ljava/lang/String; = "android.intent.action.START_FACTORY_TEST"

.field private static final FACTORY_STOP:Ljava/lang/String; = "android.intent.action.STOP_FACTORY_TEST"

.field private static final INCOMING_CONNECTION_FILE:Ljava/lang/String; = "/data/misc/bluetooth/incoming_connection.conf"

.field private static final INIT_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0xbb8L

.field public static final INTENT_MSG_DCMO_BT:Ljava/lang/String; = "com.sktelecom.dmc.intent.action.DCMO_BT_SET"

.field private static final MAX_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0x2ee0L

.field private static final MESSAGE_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:I = 0x2

.field private static final MESSAGE_BT_BOOTUP:I = 0x5

.field private static final MESSAGE_BT_IT_POLICY:I = 0x4

.field private static final MESSAGE_BT_IT_POLICY_TETHERING:I = 0x7

.field private static final MESSAGE_MOBILE_OFFICE_BT_ON:I = 0x6

.field private static final MESSAGE_REMOVE_SERVICE_RECORD:I = 0x3

.field private static final MESSAGE_UUID_INTENT:I = 0x1

.field private static final ONLY_WIFI_AND_BT_TEHTER_ENABLE:I = 0x2

.field private static final RFCOMM_RECORD_REAPER:I = 0xa

.field private static final RFCOMM_UUIDS:[Landroid/os/ParcelUuid; = null

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "bluetooth_service_settings"

.field private static final SHARED_PREFERENCE_DOCK_ADDRESS:Ljava/lang/String; = "dock_bluetooth_address"

.field private static final STATE_CHANGE_REAPER:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothService"

.field private static final UUID_INTENT_DELAY:I = 0x7530

.field private static mDockAddress:Ljava/lang/String;

.field private static mPolicy:I


# instance fields
.field private bFactoryMode:Z

.field private btNAPAvailable:Z

.field private btPANEnable:Z

.field private final mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mA2dpService:Landroid/server/BluetoothA2dpService;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdapterConnectionState:I

.field private final mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

.field private mAdapterSdpHandles:[I

.field private mAdapterUuids:[Landroid/os/ParcelUuid;

.field private mAlarmService:Landroid/app/AlarmManager;

.field private mAllowConnect:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

.field private mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

.field private mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

.field private final mBondState:Landroid/server/BluetoothBondState;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceOobData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<[B[B>;>;"
        }
    .end annotation
.end field

.field private final mDeviceProfileState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDeviceProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

.field private final mDeviceServiceChannelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

.field private mDockPin:Ljava/lang/String;

.field private mEventLoop:Landroid/server/BluetoothEventLoop;

.field final mGattCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothLEGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

.field private final mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mIncomingConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

.field private mIsAirplaneSensitive:Z

.field private mIsAirplaneToggleable:Z

.field private mLELockObject:Ljava/lang/Object;

.field private mMapAvailable:Z

.field private mMapRecordHandle:I

.field private mNativeData:I

.field private mPan:Landroid/bluetooth/BluetoothPan;

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfilesConnected:I

.field private mProfilesConnecting:I

.field private mProfilesDisconnecting:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSapAvailable:Z

.field private final mServiceRecordToPid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/server/BluetoothService$ServiceRecordClient;",
            ">;"
        }
    .end annotation
.end field

.field private mStateChangeTracker:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuidCallbackTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/server/BluetoothService$RemoteService;",
            "Landroid/bluetooth/IBluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuidIntentTracker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 121
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/server/BluetoothService;->DBG:Z

    .line 162
    sput v4, Landroid/server/BluetoothService;->mPolicy:I

    .line 207
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v3, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MAP_MNS:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Landroid/server/BluetoothService;->RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

    .line 285
    invoke-static {}, Landroid/server/BluetoothService;->classInitNative()V

    .line 286
    return-void

    :cond_0
    move v0, v2

    .line 121
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 288
    invoke-direct {p0}, Landroid/bluetooth/IBluetooth$Stub;-><init>()V

    .line 134
    const/4 v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mMapRecordHandle:I

    .line 141
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    .line 172
    iput-boolean v4, p0, Landroid/server/BluetoothService;->bFactoryMode:Z

    .line 234
    iput v4, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    .line 239
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mAllowConnect:Z

    .line 247
    iput v4, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    .line 256
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    .line 257
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    .line 770
    new-instance v2, Landroid/server/BluetoothService$1;

    invoke-direct {v2, p0}, Landroid/server/BluetoothService$1;-><init>(Landroid/server/BluetoothService;)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    .line 2807
    new-instance v2, Landroid/server/BluetoothService$2;

    invoke-direct {v2, p0}, Landroid/server/BluetoothService$2;-><init>(Landroid/server/BluetoothService;)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3196
    new-instance v2, Landroid/server/BluetoothService$3;

    invoke-direct {v2, p0}, Landroid/server/BluetoothService$3;-><init>(Landroid/server/BluetoothService;)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 289
    iput-object p1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    .line 295
    const-string v2, "batteryinfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 297
    invoke-direct {p0}, Landroid/server/BluetoothService;->initializeNativeDataNative()V

    .line 299
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledNative()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 300
    const-string v2, "BluetoothService"

    const-string v5, "Bluetooth daemons already running - runtime restart? "

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0}, Landroid/server/BluetoothService;->disableNative()I

    .line 304
    :cond_0
    new-instance v2, Landroid/server/BluetoothBondState;

    invoke-direct {v2, p1, p0}, Landroid/server/BluetoothBondState;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    .line 305
    new-instance v2, Landroid/server/BluetoothAdapterProperties;

    invoke-direct {v2, p1, p0}, Landroid/server/BluetoothAdapterProperties;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    .line 306
    new-instance v2, Landroid/server/BluetoothDeviceProperties;

    invoke-direct {v2, p0}, Landroid/server/BluetoothDeviceProperties;-><init>(Landroid/server/BluetoothService;)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    .line 308
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    .line 310
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    .line 311
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    .line 313
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    .line 314
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    .line 315
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    .line 316
    new-instance v2, Landroid/bluetooth/BluetoothProfileState;

    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v3}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 317
    new-instance v2, Landroid/bluetooth/BluetoothProfileState;

    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v4}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 319
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 320
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 322
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 325
    invoke-direct {p0, v1}, Landroid/server/BluetoothService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 327
    :cond_1
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Landroid/server/BluetoothInputProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothInputProfileHandler;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    .line 335
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Landroid/server/BluetoothPanProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothPanProfileHandler;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    .line 336
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Landroid/server/BluetoothHealthProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothHealthProfileHandler;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    .line 337
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    .line 338
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    .line 341
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x107001e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, bluetoothRegexs:[Ljava/lang/String;
    array-length v2, v0

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/server/BluetoothService;->btNAPAvailable:Z

    .line 351
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Common_UseChameleon"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 352
    const-string v2, "BluetoothService"

    const-string v5, "TAG_CSCFEATURE_COMMON_USECHAMELEON!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string/jumbo v2, "persist.sys.tether_data"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 354
    iput-boolean v4, p0, Landroid/server/BluetoothService;->btPANEnable:Z

    .line 365
    :goto_1
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btPANEnable:::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/server/BluetoothService;->btPANEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/server/BluetoothService;->mMapAvailable:Z

    .line 367
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/server/BluetoothService;->mSapAvailable:Z

    .line 369
    iget-boolean v2, p0, Landroid/server/BluetoothService;->mSapAvailable:Z

    if-eqz v2, :cond_6

    .line 370
    const-string v2, "BluetoothService"

    const-string v3, "mSapAvailable was set to TRUE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_2
    return-void

    :cond_2
    move v2, v4

    .line 343
    goto :goto_0

    .line 357
    :cond_3
    iget-boolean v2, p0, Landroid/server/BluetoothService;->btNAPAvailable:Z

    if-eqz v2, :cond_4

    .line 358
    iput-boolean v3, p0, Landroid/server/BluetoothService;->btPANEnable:Z

    goto :goto_1

    .line 360
    :cond_4
    iput-boolean v4, p0, Landroid/server/BluetoothService;->btPANEnable:Z

    goto :goto_1

    .line 363
    :cond_5
    iget-boolean v2, p0, Landroid/server/BluetoothService;->btNAPAvailable:Z

    iput-boolean v2, p0, Landroid/server/BluetoothService;->btPANEnable:Z

    goto :goto_1

    .line 372
    :cond_6
    const-string v2, "BluetoothService"

    const-string v3, "mSapAvailable was set to FALSE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    return-object v0
.end method

.method static synthetic access$100(Landroid/server/BluetoothService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V

    return-void
.end method

.method static synthetic access$1002(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/server/BluetoothService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/server/BluetoothService;->listConnectionNative()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/server/BluetoothService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$1502(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    return-object p1
.end method

.method static synthetic access$1602(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 119
    sget v0, Landroid/server/BluetoothService;->mPolicy:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    sput p0, Landroid/server/BluetoothService;->mPolicy:I

    return p0
.end method

.method static synthetic access$300(Landroid/server/BluetoothService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 119
    sget-boolean v0, Landroid/server/BluetoothService;->DBG:Z

    return v0
.end method

.method static synthetic access$700(Landroid/server/BluetoothService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    sput-object p0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object p0
.end method

.method private native addMapServiceRecordNative(Ljava/lang/String;III)I
.end method

.method private declared-synchronized addReservedSdpRecords(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 842
    .local p1, uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 843
    .local v1, svcIdentifiers:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 845
    iget-boolean v2, p0, Landroid/server/BluetoothService;->btPANEnable:Z

    if-nez v2, :cond_1

    .line 846
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-static {v2}, Landroid/bluetooth/BluetoothUuid;->isPanu(Landroid/os/ParcelUuid;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-static {v2}, Landroid/bluetooth/BluetoothUuid;->isNap(Landroid/os/ParcelUuid;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 847
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-static {v2}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v2

    aput v2, v1, v0

    .line 843
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 850
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-static {v2}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v2

    aput v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 842
    .end local v0           #i:I
    .end local v1           #svcIdentifiers:[I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 853
    .restart local v0       #i:I
    .restart local v1       #svcIdentifiers:[I
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Landroid/server/BluetoothService;->addReservedServiceRecordsNative([I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 854
    monitor-exit p0

    return-void
.end method

.method private native addReservedServiceRecordsNative([I)[I
.end method

.method private native addRfcommServiceRecordNative(Ljava/lang/String;JJS)I
.end method

.method private autoConnect()V
    .locals 10

    .prologue
    .line 3785
    monitor-enter p0

    .line 3786
    :try_start_0
    iget-boolean v8, p0, Landroid/server/BluetoothService;->mAllowConnect:Z

    if-nez v8, :cond_1

    .line 3787
    const-string v8, "BluetoothService"

    const-string v9, "Not auto-connecting devices because of temporary BT on state."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3788
    monitor-exit p0

    .line 3805
    :cond_0
    return-void

    .line 3790
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3792
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getKnownDevices()[Ljava/lang/String;

    move-result-object v2

    .line 3793
    .local v2, bonds:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3796
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v1, v3

    .line 3797
    .local v6, path:Ljava/lang/String;
    invoke-virtual {p0, v6}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3798
    .local v0, address:Ljava/lang/String;
    iget-object v8, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3799
    .local v7, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v7, :cond_2

    .line 3800
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 3801
    .local v5, msg:Landroid/os/Message;
    const/16 v8, 0x65

    iput v8, v5, Landroid/os/Message;->what:I

    .line 3802
    invoke-virtual {v7, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3796
    .end local v5           #msg:Landroid/os/Message;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3790
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bonds:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method static bluezStringToScanMode(ZZ)I
    .locals 1
    .parameter "pairable"
    .parameter "discoverable"

    .prologue
    .line 3219
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3220
    const/16 v0, 0x17

    .line 3224
    :goto_0
    return v0

    .line 3221
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    .line 3222
    const/16 v0, 0x15

    goto :goto_0

    .line 3224
    :cond_1
    const/16 v0, 0x14

    goto :goto_0
.end method

.method private native cancelDeviceCreationNative(Ljava/lang/String;)Z
.end method

.method private native cancelPairingUserInputNative(Ljava/lang/String;I)Z
.end method

.method private declared-synchronized checkAndRemoveRecord(II)V
    .locals 4
    .parameter "handle"
    .parameter "pid"

    .prologue
    .line 2711
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothService$ServiceRecordClient;

    .line 2712
    .local v0, client:Landroid/server/BluetoothService$ServiceRecordClient;
    if-eqz v0, :cond_2

    iget v1, v0, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    if-ne p2, v1, :cond_2

    .line 2713
    sget-boolean v1, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    :cond_0
    iget-object v1, v0, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_1

    .line 2717
    iget-object v1, v0, Landroid/server/BluetoothService$ServiceRecordClient;->binder:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2720
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2721
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->removeServiceRecordNative(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2723
    :cond_2
    monitor-exit p0

    return-void

    .line 2711
    .end local v0           #client:Landroid/server/BluetoothService$ServiceRecordClient;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static checkBluetoothAddress(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 1370
    const/16 v0, 0x11

    .line 1372
    .local v0, ADDRESS_LENGTH:I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v0, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return v3

    .line 1375
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1376
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1377
    .local v1, c:C
    rem-int/lit8 v4, v2, 0x3

    packed-switch v4, :pswitch_data_0

    .line 1375
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1380
    :pswitch_0
    const/16 v4, 0x30

    if-lt v1, v4, :cond_3

    const/16 v4, 0x39

    if-le v1, v4, :cond_2

    :cond_3
    const/16 v4, 0x41

    if-lt v1, v4, :cond_0

    const/16 v4, 0x46

    if-gt v1, v4, :cond_0

    goto :goto_2

    .line 1386
    :pswitch_1
    const/16 v4, 0x3a

    if-ne v1, v4, :cond_0

    goto :goto_2

    .line 1392
    .end local v1           #c:C
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 1377
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private closeProfileProxy()V
    .locals 3

    .prologue
    .line 3190
    iget-object v0, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 3191
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 3193
    :cond_0
    return-void
.end method

.method private convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .locals 4
    .parameter "value"

    .prologue
    .line 1410
    const/4 v1, 0x0

    .line 1412
    .local v1, uuidStrings:[Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1413
    array-length v3, v1

    new-array v2, v3, [Landroid/os/ParcelUuid;

    .line 1415
    .local v2, uuids:[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1416
    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1418
    :cond_0
    return-object v2
.end method

.method private convertToAdapterState(I)I
    .locals 2
    .parameter "state"

    .prologue
    .line 4012
    packed-switch p1, :pswitch_data_0

    .line 4022
    const-string v0, "BluetoothService"

    const-string v1, "Error in convertToAdapterState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4023
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 4014
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4016
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 4018
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 4020
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 4012
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized createBondLE(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 1623
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->createDeviceNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1624
    const/4 v0, 0x0

    .line 1628
    :goto_0
    monitor-exit p0

    return v0

    .line 1626
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->setPendingOutgoingBonding(Ljava/lang/String;)V

    .line 1627
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1628
    const/4 v0, 0x1

    goto :goto_0

    .line 1623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native createDeviceNative(Ljava/lang/String;)Z
.end method

.method private createIncomingConnectionStateFile()V
    .locals 4

    .prologue
    .line 4063
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/bluetooth/incoming_connection.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4064
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4066
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4071
    :cond_0
    :goto_0
    return-void

    .line 4067
    :catch_0
    move-exception v0

    .line 4068
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothService"

    const-string v3, "IOException: cannot create file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native createPairedDeviceNative(Ljava/lang/String;I)Z
.end method

.method private native createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z
.end method

.method private native disconnectAllConnectionsNative()Z
.end method

.method private dumpAclConnectedDevices(Ljava/io/PrintWriter;)V
    .locals 6
    .parameter "pw"

    .prologue
    .line 3143
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getKnownDevices()[Ljava/lang/String;

    move-result-object v2

    .line 3144
    .local v2, devicesObjectPath:[Ljava/lang/String;
    const-string v5, "\n--ACL connected devices--"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3145
    if-eqz v2, :cond_0

    .line 3146
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 3147
    .local v1, device:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3146
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3150
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #device:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-void
.end method

.method private dumpApplicationServiceRecords(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 3135
    const-string v3, "\n--Application Service Records--"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3136
    iget-object v3, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3137
    .local v0, handle:Ljava/lang/Integer;
    iget-object v3, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/server/BluetoothService$ServiceRecordClient;

    iget v3, v3, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3138
    .local v2, pid:Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tpid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3140
    .end local v0           #handle:Ljava/lang/Integer;
    .end local v2           #pid:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private dumpHeadsetConnectionState(Ljava/io/PrintWriter;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "pw"
    .parameter "device"

    .prologue
    .line 3118
    iget-object v0, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3132
    :goto_0
    return-void

    .line 3120
    :sswitch_0
    const-string v0, "getConnectionState() = STATE_CONNECTING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3123
    :sswitch_1
    const-string v0, "getConnectionState() = STATE_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3126
    :sswitch_2
    const-string v0, "getConnectionState() = STATE_DISCONNECTING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3129
    :sswitch_3
    const-string v0, "getConnectionState() = STATE_AUDIO_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3118
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method private dumpHeadsetService(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 3023
    const-string v3, "\n--Headset Service--"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3024
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_2

    .line 3025
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 3026
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 3027
    const-string v3, "No headsets connected"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3036
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3037
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 3039
    const-string v3, "--Connected and Disconnected Headsets"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 3041
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3042
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCO audio connected to device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3029
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 3030
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ngetConnectedDevices[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3031
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->dumpHeadsetConnectionState(Ljava/io/PrintWriter;Landroid/bluetooth/BluetoothDevice;)V

    .line 3032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBatteryUsageHint() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3047
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    return-void

    .line 3037
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private dumpInputDeviceProfile(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 3050
    const-string v3, "\n--Bluetooth Service- Input Device Profile"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v3, :cond_1

    .line 3052
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 3053
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 3054
    const-string v3, "No input devices connected"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3074
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothInputDevice;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 3076
    const-string v3, "--Connected and Disconnected input devices"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 3078
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 3056
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of connected devices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3057
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 3058
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDevices[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Priority of Connected device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 3063
    :pswitch_0
    const-string v3, "getConnectionState() = STATE_CONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3066
    :pswitch_1
    const-string v3, "getConnectionState() = STATE_CONNECTED"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3069
    :pswitch_2
    const-string v3, "getConnectionState() = STATE_DISCONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3081
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    return-void

    .line 3074
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 3061
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private dumpKnownDevices(Ljava/io/PrintWriter;)V
    .locals 12
    .parameter "pw"

    .prologue
    .line 3153
    const-string v8, "\n--Known devices--"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3154
    iget-object v8, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v8}, Landroid/server/BluetoothDeviceProperties;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3155
    .local v0, address:Ljava/lang/String;
    iget-object v8, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v8, v0}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v1

    .line 3156
    .local v1, bondState:I
    const-string v8, "%s %10s (%d) %s\n"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Landroid/server/BluetoothService;->toBondStateString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v11, v0}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3161
    iget-object v8, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 3162
    .local v7, uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-nez v7, :cond_3

    .line 3163
    const-string v8, "\tuuids = null"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3174
    :cond_1
    iget-object v8, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/server/BluetoothService$RemoteService;

    .line 3175
    .local v5, service:Landroid/server/BluetoothService$RemoteService;
    iget-object v8, v5, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\tPENDING CALLBACK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3165
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_3
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 3166
    .local v6, uuid:Landroid/os/ParcelUuid;
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3167
    .local v2, channel:Ljava/lang/Integer;
    if-nez v2, :cond_4

    .line 3168
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3170
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RFCOMM channel = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3180
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #bondState:I
    .end local v2           #channel:Ljava/lang/Integer;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #uuid:Landroid/os/ParcelUuid;
    .end local v7           #uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :cond_5
    return-void
.end method

.method private dumpPanProfile(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 3084
    const-string v3, "\n--Bluetooth Service- Pan Profile"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3085
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v3, :cond_1

    .line 3086
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 3087
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 3088
    const-string v3, "No Pan devices connected"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3106
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3107
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothPan;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 3109
    const-string v3, "--Connected and Disconnected Pan devices"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 3111
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 3090
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of connected devices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3091
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 3092
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDevices[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3094
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 3096
    :pswitch_0
    const-string v3, "getConnectionState() = STATE_CONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3099
    :pswitch_1
    const-string v3, "getConnectionState() = STATE_CONNECTED"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3102
    :pswitch_2
    const-string v3, "getConnectionState() = STATE_DISCONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3114
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    return-void

    .line 3107
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 3094
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private dumpProfileState(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "pw"

    .prologue
    .line 3011
    const-string v0, "\n--Profile State dump--"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n Headset profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n A2dp profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n HID profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n PAN profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3020
    return-void
.end method

.method private native gattGetRemoteServicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private native gattRegisterCharWatcherNative(Ljava/lang/String;)Z
.end method

.method private native gattUnregisterCharWatcherNative(Ljava/lang/String;)Z
.end method

.method private getAddressFromPathfile()Ljava/lang/String;
    .locals 13

    .prologue
    .line 1336
    const/4 v9, 0x0

    .line 1337
    .local v9, mReadSuccess:Z
    const/4 v0, 0x0

    .line 1338
    .local v0, address:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1339
    .local v2, br:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 1340
    .local v5, f:Ljava/io/File;
    const-string/jumbo v10, "ro.bt.bdaddr_path"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1343
    .local v1, bdaddr_path:Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1344
    .end local v5           #f:Ljava/io/File;
    .local v6, f:Ljava/io/File;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v10

    if-nez v10, :cond_0

    .line 1345
    const/4 v9, 0x0

    .line 1361
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :goto_1
    move-object v5, v6

    .line 1366
    .end local v6           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    :goto_2
    const-string v10, "BluetoothService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mReadSuccess = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    return-object v0

    .line 1347
    .end local v5           #f:Ljava/io/File;
    .restart local v6       #f:Ljava/io/File;
    :cond_0
    :try_start_3
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1348
    .local v7, fstream:Ljava/io/FileInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1349
    .local v8, in:Ljava/io/DataInputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 1350
    .end local v2           #br:Ljava/io/BufferedReader;
    .local v3, br:Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1352
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/server/BluetoothService;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-result v10

    if-eqz v10, :cond_1

    .line 1353
    const/4 v9, 0x1

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_0

    .line 1355
    .end local v6           #f:Ljava/io/File;
    .end local v7           #fstream:Ljava/io/FileInputStream;
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v5       #f:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 1356
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1361
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1362
    :catch_1
    move-exception v4

    .line 1363
    .local v4, e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1357
    .end local v4           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 1358
    .local v4, e:Ljava/io/IOException;
    :goto_5
    :try_start_7
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1361
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 1362
    :catch_3
    move-exception v4

    goto :goto_4

    .line 1360
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 1361
    :goto_6
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1360
    :goto_7
    throw v10

    .line 1362
    :catch_4
    move-exception v4

    .line 1363
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1362
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #f:Ljava/io/File;
    .restart local v6       #f:Ljava/io/File;
    :catch_5
    move-exception v4

    .line 1363
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1360
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    goto :goto_6

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v5           #f:Ljava/io/File;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v6       #f:Ljava/io/File;
    .restart local v7       #fstream:Ljava/io/FileInputStream;
    .restart local v8       #in:Ljava/io/DataInputStream;
    :catchall_2
    move-exception v10

    move-object v5, v6

    .end local v6           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_6

    .line 1357
    .end local v5           #f:Ljava/io/File;
    .end local v7           #fstream:Ljava/io/FileInputStream;
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v6       #f:Ljava/io/File;
    :catch_6
    move-exception v4

    move-object v5, v6

    .end local v6           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    goto :goto_5

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v5           #f:Ljava/io/File;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v6       #f:Ljava/io/File;
    .restart local v7       #fstream:Ljava/io/FileInputStream;
    .restart local v8       #in:Ljava/io/DataInputStream;
    :catch_7
    move-exception v4

    move-object v5, v6

    .end local v6           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 1355
    .end local v5           #f:Ljava/io/File;
    .end local v7           #fstream:Ljava/io/FileInputStream;
    .end local v8           #in:Ljava/io/DataInputStream;
    .restart local v6       #f:Ljava/io/File;
    :catch_8
    move-exception v4

    move-object v5, v6

    .end local v6           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    goto :goto_3

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v5           #f:Ljava/io/File;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v6       #f:Ljava/io/File;
    .restart local v7       #fstream:Ljava/io/FileInputStream;
    .restart local v8       #in:Ljava/io/DataInputStream;
    :catch_9
    move-exception v4

    move-object v5, v6

    .end local v6           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v5           #f:Ljava/io/File;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v6       #f:Ljava/io/File;
    :cond_1
    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private getCharacteristicsFromCache(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "servicePath"

    .prologue
    .line 2113
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "Characteristics"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2114
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2115
    const/4 v0, 0x0

    .line 2120
    :goto_0
    return-object v0

    .line 2117
    :cond_0
    const/4 v0, 0x0

    .line 2119
    .local v0, paths:[Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2120
    goto :goto_0
.end method

.method private native getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private getDeviceServiceChannelForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    .locals 3
    .parameter "address"
    .parameter "uuid"

    .prologue
    .line 2643
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2644
    .local v0, objectPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2645
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Landroid/server/BluetoothService;->getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 2647
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private native getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private getDeviceServiceHdpDataTypeForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)[I
    .locals 3
    .parameter "address"
    .parameter "uuid"

    .prologue
    .line 2653
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2654
    .local v0, objectPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2655
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x200

    invoke-direct {p0, v0, v1, v2}, Landroid/server/BluetoothService;->getDeviceServiceHdpDataTypeNative(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v1

    check-cast v1, [I

    .line 2657
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private native getDeviceServiceHdpDataTypeNative(Ljava/lang/String;Ljava/lang/String;I)[I
.end method

.method private getProfileProxy()V
    .locals 4

    .prologue
    .line 3183
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 3185
    return-void
.end method

.method private initProfileState()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3770
    const/4 v2, 0x0

    .line 3771
    .local v2, bonds:[Ljava/lang/String;
    const-string v7, "Devices"

    invoke-virtual {p0, v7, v8}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 3772
    .local v6, val:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 3773
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3775
    :cond_0
    if-nez v2, :cond_2

    .line 3782
    :cond_1
    return-void

    .line 3778
    :cond_2
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3779
    .local v5, path:Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3780
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0, v0, v8}, Landroid/server/BluetoothService;->addProfileState(Ljava/lang/String;Z)Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3778
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private native initializeNativeDataNative()V
.end method

.method private isBondingFeasible(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1549
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1592
    :cond_0
    :goto_0
    return v2

    .line 1553
    :cond_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1556
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1559
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v0

    .line 1560
    .local v0, bp:Landroid/sec/enterprise/BluetoothPolicy;
    new-instance v3, Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteClass(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    .line 1561
    .local v1, btClass:I
    const/16 v3, 0x100

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Landroid/sec/enterprise/BluetoothPolicy;->isDesktopConnectivityEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1563
    const-string v3, "BluetoothService"

    const-string v4, "MDM: Desktop Bonding is blocked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1566
    :cond_2
    invoke-static {p1}, Landroid/sec/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1567
    const-string v3, "BluetoothService"

    const-string v4, "MDM pairing is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1572
    :cond_3
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3}, Landroid/server/BluetoothBondState;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1573
    const-string v3, "BluetoothService"

    const-string v4, "Ignoring createBond(): another device is bonding"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1580
    :cond_4
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_5

    .line 1582
    const-string v3, "BluetoothService"

    const-string v4, "Ignoring createBond(): this device is already bonding or bonded"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1586
    :cond_5
    sget-object v3, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1587
    invoke-direct {p0}, Landroid/server/BluetoothService;->writeDockPin()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1588
    const-string v3, "BluetoothService"

    const-string v4, "Error while writing Pin for the dock"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1592
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private isEnabledInternal()Z
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native isEnabledNative()I
.end method

.method private native isGattDiscoverCharInProgressNative(Ljava/lang/String;)Z
.end method

.method private native listConnectionNative()I
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 4190
    const-string v0, "BluetoothService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    return-void
.end method

.method private pairingAttempt(Ljava/lang/String;I)V
    .locals 10
    .parameter "address"
    .parameter "result"

    .prologue
    const-wide/16 v8, 0xbb8

    const/16 v7, 0xa

    .line 1075
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    .line 1076
    .local v0, attempt:I
    int-to-long v3, v0

    mul-long/2addr v3, v8

    const-wide/16 v5, 0x2ee0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 1078
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1084
    .local v1, message:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1085
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    int-to-long v4, v0

    mul-long/2addr v4, v8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    .line 1087
    .local v2, postResult:Z
    if-nez v2, :cond_0

    .line 1088
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private native readAdapterOutOfBandDataNative()[B
.end method

.method public static declared-synchronized readDockBluetoothAddress()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 377
    const-class v6, Landroid/server/BluetoothService;

    monitor-enter v6

    :try_start_0
    sget-object v7, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    if-eqz v7, :cond_1

    sget-object v5, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :cond_0
    :goto_0
    monitor-exit v6

    return-object v5

    .line 379
    :cond_1
    const/4 v3, 0x0

    .line 382
    .local v3, file:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "/sys/class/switch/dock/bt_addr"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 383
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .local v4, file:Ljava/io/BufferedInputStream;
    const/16 v7, 0x11

    :try_start_2
    new-array v0, v7, [B

    .line 384
    .local v0, address:[B
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 385
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 386
    .local v1, dockAddress:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 388
    sput-object v1, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    .line 389
    sget-object v5, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 399
    if-eqz v4, :cond_0

    .line 401
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v7

    goto :goto_0

    .line 391
    :cond_2
    :try_start_4
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CheckBluetoothAddress failed for car dock address: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 399
    if-eqz v4, :cond_3

    .line 401
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_3
    :goto_1
    move-object v3, v4

    .line 407
    .end local v0           #address:[B
    .end local v1           #dockAddress:Ljava/lang/String;
    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    :cond_4
    :goto_2
    const/4 v7, 0x0

    :try_start_6
    sput-object v7, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 394
    :catch_1
    move-exception v2

    .line 395
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_7
    const-string v7, "BluetoothService"

    const-string v8, "FileNotFoundException while trying to read dock address"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 399
    if-eqz v3, :cond_4

    .line 401
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 402
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    goto :goto_2

    .line 396
    :catch_3
    move-exception v2

    .line 397
    .local v2, e:Ljava/io/IOException;
    :goto_4
    :try_start_9
    const-string v7, "BluetoothService"

    const-string v8, "IOException while trying to read dock address"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 399
    if-eqz v3, :cond_4

    .line 401
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 399
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    :goto_5
    if-eqz v3, :cond_5

    .line 401
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 399
    :cond_5
    :goto_6
    :try_start_c
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 402
    :catch_4
    move-exception v7

    goto :goto_6

    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v0       #address:[B
    .restart local v1       #dockAddress:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v7

    goto :goto_1

    .line 399
    .end local v0           #address:[B
    .end local v1           #dockAddress:Ljava/lang/String;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 396
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 394
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method private readIncomingConnectionState()V
    .locals 14

    .prologue
    .line 4083
    iget-object v12, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    monitor-enter v12

    .line 4084
    const/4 v3, 0x0

    .line 4085
    .local v3, fstream:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 4086
    .local v5, in:Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 4088
    .local v1, file:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v11, "/data/misc/bluetooth/incoming_connection.conf"

    invoke-direct {v4, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4089
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v4, fstream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d

    .line 4090
    .end local v5           #in:Ljava/io/DataInputStream;
    .local v6, in:Ljava/io/DataInputStream;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e

    .line 4092
    .end local v1           #file:Ljava/io/BufferedReader;
    .local v2, file:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 4093
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 4094
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 4095
    const-string v11, ","

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 4096
    .local v10, value:[Ljava/lang/String;
    if-eqz v10, :cond_0

    array-length v11, v10

    const/4 v13, 0x3

    if-ne v11, v13, :cond_0

    .line 4097
    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 4098
    .local v9, val1:Ljava/lang/Integer;
    new-instance v8, Landroid/util/Pair;

    const/4 v11, 0x2

    aget-object v11, v10, v11

    invoke-direct {v8, v9, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4099
    .local v8, val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v11, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-virtual {v11, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f

    goto :goto_0

    .line 4102
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9           #val1:Ljava/lang/Integer;
    .end local v10           #value:[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 4103
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileNotFoundException: readIncomingConnectionState"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4108
    if-eqz v3, :cond_1

    .line 4109
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 4113
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 4114
    :try_start_6
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 4117
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 4118
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 4121
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_4
    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4122
    return-void

    .line 4108
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    .restart local v7       #line:Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_5

    .line 4109
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 4113
    :cond_5
    :goto_5
    if-eqz v6, :cond_6

    .line 4114
    :try_start_a
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    .line 4117
    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    .line 4118
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    :cond_7
    :goto_7
    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 4120
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 4104
    .end local v7           #line:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 4105
    .local v0, e:Ljava/io/IOException;
    :goto_8
    :try_start_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: readIncomingConnectionState"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 4108
    if-eqz v3, :cond_8

    .line 4109
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 4113
    :cond_8
    :goto_9
    if-eqz v5, :cond_9

    .line 4114
    :try_start_e
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 4117
    :cond_9
    :goto_a
    if-eqz v1, :cond_3

    .line 4118
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_4

    .line 4119
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v11

    goto :goto_4

    .line 4107
    :catchall_0
    move-exception v11

    .line 4108
    :goto_b
    if-eqz v3, :cond_a

    .line 4109
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    .line 4113
    :cond_a
    :goto_c
    if-eqz v5, :cond_b

    .line 4114
    :try_start_11
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    .line 4117
    :cond_b
    :goto_d
    if-eqz v1, :cond_c

    .line 4118
    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    .line 4107
    :cond_c
    :goto_e
    :try_start_13
    throw v11

    .line 4121
    :catchall_1
    move-exception v11

    :goto_f
    monitor-exit v12
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    throw v11

    .line 4110
    :catch_3
    move-exception v13

    goto :goto_c

    .line 4115
    :catch_4
    move-exception v13

    goto :goto_d

    .line 4119
    :catch_5
    move-exception v13

    goto :goto_e

    .line 4110
    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v11

    goto :goto_2

    .line 4115
    :catch_7
    move-exception v11

    goto :goto_3

    .line 4110
    .local v0, e:Ljava/io/IOException;
    :catch_8
    move-exception v11

    goto :goto_9

    .line 4115
    :catch_9
    move-exception v11

    goto :goto_a

    .line 4110
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    .restart local v7       #line:Ljava/lang/String;
    :catch_a
    move-exception v11

    goto :goto_5

    .line 4115
    :catch_b
    move-exception v11

    goto :goto_6

    .line 4119
    :catch_c
    move-exception v11

    goto :goto_7

    .line 4121
    :catchall_2
    move-exception v11

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_f

    .line 4107
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v7           #line:Ljava/lang/String;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v11

    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_b

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catchall_4
    move-exception v11

    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_b

    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catchall_5
    move-exception v11

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_b

    .line 4104
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    :catch_d
    move-exception v0

    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_e
    move-exception v0

    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v2       #file:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_f
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/BufferedReader;
    .restart local v1       #file:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto :goto_8

    .line 4102
    :catch_10
    move-exception v0

    goto/16 :goto_1

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    :catch_11
    move-exception v0

    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_12
    move-exception v0

    move-object v5, v6

    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 2928
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2929
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "airplane_mode_radios"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2931
    .local v0, airplaneModeRadios:Ljava/lang/String;
    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2934
    .local v2, toggleableRadios:Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    .line 2936
    if-nez v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    .line 2939
    iget-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    if-eqz v3, :cond_0

    .line 2940
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2942
    :cond_0
    return-void

    .line 2934
    :cond_1
    const-string v3, "bluetooth"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_0

    .line 2936
    :cond_2
    const-string v3, "bluetooth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_1
.end method

.method private native removeDeviceNative(Ljava/lang/String;)Z
.end method

.method private native removeReservedServiceRecordsNative([I)Z
.end method

.method private native removeServiceRecordNative(I)Z
.end method

.method static scanModeToBluezString(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 3228
    packed-switch p0, :pswitch_data_0

    .line 3236
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3230
    :pswitch_1
    const-string/jumbo v0, "off"

    goto :goto_0

    .line 3232
    :pswitch_2
    const-string v0, "connectable"

    goto :goto_0

    .line 3234
    :pswitch_3
    const-string v0, "discoverable"

    goto :goto_0

    .line 3228
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private native setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private setAlarmService()V
    .locals 2

    .prologue
    .line 1187
    iget-object v0, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 1188
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    .line 1190
    :cond_0
    return-void
.end method

.method private native setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native setDevicePropertyStringNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native setLinkTimeoutNative(Ljava/lang/String;I)Z
.end method

.method private native setPairingConfirmationNative(Ljava/lang/String;ZI)Z
.end method

.method private native setPasskeyNative(Ljava/lang/String;II)Z
.end method

.method private native setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private setPropertyBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 1138
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1140
    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method private setPropertyInteger(Ljava/lang/String;I)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1132
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1134
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method private setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1126
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1128
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private native setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z
.end method

.method private native setupNativeDataNative()Z
.end method

.method private native startDiscoveryNative()Z
.end method

.method private native stopDiscoveryNative()Z
.end method

.method private native tearDownNativeDataNative()Z
.end method

.method private static toBondStateString(I)Ljava/lang/String;
    .locals 1
    .parameter "bondState"

    .prologue
    .line 1100
    packed-switch p0, :pswitch_data_0

    .line 1108
    const-string v0, "??????"

    :goto_0
    return-object v0

    .line 1102
    :pswitch_0
    const-string/jumbo v0, "not bonded"

    goto :goto_0

    .line 1104
    :pswitch_1
    const-string v0, "bonding"

    goto :goto_0

    .line 1106
    :pswitch_2
    const-string v0, "bonded"

    goto :goto_0

    .line 1100
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private truncateIncomingConnectionFile()V
    .locals 5

    .prologue
    .line 4125
    const/4 v1, 0x0

    .line 4127
    .local v1, r:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/data/misc/bluetooth/incoming_connection.conf"

    const-string/jumbo v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4128
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .local v2, r:Ljava/io/RandomAccessFile;
    const-wide/16 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 4134
    if-eqz v2, :cond_0

    .line 4136
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v1, v2

    .line 4142
    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return-void

    .line 4129
    :catch_0
    move-exception v0

    .line 4130
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException: truncateIncomingConnectionState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4134
    if-eqz v1, :cond_1

    .line 4136
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 4137
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    goto :goto_1

    .line 4131
    :catch_2
    move-exception v0

    .line 4132
    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: truncateIncomingConnectionState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4134
    if-eqz v1, :cond_1

    .line 4136
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 4134
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v1, :cond_2

    .line 4136
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 4134
    :cond_2
    :goto_5
    throw v3

    .line 4137
    :catch_3
    move-exception v4

    goto :goto_5

    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v3

    goto :goto_0

    .line 4134
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 4131
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 4129
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private updateCountersAndCheckForConnectionStateChange(II)Z
    .locals 3
    .parameter "state"
    .parameter "prevState"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 4027
    packed-switch p2, :pswitch_data_0

    .line 4041
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 4058
    :cond_0
    :goto_1
    return v0

    .line 4029
    :pswitch_0
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    goto :goto_0

    .line 4033
    :pswitch_1
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    goto :goto_0

    .line 4037
    :pswitch_2
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    goto :goto_0

    .line 4043
    :pswitch_3
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    .line 4044
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-nez v2, :cond_1

    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    if-eq v2, v0, :cond_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 4047
    :pswitch_4
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    .line 4048
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_1

    .line 4051
    :pswitch_5
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    .line 4052
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-nez v2, :cond_2

    iget v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    if-eq v2, v0, :cond_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 4055
    :pswitch_6
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-nez v2, :cond_3

    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 4027
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 4041
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateProfileConnectionState(III)V
    .locals 10
    .parameter "profile"
    .parameter "newState"
    .parameter "oldState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 3905
    const/4 v2, 0x1

    .line 3906
    .local v2, numDev:I
    move v1, p2

    .line 3907
    .local v1, newHashState:I
    const/4 v4, 0x1

    .line 3919
    .local v4, update:Z
    iget-object v5, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 3920
    .local v3, stateNumDev:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    .line 3921
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3922
    .local v0, currHashState:I
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3924
    if-ne p2, v0, :cond_2

    .line 3925
    add-int/lit8 v2, v2, 0x1

    .line 3944
    .end local v0           #currHashState:I
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 3945
    iget-object v5, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3948
    :cond_1
    return-void

    .line 3926
    .restart local v0       #currHashState:I
    :cond_2
    if-eq p2, v8, :cond_3

    if-ne p2, v7, :cond_4

    if-eq v0, v8, :cond_4

    .line 3929
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 3930
    :cond_4
    if-ne v2, v7, :cond_5

    if-ne p3, v0, :cond_5

    .line 3931
    const/4 v4, 0x1

    goto :goto_0

    .line 3932
    :cond_5
    if-le v2, v7, :cond_7

    if-ne p3, v0, :cond_7

    .line 3933
    add-int/lit8 v2, v2, -0x1

    .line 3935
    if-eq v0, v8, :cond_6

    if-ne v0, v7, :cond_0

    .line 3937
    :cond_6
    move v1, v0

    goto :goto_0

    .line 3940
    :cond_7
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateSdpRecords()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    .line 857
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v3, uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 862
    .local v0, R:Landroid/content/res/Resources;
    const v4, 0x111002c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 863
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    :cond_0
    const v4, 0x111002a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 869
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_1
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    invoke-direct {p0, v3}, Landroid/server/BluetoothService;->addReservedSdpRecords(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    const-wide/16 v4, 0x32

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 882
    :goto_0
    const v4, 0x111002c

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 886
    iget-boolean v4, p0, Landroid/server/BluetoothService;->btPANEnable:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    const-string/jumbo v5, "nap"

    const-string/jumbo v6, "pan1"

    invoke-virtual {p0, v4, v5, v6}, Landroid/server/BluetoothService;->setBluetoothTetheringNative(ZLjava/lang/String;Ljava/lang/String;)Z

    .line 891
    :cond_2
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    iget-boolean v4, p0, Landroid/server/BluetoothService;->btPANEnable:Z

    if-eqz v4, :cond_3

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    :cond_3
    iget-boolean v4, p0, Landroid/server/BluetoothService;->mMapAvailable:Z

    if-eqz v4, :cond_5

    .line 900
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-ne v4, v2, :cond_4

    const/4 v2, 0x4

    .line 901
    .local v2, supportedTypes:I
    :cond_4
    const-string v4, "Android SMS"

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-direct {p0, v4, v5, v2, v6}, Landroid/server/BluetoothService;->addMapServiceRecordNative(Ljava/lang/String;III)I

    move-result v4

    iput v4, p0, Landroid/server/BluetoothService;->mMapRecordHandle:I

    .line 904
    .end local v2           #supportedTypes:I
    :cond_5
    iget-boolean v4, p0, Landroid/server/BluetoothService;->mSapAvailable:Z

    if-eqz v4, :cond_6

    .line 905
    const-string v4, "BluetoothService"

    const-string v5, "mSapAvailable is true"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual {p0}, Landroid/server/BluetoothService;->addSapServiceRecordNative()Z

    .line 910
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/ParcelUuid;

    iput-object v4, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    .line 911
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 912
    iget-object v5, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    aput-object v4, v5, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 911
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 880
    .end local v1           #i:I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 914
    .restart local v1       #i:I
    :cond_7
    monitor-exit p0

    return-void

    .line 857
    .end local v0           #R:Landroid/content/res/Resources;
    .end local v1           #i:I
    .end local v3           #uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private validateProfileConnectionState(I)Z
    .locals 2
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    .line 4005
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized writeDockPin()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 412
    monitor-enter p0

    const/4 v1, 0x0

    .line 414
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/sys/class/switch/dock/bt_pin"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 418
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c3880000000000L

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 420
    .local v3, pin:I
    const-string v6, "%04d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    .line 421
    iget-object v6, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 428
    if-eqz v2, :cond_0

    .line 430
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v1, v2

    .line 437
    .end local v2           #out:Ljava/io/BufferedWriter;
    .end local v3           #pin:I
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :goto_1
    monitor-exit p0

    return v4

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v4, "BluetoothService"

    const-string v6, "FileNotFoundException while trying to write dock pairing pin"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 428
    if-eqz v1, :cond_1

    .line 430
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 436
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    const/4 v4, 0x0

    :try_start_5
    iput-object v4, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v4, v5

    .line 437
    goto :goto_1

    .line 425
    :catch_1
    move-exception v0

    .line 426
    .local v0, e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v4, "BluetoothService"

    const-string v6, "IOException while while trying to write dock pairing pin"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 428
    if-eqz v1, :cond_1

    .line 430
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 431
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    goto :goto_3

    .line 428
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v1, :cond_2

    .line 430
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 428
    :cond_2
    :goto_6
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 412
    :catchall_1
    move-exception v4

    :goto_7
    monitor-exit p0

    throw v4

    .line 431
    :catch_3
    move-exception v5

    goto :goto_6

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #pin:I
    :catch_4
    move-exception v5

    goto :goto_0

    .line 428
    .end local v3           #pin:I
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 425
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 423
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 412
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #pin:I
    :catchall_3
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_7
.end method


# virtual methods
.method addProfileState(Ljava/lang/String;Z)Landroid/bluetooth/BluetoothDeviceProfileState;
    .locals 6
    .parameter "address"
    .parameter "setTrust"

    .prologue
    .line 3745
    new-instance v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    move-object v2, p1

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothDeviceProfileState;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/server/BluetoothService;Landroid/server/BluetoothA2dpService;Z)V

    .line 3747
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3748
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->start()V

    .line 3749
    return-object v0
.end method

.method public declared-synchronized addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I
    .locals 11
    .parameter "serviceName"
    .parameter "uuid"
    .parameter "channel"
    .parameter "b"

    .prologue
    const/4 v10, -0x1

    .line 2667
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v9, v10

    .line 2697
    :goto_0
    monitor-exit p0

    return v9

    .line 2670
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-lt p3, v0, :cond_1

    const/16 v0, 0x1e

    if-le p3, v0, :cond_2

    :cond_1
    move v9, v10

    .line 2672
    goto :goto_0

    .line 2674
    :cond_2
    :try_start_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->RESERVED_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2675
    sget-boolean v0, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to register a reserved UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v9, v10

    .line 2676
    goto :goto_0

    .line 2678
    :cond_4
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    int-to-short v6, p3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/server/BluetoothService;->addRfcommServiceRecordNative(Ljava/lang/String;JJS)I

    move-result v9

    .line 2681
    .local v9, handle:I
    sget-boolean v0, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    :cond_5
    if-ne v9, v10, :cond_6

    move v9, v10

    .line 2683
    goto :goto_0

    .line 2686
    :cond_6
    new-instance v7, Landroid/server/BluetoothService$ServiceRecordClient;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Landroid/server/BluetoothService$ServiceRecordClient;-><init>(Landroid/server/BluetoothService$1;)V

    .line 2687
    .local v7, client:Landroid/server/BluetoothService$ServiceRecordClient;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    .line 2688
    iput-object p4, v7, Landroid/server/BluetoothService$ServiceRecordClient;->binder:Landroid/os/IBinder;

    .line 2689
    new-instance v0, Landroid/server/BluetoothService$Reaper;

    iget v1, v7, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    const/16 v2, 0xa

    invoke-direct {v0, p0, v9, v1, v2}, Landroid/server/BluetoothService$Reaper;-><init>(Landroid/server/BluetoothService;III)V

    iput-object v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    .line 2690
    iget-object v0, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2692
    :try_start_2
    iget-object v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p4, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2693
    :catch_0
    move-exception v8

    .line 2694
    .local v8, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v0, "BluetoothService"

    const-string v1, ""

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2695
    const/4 v0, 0x0

    iput-object v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2667
    .end local v7           #client:Landroid/server/BluetoothService$ServiceRecordClient;
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v9           #handle:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native addSapServiceRecordNative()Z
.end method

.method public allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 6
    .parameter "device"
    .parameter "allow"

    .prologue
    const/4 v2, 0x0

    .line 3503
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3505
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3506
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3517
    :cond_0
    :goto_0
    return v2

    .line 3510
    :cond_1
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 3511
    .local v1, data:Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 3512
    sget-boolean v3, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowIncomingProfileConnect("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") called but no native data available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3516
    :cond_2
    sget-boolean v2, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowIncomingProfileConnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 3517
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, p2, v2}, Landroid/server/BluetoothService;->setAuthorizationNative(Ljava/lang/String;ZI)Z

    move-result v2

    goto :goto_0
.end method

.method allowIncomingTethering()Z
    .locals 6

    .prologue
    .line 3319
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v2

    .line 3320
    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3321
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3322
    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3323
    const/4 v1, 0x0

    monitor-exit v2

    .line 3325
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v1}, Landroid/server/BluetoothPanProfileHandler;->allowIncomingTethering()Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 3326
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method declared-synchronized attemptAutoPair(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 996
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->hasAutoPairingFailed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingBlacklisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 998
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->attempt(Ljava/lang/String;)V

    .line 999
    const-string v0, "0000"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    const/4 v0, 0x1

    .line 1002
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 996
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelBondProcess(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 1687
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1702
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1691
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1694
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1695
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 1699
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V

    .line 1701
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->cancelDeviceCreationNative(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1702
    const/4 v0, 0x1

    goto :goto_0

    .line 1687
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelDiscovery()Z
    .locals 3

    .prologue
    .line 1530
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1534
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->stopDiscoveryNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelPairingUserInput(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 2542
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 2559
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 2546
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2549
    iget-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v3, 0xa

    const/4 v4, 0x3

    invoke-virtual {v2, p1, v3, v4}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V

    .line 2551
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2552
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2553
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 2554
    sget-boolean v2, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothService"

    const-string v3, "cancelUserInputNative(address) called but no native data available, ignoring. Maybe the PasskeyAgent Request was already cancelled by the remote or by bluez.\n"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2542
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2559
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->cancelPairingUserInputNative(Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public changeApplicationBluetoothState(ZLandroid/bluetooth/IBluetoothStateChangeCallback;Landroid/os/IBinder;)Z
    .locals 7
    .parameter "on"
    .parameter "callback"
    .parameter "binder"

    .prologue
    const/4 v3, 0x0

    .line 2757
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "Need BLUETOOTH permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2761
    .local v1, pid:I
    iget-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2762
    if-eqz p1, :cond_2

    .line 2763
    iget-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2771
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 2773
    :try_start_0
    new-instance v4, Landroid/server/BluetoothService$Reaper;

    const/16 v5, 0xb

    invoke-direct {v4, p0, v1, v5}, Landroid/server/BluetoothService$Reaper;-><init>(Landroid/server/BluetoothService;II)V

    const/4 v5, 0x0

    invoke-interface {p3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2781
    :cond_1
    if-eqz p1, :cond_4

    .line 2782
    const/4 v2, 0x3

    .line 2787
    .local v2, type:I
    :goto_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v3, v2, p2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2788
    const/4 v3, 0x1

    .end local v2           #type:I
    :cond_2
    :goto_2
    return v3

    .line 2767
    :cond_3
    if-nez p1, :cond_0

    .line 2768
    iget-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2774
    :catch_0
    move-exception v0

    .line 2775
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothService"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2784
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    const/4 v2, 0x4

    .restart local v2       #type:I
    goto :goto_1
.end method

.method declared-synchronized cleanNativeAfterShutoffBluetooth()V
    .locals 1

    .prologue
    .line 663
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterProperties;->clear()V

    .line 664
    invoke-virtual {p0}, Landroid/server/BluetoothService;->disableNative()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    monitor-exit p0

    return-void

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized cleanupAfterFinishDisable()V
    .locals 5

    .prologue
    .line 609
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v4}, Landroid/server/BluetoothAdapterProperties;->clear()V

    .line 611
    iget-object v4, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 612
    .local v3, srHandle:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/server/BluetoothService;->removeServiceRecordNative(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 609
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #srHandle:Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 614
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 616
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    .line 617
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    .line 618
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    .line 619
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    .line 620
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    .line 621
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I

    .line 625
    iget-object v4, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v4}, Landroid/server/BluetoothBondState;->close()V

    .line 626
    invoke-direct {p0}, Landroid/server/BluetoothService;->closeProfileProxy()V

    .line 630
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 632
    .local v1, ident:J
    :try_start_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOff()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 635
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 637
    :goto_1
    monitor-exit p0

    return-void

    .line 635
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 633
    :catch_0
    move-exception v4

    .line 635
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method clearApplicationStateChangeTracker()V
    .locals 1

    .prologue
    .line 2796
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2797
    return-void
.end method

.method public connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 3
    .parameter "device"
    .parameter "config"
    .parameter "channelType"

    .prologue
    .line 3574
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3576
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3577
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothHealthProfileHandler;->connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 3
    .parameter "device"
    .parameter "config"

    .prologue
    .line 3555
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3557
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3558
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3560
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectHeadset(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3674
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_1

    .line 3684
    :cond_0
    :goto_0
    return v2

    .line 3676
    :cond_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3677
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 3678
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3679
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 3680
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3681
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    move v2, v3

    .line 3682
    goto :goto_0
.end method

.method public connectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 3408
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3410
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3411
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v2

    .line 3412
    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v1, p1, v0}, Landroid/server/BluetoothInputProfileHandler;->connectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 3413
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public connectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 3417
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3418
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->connectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3419
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native connectInputDeviceNative(Ljava/lang/String;)Z
.end method

.method public connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    .line 3352
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3354
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v2

    .line 3355
    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3356
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3357
    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3358
    const/4 v1, 0x0

    monitor-exit v2

    .line 3360
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothPanProfileHandler;->connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 3362
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method native connectPanDeviceNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public connectSink(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 3702
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_1

    .line 3727
    :cond_0
    :goto_0
    return v3

    .line 3706
    :cond_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v0

    .line 3709
    .local v0, bp:Landroid/sec/enterprise/BluetoothPolicy;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x80

    invoke-virtual {v0, v4}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3711
    :cond_2
    const-string v4, "BluetoothService"

    const-string v5, "MDM: A2DP or SPP profile is disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3714
    :cond_3
    invoke-virtual {v0, p1}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3715
    const-string v4, "BluetoothService"

    const-string v5, "MDM: Remote Device Blocked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3719
    :cond_4
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3720
    .local v2, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v2, :cond_0

    .line 3721
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3722
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 3723
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3724
    iget-object v3, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3725
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized createBond(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1596
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 1618
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1598
    :cond_1
    :try_start_1
    const-string v3, "00:12:A1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1599
    new-instance v0, Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteClass(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 1600
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    const/16 v4, 0x580

    if-ne v3, v4, :cond_4

    .line 1601
    sget-boolean v3, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "BluetoothService"

    const-string v4, "The device is HID pointing device, skipping pairing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_2
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->createDeviceNative(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1603
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CreateDeviceNative failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1596
    .end local v0           #btClass:Landroid/bluetooth/BluetoothClass;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1606
    .restart local v0       #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_3
    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v3, 0xb

    invoke-virtual {v1, p1, v3}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;I)V

    move v1, v2

    .line 1607
    goto :goto_0

    .line 1611
    .end local v0           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_4
    const v3, 0xea60

    invoke-direct {p0, p1, v3}, Landroid/server/BluetoothService;->createPairedDeviceNative(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1615
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothBondState;->setPendingOutgoingBonding(Ljava/lang/String;)V

    .line 1616
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v3, 0xb

    invoke-virtual {v1, p1, v3}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    .line 1618
    goto :goto_0
.end method

.method public declared-synchronized createBondOutOfBand(Ljava/lang/String;[B[B)Z
    .locals 2
    .parameter "address"
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    const/4 v0, 0x0

    .line 1643
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1653
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1645
    :cond_1
    const v1, 0xea60

    :try_start_1
    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1649
    invoke-virtual {p0, p1, p2, p3}, Landroid/server/BluetoothService;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    .line 1650
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->setPendingOutgoingBonding(Ljava/lang/String;)V

    .line 1651
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1653
    const/4 v0, 0x1

    goto :goto_0

    .line 1643
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native createChannelNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method createLEBondLowSec(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 1633
    move-object v0, p1

    .line 1634
    .local v0, secaddress:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->createBondLE(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1635
    const-string/jumbo v1, "trylowsec"

    const-string v2, "false"

    invoke-virtual {p0, v0, v1, v2}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    :goto_0
    return-void

    .line 1637
    :cond_0
    const-string/jumbo v1, "trylowsec"

    const-string v2, "false"

    invoke-virtual {p0, v0, v1, v2}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method native destroyChannelNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public disable()Z
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disable(Z)Z

    move-result v0

    return v0
.end method

.method public disable(Z)Z
    .locals 2
    .parameter "saveSetting"

    .prologue
    .line 536
    const-string v0, "BluetoothService"

    const-string v1, "bt disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->startdisable(Z)Z

    move-result v0

    return v0
.end method

.method native disableNative()I
.end method

.method public disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 3
    .parameter "device"
    .parameter "config"
    .parameter "id"

    .prologue
    .line 3584
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3586
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3587
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothHealthProfileHandler;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3588
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized disconnectDevices()V
    .locals 1

    .prologue
    .line 581
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothService;->disconnectAllConnectionsNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    monitor-exit p0

    return-void

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disconnectHeadset(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 3688
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 3698
    :cond_0
    :goto_0
    return v2

    .line 3690
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3691
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 3692
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3693
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3694
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3695
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3696
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 3423
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3426
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v2

    .line 3427
    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v1, p1, v0}, Landroid/server/BluetoothInputProfileHandler;->disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 3428
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 3432
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3433
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->disconnectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native disconnectInputDeviceNative(Ljava/lang/String;)Z
.end method

.method public disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 3381
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3383
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 3384
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native disconnectPanDeviceNative(Ljava/lang/String;)Z
.end method

.method native disconnectPanServerDeviceNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public disconnectSimAccessClient()Z
    .locals 3

    .prologue
    .line 3452
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3453
    const-string v0, "BluetoothService"

    const-string v1, "disconnectSimAccessClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    invoke-virtual {p0}, Landroid/server/BluetoothService;->disconnectSimAccessClientNative()Z

    move-result v0

    return v0
.end method

.method public disconnectSimAccessClientImmediate()Z
    .locals 3

    .prologue
    .line 3464
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3465
    const-string v0, "BluetoothService"

    const-string v1, "disconnectSimAccessClientImmediate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    invoke-virtual {p0}, Landroid/server/BluetoothService;->disconnectSimAccessClientImmediateNative()Z

    move-result v0

    return v0
.end method

.method native disconnectSimAccessClientImmediateNative()Z
.end method

.method native disconnectSimAccessClientNative()Z
.end method

.method public disconnectSink(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 3731
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 3741
    :cond_0
    :goto_0
    return v2

    .line 3733
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3734
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 3735
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3736
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x34

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3737
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3738
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3739
    const/4 v2, 0x1

    goto :goto_0
.end method

.method native discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2981
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "BluetoothService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 3008
    :goto_0
    return-void

    .line 2987
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirplaneSensitive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirplaneToggleable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDiscovering() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->isDiscovering()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2994
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2996
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2998
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 3001
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpKnownDevices(Ljava/io/PrintWriter;)V

    .line 3002
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpAclConnectedDevices(Ljava/io/PrintWriter;)V

    .line 3003
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpHeadsetService(Ljava/io/PrintWriter;)V

    .line 3004
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpInputDeviceProfile(Ljava/io/PrintWriter;)V

    .line 3005
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpPanProfile(Ljava/io/PrintWriter;)V

    .line 3006
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpApplicationServiceRecords(Ljava/io/PrintWriter;)V

    .line 3007
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpProfileState(Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method public enable()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 669
    invoke-virtual {p0, v0, v0}, Landroid/server/BluetoothService;->enable(ZZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enable(ZZ)Z
    .locals 9
    .parameter "saveSetting"
    .parameter "allowConnect"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 684
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v0

    .line 685
    .local v0, bp:Landroid/sec/enterprise/BluetoothPolicy;
    invoke-virtual {v0}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 686
    const-string v5, "BluetoothService"

    const-string v6, "MDM: BT is Disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 691
    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BLUETOOTH_ADMIN"

    const-string v8, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-boolean v6, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    if-eqz v6, :cond_0

    .line 698
    :cond_2
    iput-boolean p2, p0, Landroid/server/BluetoothService;->mAllowConnect:Z

    .line 701
    iget-object v6, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 703
    .local v3, mDPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v3, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v6

    if-nez v6, :cond_3

    .line 705
    const-string v5, "BluetoothService"

    const-string v6, "Exchange IT Policy has disabled Bluetooth. Cannot enable"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v5, 0x0

    sput v5, Landroid/server/BluetoothService;->mPolicy:I

    .line 707
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/16 v6, 0xa

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 709
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 710
    iget-object v5, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 684
    .end local v0           #bp:Landroid/sec/enterprise/BluetoothPolicy;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 715
    .restart local v0       #bp:Landroid/sec/enterprise/BluetoothPolicy;
    .restart local v3       #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_BT_SecurityMdmService"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 716
    const-string/jumbo v6, "persist.sys.bt_lock"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, dev_btlock_state:Ljava/lang/String;
    const-string v6, "bt_lock.enabled"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 718
    const-string v5, "BluetoothService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Oops: enable BT dev_btlock_state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 723
    .end local v1           #dev_btlock_state:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    .line 724
    goto/16 :goto_0
.end method

.method native enableNative()I
.end method

.method public enableNoAutoConnect()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 741
    invoke-virtual {p0, v0, v0}, Landroid/server/BluetoothService;->enable(ZZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z
    .locals 7
    .parameter "address"
    .parameter "uuid"
    .parameter "callback"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2385
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "Need BLUETOOTH permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 2420
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 2388
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2392
    new-instance v2, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v2, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 2393
    .local v2, service:Landroid/server/BluetoothService$RemoteService;
    if-eqz p2, :cond_2

    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2399
    :cond_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2402
    if-eqz p2, :cond_3

    .line 2403
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    new-instance v5, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v5, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v1, v3

    .line 2405
    goto :goto_0

    .line 2410
    :cond_4
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->createDeviceNative(Ljava/lang/String;)Z

    move-result v1

    .line 2412
    .local v1, ret:Z
    iget-object v3, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2413
    if-eqz p2, :cond_5

    .line 2414
    iget-object v3, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    new-instance v4, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v4, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2417
    :cond_5
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2418
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2419
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2385
    .end local v0           #message:Landroid/os/Message;
    .end local v1           #ret:Z
    .end local v2           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 497
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothService;->cleanupNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    .line 501
    return-void

    .line 499
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    throw v0
.end method

.method declared-synchronized finishDisable()V
    .locals 8

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 590
    .local v0, address:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v6, 0xa

    const/4 v7, 0x3

    invoke-virtual {v5, v0, v6, v7}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 596
    .restart local v0       #address:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->removeProfileState(Ljava/lang/String;)V

    .line 595
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 600
    .end local v0           #address:Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.adapter.extra.SCAN_MODE"

    const/16 v6, 0x14

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 602
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    monitor-exit p0

    return-void

    .line 589
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #len$:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method native gattConnectDeviceNative(Ljava/lang/String;)Z
.end method

.method public gattDeviceConnect(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    .line 1883
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 1897
    :goto_0
    return v1

    .line 1886
    :cond_0
    const-string v2, "BluetoothService"

    const-string v3, "gattDeviceConnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const/4 v1, 0x0

    .line 1892
    .local v1, status:Z
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1893
    .local v0, devicePath:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 1894
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->gattConnectDeviceNative(Ljava/lang/String;)Z

    move-result v1

    .line 1896
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public gattDeviceDisconnect(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1901
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1915
    :goto_0
    return v1

    .line 1904
    :cond_0
    const-string v3, "BluetoothService"

    const-string v4, "gattDeviceDisconnect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    const/4 v1, 0x0

    .line 1906
    .local v1, status:Z
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    move v1, v2

    goto :goto_0

    .line 1910
    :cond_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1911
    .local v0, devicePath:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 1912
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->gattDisconnectDeviceNative(Ljava/lang/String;)Z

    move-result v1

    .line 1914
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public gattDeviceDiscoverPrimary(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1919
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1932
    :goto_0
    return v1

    .line 1922
    :cond_0
    const/4 v1, 0x0

    .line 1923
    .local v1, status:Z
    const-string v3, "BluetoothService"

    const-string v4, " gattDeviceDisconnect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    move v1, v2

    goto :goto_0

    .line 1927
    :cond_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1928
    .local v0, devicePath:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 1929
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->gattDiscoverPrimaryServiceNative(Ljava/lang/String;)Z

    move-result v1

    .line 1931
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method native gattDisconnectDeviceNative(Ljava/lang/String;)Z
.end method

.method native gattDiscoverCharNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method native gattDiscoverPrimaryServiceNative(Ljava/lang/String;)Z
.end method

.method public gattDiscoveryCharacteristics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "address"
    .parameter "servicePath"
    .parameter "charUUID"

    .prologue
    .line 2124
    sget-boolean v1, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gattCharacteristicsDiscovery "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2131
    :goto_0
    return v0

    .line 2127
    :cond_1
    const/4 v0, 0x0

    .line 2128
    .local v0, ret:Z
    iget-object v2, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 2129
    :try_start_0
    invoke-virtual {p0, p2, p3}, Landroid/server/BluetoothService;->gattDiscoverCharNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2130
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public gattGetCharProperties(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "address"
    .parameter "charPath"

    .prologue
    .line 2144
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 2150
    :goto_0
    return-object v1

    .line 2146
    :cond_0
    const/4 v1, 0x0

    .line 2147
    .local v1, charProperties:[Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 2148
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/server/BluetoothService;->gattGetCharPropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 2149
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method native gattGetCharPropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method public gattRegisterCharWatcher(Ljava/lang/String;)Z
    .locals 4
    .parameter "servicePath"

    .prologue
    .line 2164
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 2170
    :goto_0
    return v0

    .line 2166
    :cond_0
    const/4 v0, 0x0

    .line 2167
    .local v0, ret:Z
    iget-object v2, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 2168
    :try_start_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->gattRegisterCharWatcherNative(Ljava/lang/String;)Z

    move-result v0

    .line 2169
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public gattSetCharProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .parameter "address"
    .parameter "type"
    .parameter "charPath"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 2155
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2161
    :goto_0
    return-void

    .line 2157
    :cond_0
    array-length v5, p5

    .line 2158
    .local v5, len:I
    iget-object v6, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 2159
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/server/BluetoothService;->gattSetCharPropertyNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Z

    .line 2160
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native gattSetCharPropertyNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Z
.end method

.method public gattUnregisterCharWatcher(Ljava/lang/String;)Z
    .locals 4
    .parameter "servicePath"

    .prologue
    .line 2174
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 2180
    :goto_0
    return v0

    .line 2176
    :cond_0
    const/4 v0, 0x0

    .line 2177
    .local v0, ret:Z
    iget-object v2, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 2178
    :try_start_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->gattUnregisterCharWatcherNative(Ljava/lang/String;)Z

    move-result v0

    .line 2179
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAdapterConnectionCount()I
    .locals 3

    .prologue
    .line 3886
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3887
    invoke-direct {p0}, Landroid/server/BluetoothService;->listConnectionNative()I

    move-result v0

    return v0
.end method

.method public getAdapterConnectionState()I
    .locals 1

    .prologue
    .line 3882
    iget v0, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    return v0
.end method

.method native getAdapterPathNative()Ljava/lang/String;
.end method

.method getAdapterProperties()Landroid/server/BluetoothAdapterProperties;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    return-object v0
.end method

.method native getAdapterPropertiesNative()[Ljava/lang/Object;
.end method

.method public declared-synchronized getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1320
    monitor-enter p0

    const/4 v0, 0x0

    .line 1321
    .local v0, bdaddr:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    const-string v1, "Address"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1327
    if-nez v0, :cond_0

    .line 1328
    invoke-direct {p0}, Landroid/server/BluetoothService;->getAddressFromPathfile()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1330
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1320
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "objectPath"

    .prologue
    const/4 v2, 0x0

    .line 3272
    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v3}, Landroid/server/BluetoothAdapterProperties;->getObjectPath()Ljava/lang/String;

    move-result-object v0

    .line 3273
    .local v0, adapterObjectPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 3274
    :cond_0
    sget-boolean v3, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  or deviceObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    :cond_1
    :goto_0
    return-object v2

    .line 3278
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3279
    sget-boolean v3, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  is not a prefix of deviceObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bluetoothd crashed ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3284
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3285
    .local v1, address:Ljava/lang/String;
    if-eqz v1, :cond_4

    const/16 v2, 0x5f

    const/16 v3, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3287
    :cond_4
    const-string v3, "BluetoothService"

    const-string v4, "getAddressFromObjectPath: Address being returned is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAddressFromObjectPathForLE(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "objectPath"

    .prologue
    const/4 v2, 0x0

    .line 3241
    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v3}, Landroid/server/BluetoothAdapterProperties;->getObjectPath()Ljava/lang/String;

    move-result-object v0

    .line 3242
    .local v0, adapterObjectPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3243
    :cond_0
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  or deviceObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    :goto_0
    return-object v2

    .line 3261
    :cond_1
    const-string v3, "dev"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3262
    .local v1, address:Ljava/lang/String;
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    if-eqz v1, :cond_2

    const/16 v2, 0x5f

    const/16 v3, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3265
    :cond_2
    const-string v3, "BluetoothService"

    const-string v4, "getAddressFromObjectPath: Address being returned is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getApplicationStateChangeCallbacks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2800
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter "address"

    .prologue
    .line 3867
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getAuthorizationAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3868
    .local v0, data:Ljava/lang/Integer;
    return-object v0
.end method

.method public getBluetoothState()I
    .locals 3

    .prologue
    .line 513
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    return v0
.end method

.method getBluetoothStateInternal()I
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterStateMachine;->getBluetoothAdapterState()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getBondState(Ljava/lang/String;)I
    .locals 3
    .parameter "address"

    .prologue
    .line 1751
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1753
    const/high16 v0, -0x8000

    .line 1755
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1751
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native getChannelApplicationNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native getChannelFdNative(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method public getConnectedHealthDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3633
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3635
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3636
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothHealthProfileHandler;->getConnectedHealthDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3637
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectedInputDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3445
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3446
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3447
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothInputProfileHandler;->getConnectedInputDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3448
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectedPanDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3366
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3367
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 3368
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothPanProfileHandler;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDeviceOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Landroid/util/Pair;
    .locals 2
    .parameter "device"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    .line 1674
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method getDeviceProperties()Landroid/server/BluetoothDeviceProperties;
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    return-object v0
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    .prologue
    .line 1483
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    const-string v1, "DiscoverableTimeout"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, timeout:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1486
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1488
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method declared-synchronized getDockPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGattConnectionState(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    .line 2193
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    iget-object v2, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 2195
    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "GattConnected"

    invoke-virtual {v1, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2196
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2197
    const/4 v1, 0x0

    monitor-exit v2

    .line 2199
    :goto_0
    return v1

    :cond_0
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 2201
    .end local v0           #val:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 3625
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3627
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3628
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothHealthProfileHandler;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 3629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3642
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3645
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothHealthProfileHandler;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIncomingState(Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .parameter "address"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4075
    iget-object v0, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4076
    invoke-direct {p0}, Landroid/server/BluetoothService;->createIncomingConnectionStateFile()V

    .line 4077
    invoke-direct {p0}, Landroid/server/BluetoothService;->readIncomingConnectionState()V

    .line 4079
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 3438
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3439
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3440
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 3441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 3479
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3481
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 3482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInputDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3471
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3473
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getKnownDevices()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 3761
    const/4 v0, 0x0

    .line 3762
    .local v0, bonds:[Ljava/lang/String;
    const-string v2, "Devices"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3763
    .local v1, val:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3764
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3766
    :cond_0
    return-object v0
.end method

.method public getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "device"
    .parameter "config"

    .prologue
    .line 3593
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3595
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3596
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3597
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native getMainChannelNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public declared-synchronized getMapTrustState(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 2288
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2289
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2297
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 2293
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "MapTrusted"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2294
    .local v0, val:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2297
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 2288
    .end local v0           #val:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1397
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string v0, "Name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1397
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNumberOfApplicationStateChangeTrackers()I
    .locals 1

    .prologue
    .line 2804
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "address"

    .prologue
    .line 3292
    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v1}, Landroid/server/BluetoothAdapterProperties;->getObjectPath()Ljava/lang/String;

    move-result-object v0

    .line 3293
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3294
    const-string v1, "BluetoothService"

    const-string v2, "Error: Object Path is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    const/4 v1, 0x0

    .line 3298
    :goto_0
    return-object v1

    .line 3297
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    const-string v3, "_"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 3298
    goto :goto_0
.end method

.method public getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 3345
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 3347
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 3348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPanDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3374
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3375
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 3376
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->getPanDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3377
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized getPendingOutgoingBonding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1064
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0}, Landroid/server/BluetoothBondState;->getPendingOutgoingBonding()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProfileConnectionState(I)I
    .locals 4
    .parameter "profile"

    .prologue
    .line 3891
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3893
    iget-object v1, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 3894
    .local v0, state:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 3896
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method getProperty(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "checkState"

    .prologue
    const/4 v0, 0x0

    .line 1290
    if-eqz p2, :cond_1

    .line 1291
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1296
    :cond_0
    :goto_0
    return-object v0

    .line 1292
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->isEventLoopRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1296
    :cond_2
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getRemoteAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    .line 1450
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1452
    const/4 v0, 0x0

    .line 1454
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v1, "Alias"

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteClass(Ljava/lang/String;)I
    .locals 5
    .parameter "address"

    .prologue
    const/high16 v1, -0x100

    .line 2333
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2334
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2341
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 2337
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "Class"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2338
    .local v0, val:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2341
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 2333
    .end local v0           #val:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "address"

    .prologue
    .line 1096
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 1775
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1778
    :goto_0
    return-object v1

    .line 1777
    :cond_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1778
    .local v0, objectPath:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized getRemoteDeviceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "address"

    .prologue
    .line 2058
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    .line 2060
    const/4 v0, 0x0

    .line 2066
    :goto_0
    monitor-exit p0

    return-object v0

    .line 2062
    :cond_0
    const/4 v0, 0x0

    .line 2063
    .local v0, retType:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2064
    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "Type"

    invoke-virtual {v1, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2065
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2058
    .end local v0           #retType:Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getRemoteHDPDataTypeList(Landroid/bluetooth/BluetoothDevice;)[I
    .locals 3
    .parameter "device"

    .prologue
    .line 3565
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3567
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3568
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    iget-object v0, v0, Landroid/server/BluetoothHealthProfileHandler;->HealthSdpDataTypes:[I

    monitor-exit v1

    return-object v0

    .line 3569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getRemoteName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    .line 1433
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1435
    const/4 v0, 0x0

    .line 1437
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v1, "Name"

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemotePrimaryService(Ljava/lang/String;I)Z
    .locals 11
    .parameter "address"
    .parameter "UUID"

    .prologue
    const/4 v7, 0x0

    .line 1787
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH_ADMIN"

    const-string v10, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    .line 1834
    :cond_0
    :goto_0
    monitor-exit p0

    return v7

    .line 1792
    :cond_1
    :try_start_1
    const-string v8, "BluetoothService"

    const-string v9, "getRemotePrimaryService"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1794
    .local v2, properties:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getDeviceProperties()Landroid/server/BluetoothDeviceProperties;

    move-result-object v0

    .line 1795
    .local v0, deviceProperties:Landroid/server/BluetoothDeviceProperties;
    const/4 v5, 0x0

    .line 1797
    .local v5, uuidStrings:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1798
    invoke-virtual {v0, p1, v2}, Landroid/server/BluetoothDeviceProperties;->addProperties(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    .line 1803
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteServicePaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1805
    .local v3, servicePaths:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1808
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, v3

    if-ge v1, v8, :cond_4

    .line 1809
    sget-boolean v8, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Service total Path : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_2
    aget-object v8, v3, v1

    invoke-virtual {p0, v8}, Landroid/server/BluetoothService;->getRemoteServiceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1811
    .local v4, serviceProperties:[Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1812
    aget-object v8, v3, v1

    invoke-virtual {v0, v8, v4}, Landroid/server/BluetoothDeviceProperties;->addRemoteServiceProperties(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    .line 1808
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1816
    .end local v4           #serviceProperties:[Ljava/lang/String;
    :cond_4
    array-length v8, v3

    new-array v5, v8, [Ljava/lang/String;

    .line 1817
    const/4 v1, 0x0

    :goto_2
    array-length v8, v3

    if-ge v1, v8, :cond_8

    .line 1818
    aget-object v8, v3, v1

    const-string v9, "UUID"

    invoke-virtual {v0, v8, v9}, Landroid/server/BluetoothDeviceProperties;->getServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v1

    .line 1820
    aget-object v8, v5, v1

    if-eqz v8, :cond_7

    .line 1821
    aget-object v8, v5, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    .line 1822
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v1

    .line 1827
    :cond_5
    sget-boolean v8, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v8, :cond_6

    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " uuidString -->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1824
    :cond_7
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uuidStrings["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] is null in getRemotePrimaryService()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1787
    .end local v0           #deviceProperties:Landroid/server/BluetoothDeviceProperties;
    .end local v1           #i:I
    .end local v2           #properties:[Ljava/lang/String;
    .end local v3           #servicePaths:[Ljava/lang/String;
    .end local v5           #uuidStrings:[Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1830
    .restart local v0       #deviceProperties:Landroid/server/BluetoothDeviceProperties;
    .restart local v1       #i:I
    .restart local v2       #properties:[Ljava/lang/String;
    .restart local v3       #servicePaths:[Ljava/lang/String;
    .restart local v5       #uuidStrings:[Ljava/lang/String;
    :cond_8
    :try_start_2
    array-length v7, v5

    new-array v6, v7, [Landroid/os/ParcelUuid;

    .line 1831
    .local v6, uuids:[Landroid/os/ParcelUuid;
    const/4 v1, 0x0

    :goto_3
    array-length v7, v5

    if-ge v1, v7, :cond_9

    .line 1832
    aget-object v7, v5, v1

    invoke-static {v7}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v7

    aput-object v7, v6, v1

    .line 1831
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1833
    :cond_9
    invoke-virtual {p0, p1, v6}, Landroid/server/BluetoothService;->sendPrimaryUuidIntent(Ljava/lang/String;[Landroid/os/ParcelUuid;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1834
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    .locals 5
    .parameter "address"
    .parameter "uuid"

    .prologue
    const/4 v1, -0x1

    .line 2434
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2449
    :cond_0
    :goto_0
    return v1

    .line 2437
    :cond_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2438
    const/high16 v1, -0x8000

    goto :goto_0

    .line 2441
    :cond_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v2}, Landroid/server/BluetoothDeviceProperties;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2442
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothDeviceProperties;->updateCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2446
    :cond_3
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2447
    .local v0, value:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2448
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized getRemoteServiceCharPaths(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "servicePath"

    .prologue
    .line 2070
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "Need BLUETOOTH permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const-string v4, "BluetoothService"

    const-string v5, "getRemoteCharPaths"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v5, "Characteristics"

    invoke-virtual {v4, p1, v5}, Landroid/server/BluetoothDeviceProperties;->getServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2073
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 2083
    :cond_0
    monitor-exit p0

    return-object v2

    .line 2075
    :cond_1
    const/4 v1, 0x0

    .line 2077
    .local v1, objectPathString:[Ljava/lang/String;
    :try_start_1
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2078
    array-length v4, v1

    new-array v2, v4, [Ljava/lang/String;

    .line 2080
    .local v2, objectPaths:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 2081
    aget-object v4, v1, v0

    aput-object v4, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2080
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2070
    .end local v0           #i:I
    .end local v1           #objectPathString:[Ljava/lang/String;
    .end local v2           #objectPaths:[Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getRemoteServicePaths(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1838
    const-string v4, "BluetoothService"

    const-string v5, " getRemoteServicePaths"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1855
    :cond_0
    return-object v2

    .line 1844
    :cond_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v5, "Services"

    invoke-virtual {v4, p1, v5}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1845
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1847
    const/4 v1, 0x0

    .line 1849
    .local v1, objectPathString:[Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1850
    array-length v4, v1

    new-array v2, v4, [Ljava/lang/String;

    .line 1852
    .local v2, objectPaths:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 1853
    aget-object v4, v1, v0

    aput-object v4, v2, v0

    .line 1852
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getRemoteServiceProperties(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "servicepath"

    .prologue
    .line 1859
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1860
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->gattGetRemoteServicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getRemoteServiceUUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "servicePath"

    .prologue
    .line 2087
    const-string v0, "BluetoothService"

    const-string v1, "getRemoteServiceUUID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    iget-object v1, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 2090
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v2, "UUID"

    invoke-virtual {v0, p1, v2}, Landroid/server/BluetoothDeviceProperties;->getServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2091
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .locals 3
    .parameter "address"

    .prologue
    .line 2352
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2354
    const/4 v0, 0x0

    .line 2356
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRssiValue(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 2135
    const-string v1, "BluetoothService"

    const-string v2, "getRssiValue"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2137
    .local v0, devicePath:Ljava/lang/String;
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    iget-object v2, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 2139
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getRssiValueNative(Ljava/lang/String;)V

    .line 2140
    monitor-exit v2

    .line 2141
    return-void

    .line 2140
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method native getRssiValueNative(Ljava/lang/String;)V
.end method

.method public declared-synchronized getSapTrustState(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 2309
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2310
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2318
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 2314
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "SapTrusted"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2315
    .local v0, val:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2318
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 2309
    .end local v0           #val:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getScanMode()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, -0x1

    .line 1492
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH"

    const-string v7, "Need BLUETOOTH permission"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1494
    const/16 v4, 0x14

    .line 1511
    :goto_0
    return v4

    .line 1496
    :cond_0
    const-string v5, "Pairable"

    invoke-virtual {p0, v5, v8}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1497
    .local v3, strPairable:Ljava/lang/String;
    const-string v5, "Discoverable"

    invoke-virtual {p0, v5, v8}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1499
    .local v2, strDiscoverable:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1500
    const-string v5, "BluetoothService"

    const-string/jumbo v6, "strPairable is null in getScanMode()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1503
    :cond_1
    if-nez v2, :cond_2

    .line 1504
    const-string v5, "BluetoothService"

    const-string/jumbo v6, "strDiscoverable is null in getScanMode()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1508
    :cond_2
    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1509
    .local v1, pairable:Z
    const-string/jumbo v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1511
    .local v0, discoverable:Z
    invoke-static {v1, v0}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I

    move-result v4

    goto :goto_0
.end method

.method native getSimAccessPropertiesNative()[Ljava/lang/Object;
.end method

.method public declared-synchronized getTrustState(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 2267
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2268
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2276
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 2272
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "Trusted"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2273
    .local v0, val:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2276
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 2267
    .end local v0           #val:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .locals 6
    .parameter "address"

    .prologue
    .line 2360
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v5, "UUIDs"

    invoke-virtual {v4, p1, v5}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2361
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 2371
    :cond_0
    return-object v2

    .line 2363
    :cond_1
    const/4 v1, 0x0

    .line 2365
    .local v1, uuidStrings:[Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2366
    array-length v4, v1

    new-array v2, v4, [Landroid/os/ParcelUuid;

    .line 2368
    .local v2, uuids:[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 2369
    aget-object v4, v1, v0

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    aput-object v4, v2, v0

    .line 2368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    .prologue
    .line 1403
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const-string v1, "UUIDs"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1405
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1406
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v1

    goto :goto_0
.end method

.method handleInputDevicePropertyChange(Ljava/lang/String;Z)V
    .locals 2
    .parameter "address"
    .parameter "connected"

    .prologue
    .line 3527
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3528
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothInputProfileHandler;->handleInputDevicePropertyChange(Ljava/lang/String;Z)V

    .line 3529
    monitor-exit v1

    .line 3530
    return-void

    .line 3529
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .parameter "device"
    .parameter "state"
    .parameter "role"

    .prologue
    .line 3399
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3400
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2, p3}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 3401
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3402
    monitor-exit p0

    return-void

    .line 3401
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3399
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V
    .locals 2
    .parameter "device"
    .parameter "iface"
    .parameter "state"
    .parameter "role"

    .prologue
    .line 3392
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3393
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 3394
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3395
    monitor-exit p0

    return-void

    .line 3394
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3392
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initAfterA2dpRegistration()V
    .locals 1

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v0}, Landroid/server/BluetoothEventLoop;->getProfileProxy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    monitor-exit p0

    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initAfterRegistration()V
    .locals 4

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 446
    new-instance v1, Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v1, v2, p0, v3}, Landroid/server/BluetoothAdapterStateMachine;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    .line 447
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v1}, Landroid/server/BluetoothAdapterStateMachine;->start()V

    .line 457
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v1}, Landroid/server/BluetoothAdapterStateMachine;->getBluetoothEventLoop()Landroid/server/BluetoothEventLoop;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    .line 460
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    const-string v1, "com.sktelecom.dmc.intent.action.DCMO_BT_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED_CUSTOM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string v1, "VZW"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    monitor-exit p0

    return-void

    .line 445
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized initBluetoothAfterTurningOn()V
    .locals 4

    .prologue
    .line 936
    monitor-enter p0

    :try_start_0
    const-string v2, "Discoverable"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 937
    .local v0, discoverable:Ljava/lang/String;
    const-string v2, "DiscoverableTimeout"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 938
    .local v1, timeout:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 939
    const-string v2, "BluetoothService"

    const-string v3, "Null DiscoverableTimeout property"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string v1, "1"

    .line 944
    :cond_0
    if-nez v0, :cond_1

    .line 945
    const-string v2, "BluetoothService"

    const-string v3, "discoverable is null in initBluetoothAfterTurningOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    :goto_0
    monitor-exit p0

    return-void

    .line 949
    :cond_1
    if-nez v1, :cond_2

    .line 950
    :try_start_1
    const-string v2, "BluetoothService"

    const-string/jumbo v3, "timeout is null in initBluetoothAfterTurningOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string v2, "DiscoverableTimeout"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 952
    if-nez v1, :cond_2

    .line 953
    const-string v1, "120"

    .line 954
    const-string v2, "BluetoothService"

    const-string/jumbo v3, "timeout is set 120 in initBluetoothAfterTurningOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_2
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    .line 959
    const-string v2, "Discoverable"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z

    .line 961
    :cond_3
    iget-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v2}, Landroid/server/BluetoothBondState;->initBondState()V

    .line 962
    invoke-direct {p0}, Landroid/server/BluetoothService;->initProfileState()V

    .line 963
    invoke-direct {p0}, Landroid/server/BluetoothService;->getProfileProxy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 936
    .end local v0           #discoverable:Ljava/lang/String;
    .end local v1           #timeout:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method final isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2946
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method isApplicationStateChangeTrackerEmpty()Z
    .locals 1

    .prologue
    .line 2792
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isBluetoothDock(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    .line 1768
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_service_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1771
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dock_bluetooth_address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 1768
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isDiscovering()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1538
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    const-string v2, "Discovering"

    invoke-virtual {p0, v2, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1541
    .local v0, discoveringProperty:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1545
    :goto_0
    return v1

    :cond_0
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    return v0
.end method

.method declared-synchronized isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 1007
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isGattCharDiscoveryInProgress(Ljava/lang/String;)Z
    .locals 1
    .parameter "servicePath"

    .prologue
    .line 1864
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1865
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isGattDiscoverCharInProgressNative(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method isRemoteDeviceInCache(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 1308
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceProperties;->isInCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTetheringOn()Z
    .locals 3

    .prologue
    .line 3312
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 3314
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothPanProfileHandler;->isTetheringOn()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public leTestEnd()Z
    .locals 3

    .prologue
    .line 1515
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1517
    const/4 v0, 0x0

    .line 1518
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/server/BluetoothService;->leTestEndNative()Z

    move-result v0

    goto :goto_0
.end method

.method native leTestEndNative()Z
.end method

.method public declared-synchronized listBonds()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1742
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1742
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized listInState(I)[Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 1747
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method lookupInputDevicesMatchingStates([I)Ljava/util/List;
    .locals 2
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3521
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3522
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->lookupInputDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3523
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized makeServiceChannelCallbacks(Ljava/lang/String;)V
    .locals 7
    .parameter "address"

    .prologue
    .line 2961
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2962
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2963
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/server/BluetoothService$RemoteService;

    .line 2964
    .local v3, service:Landroid/server/BluetoothService$RemoteService;
    iget-object v4, v3, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2965
    sget-boolean v4, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning up failed UUID channel lookup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    :cond_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2968
    .local v0, callback:Landroid/bluetooth/IBluetoothCallback;
    if-eqz v0, :cond_2

    .line 2970
    const/4 v4, -0x1

    :try_start_1
    invoke-interface {v0, v4}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2974
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2961
    .end local v0           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v3           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2971
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothCallback;
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v3       #service:Landroid/server/BluetoothService$RemoteService;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "BluetoothService"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2977
    .end local v0           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "address"
    .parameter "rejected"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3835
    monitor-enter p0

    .line 3836
    :try_start_0
    iget-boolean v4, p0, Landroid/server/BluetoothService;->mAllowConnect:Z

    if-nez v4, :cond_1

    .line 3837
    const-string v3, "BluetoothService"

    const-string v4, "Not allowing a2dp connection because of temporary BT on state."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    monitor-exit p0

    .line 3859
    :cond_0
    :goto_0
    return v2

    .line 3840
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3842
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3843
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 3844
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3845
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_3

    .line 3846
    iget-object v2, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_2

    .line 3848
    const/16 v2, 0x67

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3849
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 3850
    const-wide/16 v4, 0xfa0

    invoke-virtual {v1, v0, v4, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    :cond_2
    :goto_1
    move v2, v3

    .line 3857
    goto :goto_0

    .line 3840
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3854
    .restart local v0       #msg:Landroid/os/Message;
    .restart local v1       #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :cond_3
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3855
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_1
.end method

.method public notifyIncomingConnection(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "address"
    .parameter "rejected"

    .prologue
    const/4 v2, 0x0

    .line 3808
    monitor-enter p0

    .line 3809
    :try_start_0
    iget-boolean v3, p0, Landroid/server/BluetoothService;->mAllowConnect:Z

    if-nez v3, :cond_1

    .line 3810
    const-string v3, "BluetoothService"

    const-string v4, "Not allowing incoming connection because of temporary BT on state."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    monitor-exit p0

    .line 3831
    :cond_0
    :goto_0
    return v2

    .line 3813
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3814
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3815
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 3816
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3817
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_3

    .line 3818
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    .line 3820
    const/16 v2, 0x67

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3821
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3822
    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 3829
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3813
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3826
    .restart local v0       #msg:Landroid/os/Message;
    .restart local v1       #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :cond_3
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3827
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_1
.end method

.method notifyIncomingHidConnection(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 3651
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3652
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-nez v1, :cond_0

    .line 3653
    const/4 v2, 0x0

    .line 3658
    :goto_0
    return v2

    .line 3655
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3656
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3657
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3658
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public notifyIncomingSapConnection(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    .line 3662
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3663
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyIncomingSapConnection()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    if-nez v1, :cond_0

    .line 3665
    const/4 v2, 0x0

    .line 3670
    :goto_0
    return v2

    .line 3667
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3668
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3669
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3670
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public notifySimCardRemovedAction()Z
    .locals 3

    .prologue
    .line 3458
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    const-string v0, "BluetoothService"

    const-string/jumbo v1, "notifySimCardRemovedAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    invoke-virtual {p0}, Landroid/server/BluetoothService;->notifySimCardRemovedActionNative()Z

    move-result v0

    return v0
.end method

.method native notifySimCardRemovedActionNative()Z
.end method

.method declared-synchronized onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .locals 2
    .parameter "address"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 1012
    monitor-enter p0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getDeviceType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1013
    const-string v0, "BluetoothService"

    const-string v1, "Dev is le and auth rejected, trying to connect with sec low"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const-string/jumbo v0, "trylowsec"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, p1, v0, v1}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string v0, "BluetoothService"

    const-string v1, "lets try for sec low after device is removed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1019
    :cond_1
    if-nez p2, :cond_3

    .line 1020
    const/16 v0, 0xc

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 1022
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1023
    const-string v0, "Device Paired"

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    :cond_2
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1012
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1029
    :cond_3
    if-ne p2, v1, :cond_4

    :try_start_2
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1031
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->addAutoPairingFailure(Ljava/lang/String;)V

    .line 1032
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1034
    :cond_4
    const/4 v0, 0x7

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 1036
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->addAutoPairingFailure(Ljava/lang/String;)V

    .line 1037
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1039
    :cond_5
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1041
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1045
    :cond_6
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getDeviceType()I

    move-result v0

    if-ne v0, v1, :cond_8

    if-gez p2, :cond_8

    .line 1046
    const/16 v0, 0xa

    const/16 v1, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 1051
    :goto_1
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1052
    const-string v0, "Device Pairing Failed"

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    :cond_7
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1048
    :cond_8
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized onGattCharPropertyChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "char_path"
    .parameter "property_name"
    .parameter "status"

    .prologue
    .line 2007
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGattCharPropertyChanged char_path :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    :cond_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2009
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2011
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v2, p1, p2, p3}, Landroid/bluetooth/IBluetoothLEGattCallback;->onGattCharPropertyChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2009
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2017
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2018
    monitor-exit p0

    return-void

    .line 2007
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2012
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method declared-synchronized onGattConnectDisconnect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "state"
    .parameter "device_path"

    .prologue
    .line 1965
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattDeviceConnectDisconnect state :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :cond_0
    invoke-virtual {p0, p2}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1967
    .local v1, address:Ljava/lang/String;
    const-string v3, "GattConnected"

    invoke-virtual {p0, v1, v3, p1}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    iget-object v3, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1970
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 1972
    :try_start_1
    const-string/jumbo v3, "true"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1973
    sget-boolean v3, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callbacks fwd to GattProxy for Connected::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v3, v1}, Landroid/bluetooth/IBluetoothLEGattCallback;->onGattConnect(Ljava/lang/String;)V

    .line 1970
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1977
    :cond_2
    sget-boolean v3, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callbacks fwd to GattProxy for disConnected::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :cond_3
    iget-object v3, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v3, v1}, Landroid/bluetooth/IBluetoothLEGattCallback;->onGattDisconnect(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1981
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1986
    :cond_4
    :try_start_2
    iget-object v3, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1987
    monitor-exit p0

    return-void

    .line 1965
    .end local v0           #N:I
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized onGattDiscoverCharResult(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "servicePath"
    .parameter "charPaths"

    .prologue
    .line 2035
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGattDiscoverCharResult servicePath :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    :cond_0
    if-nez p2, :cond_1

    .line 2041
    const-string v2, "BluetoothService"

    const-string v3, "***Charpath is null***"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2046
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2048
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothLEGattCallback;->onDiscoverCharResult(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2046
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2054
    :cond_2
    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2055
    monitor-exit p0

    return-void

    .line 2035
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2049
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public onGattLinkLoss(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 1936
    const-string v2, "BluetoothService"

    const-string/jumbo v3, "onGattLinkLoss"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1938
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1940
    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothLEGattCallback;->onGattLinkLoss(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1946
    :cond_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1947
    return-void

    .line 1941
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method declared-synchronized onGattPrimaryServiceDiscovery(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "address"
    .parameter "uuid_path"

    .prologue
    .line 1990
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### UUID STRING ##"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :cond_0
    if-eqz p2, :cond_3

    const/4 v4, 0x0

    aget-object v4, p2, v4

    const-string v5, "UUIDs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1992
    array-length v2, p2

    .line 1993
    .local v2, len:I
    sget-boolean v4, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Len :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " address :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :cond_1
    add-int/lit8 v4, v2, -0x2

    new-array v3, v4, [Landroid/os/ParcelUuid;

    .line 1996
    .local v3, uuids:[Landroid/os/ParcelUuid;
    const/4 v1, 0x0

    .line 1997
    .local v1, j:I
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1998
    aget-object v4, p2, v0

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1999
    add-int/lit8 v1, v1, 0x1

    .line 1997
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2002
    :cond_2
    invoke-virtual {p0, p1, v3}, Landroid/server/BluetoothService;->sendPrimaryUuidIntent(Ljava/lang/String;[Landroid/os/ParcelUuid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2004
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #len:I
    .end local v3           #uuids:[Landroid/os/ParcelUuid;
    :cond_3
    monitor-exit p0

    return-void

    .line 1990
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized onGattWatcherValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "charPath"
    .parameter "value"

    .prologue
    .line 2021
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGattWatcherValueChanged char_path :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :cond_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2023
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2025
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothLEGattCallback;->onWatcherValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2023
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2031
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2032
    monitor-exit p0

    return-void

    .line 2021
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2026
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public onGetRssiValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "rssival"
    .parameter "address"

    .prologue
    .line 1950
    const-string v2, "BluetoothService"

    const-string/jumbo v3, "onGetRssiValue"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1952
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1953
    const-string v2, "BluetoothService"

    const-string v3, "Ajith: In for loop for callbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothLEGattCallback;->onGetRssiValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1952
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1961
    :cond_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1962
    return-void

    .line 1956
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "devicePath"
    .parameter "channelPath"
    .parameter "exists"

    .prologue
    .line 3610
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3611
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothHealthProfileHandler;->onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3613
    monitor-exit v1

    .line 3614
    return-void

    .line 3613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onHealthDeviceChannelConnectionError(II)V
    .locals 2
    .parameter "channelCode"
    .parameter "newState"

    .prologue
    .line 3618
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3619
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->onHealthDeviceChannelConnectionError(II)V

    .line 3621
    monitor-exit v1

    .line 3622
    return-void

    .line 3621
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onHealthDevicePropertyChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "devicePath"
    .parameter "channelPath"

    .prologue
    .line 3602
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3603
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->onHealthDevicePropertyChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 3605
    monitor-exit v1

    .line 3606
    return-void

    .line 3605
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized prepareBluetooth()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 750
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothService;->setupNativeDataNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 767
    :goto_0
    monitor-exit p0

    return v1

    .line 753
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/server/BluetoothService;->switchConnectable(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    const-wide/16 v1, 0x64

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 766
    :goto_1
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothService;->updateSdpRecords()V

    .line 767
    const/4 v1, 0x1

    goto :goto_0

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "BluetoothService"

    const-string/jumbo v2, "prepareBluetooth is interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 750
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readOutOfBandData()[B
    .locals 3

    .prologue
    .line 1679
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1683
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->readAdapterOutOfBandDataNative()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1679
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z
    .locals 3
    .parameter "config"
    .parameter "callback"

    .prologue
    .line 3537
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3539
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3540
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3541
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerGattCallback(Landroid/bluetooth/IBluetoothLEGattCallback;)V
    .locals 2
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2095
    const-string v0, "BluetoothService"

    const-string/jumbo v1, "registerGattCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    if-eqz p1, :cond_0

    .line 2097
    iget-object v1, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 2098
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2099
    monitor-exit v1

    .line 2101
    :cond_0
    return-void

    .line 2099
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native registerHealthApplicationNative(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method native registerHealthApplicationNative(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method native releaseChannelFdNative(Ljava/lang/String;)Z
.end method

.method public declared-synchronized removeBond(Ljava/lang/String;)Z
    .locals 9
    .parameter "address"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1706
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    move v1, v7

    .line 1732
    :goto_0
    monitor-exit p0

    return v1

    .line 1710
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v7

    .line 1711
    goto :goto_0

    .line 1713
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 1714
    .local v6, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v6, :cond_2

    .line 1715
    const/16 v1, 0x64

    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    move v1, v8

    .line 1716
    goto :goto_0

    .line 1720
    :cond_2
    const/16 v1, 0xc

    iget-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1721
    sget-boolean v1, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDeviceProfileState is null, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is bonded."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_3
    new-instance v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothDeviceProfileState;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/server/BluetoothService;Landroid/server/BluetoothA2dpService;Z)V

    .line 1724
    .local v0, anotherState:Landroid/bluetooth/BluetoothDeviceProfileState;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->start()V

    .line 1726
    if-eqz v0, :cond_4

    .line 1727
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v8

    .line 1728
    goto :goto_0

    .end local v0           #anotherState:Landroid/bluetooth/BluetoothDeviceProfileState;
    :cond_4
    move v1, v7

    .line 1732
    goto :goto_0

    .line 1706
    .end local v6           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeBondInternal(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 1737
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setTrust(Ljava/lang/String;Z)Z

    .line 1738
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeDeviceNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1737
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeProfileState(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 3753
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3754
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-nez v0, :cond_0

    .line 3758
    :goto_0
    return-void

    .line 3756
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->quit()V

    .line 3757
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeServiceRecord(I)V
    .locals 4
    .parameter "handle"

    .prologue
    .line 2701
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 2708
    :goto_0
    return-void

    .line 2705
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2706
    .local v0, message:Landroid/os/Message;
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2707
    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method runBluetooth()V
    .locals 6

    .prologue
    .line 976
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 978
    .local v2, ident:J
    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 985
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v0

    .line 986
    .local v0, bp:Landroid/sec/enterprise/BluetoothPolicy;
    invoke-virtual {v0}, Landroid/sec/enterprise/BluetoothPolicy;->isDiscoverableEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/sec/enterprise/BluetoothPolicy;->isLimitedDiscoverableEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 987
    const-string v4, "BluetoothService"

    const-string/jumbo v5, "runBluetooth MDM: Limited Discoverable is Disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/16 v4, 0x17

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Landroid/server/BluetoothService;->setScanMode(II)Z

    .line 989
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/server/BluetoothService;->setDiscoverableTimeout(I)Z

    .line 993
    :cond_0
    return-void

    .line 979
    .end local v0           #bp:Landroid/sec/enterprise/BluetoothPolicy;
    :catch_0
    move-exception v1

    .line 980
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "BluetoothService"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 982
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public declared-synchronized sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 4
    .parameter "device"
    .parameter "profile"
    .parameter "state"
    .parameter "prevState"

    .prologue
    .line 3953
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 4002
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3955
    :cond_1
    :try_start_1
    invoke-direct {p0, p3}, Landroid/server/BluetoothService;->validateProfileConnectionState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p4}, Landroid/server/BluetoothService;->validateProfileConnectionState(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3961
    :cond_2
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in sendConnectionStateChange: prevState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3953
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3966
    :cond_3
    :try_start_2
    invoke-direct {p0, p2, p3, p4}, Landroid/server/BluetoothService;->updateProfileConnectionState(III)V

    .line 3968
    invoke-direct {p0, p3, p4}, Landroid/server/BluetoothService;->updateCountersAndCheckForConnectionStateChange(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3969
    iput p3, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    .line 3971
    if-nez p3, :cond_4

    .line 3972
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 3975
    :cond_4
    const-string v1, "BluetoothService"

    const-string/jumbo v2, "sendConnectionStateChange - MDM3.0 inside edm TAGS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    packed-switch p3, :pswitch_data_0

    .line 3991
    :cond_5
    :goto_1
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3992
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3993
    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-direct {p0, p3}, Landroid/server/BluetoothService;->convertToAdapterState(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3995
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-direct {p0, p4}, Landroid/server/BluetoothService;->convertToAdapterState(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3997
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3998
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3999
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECTION_STATE_CHANGE: device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3978
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v1, "BluetoothService"

    const-string v2, "STATE_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3979
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3980
    const-string v1, "Connection Started"

    invoke-static {v1, p2, p1}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 3984
    :pswitch_2
    const-string v1, "BluetoothService"

    const-string v2, "STATE_DISCONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3986
    const-string v1, "Connection Ended"

    const/4 v2, -0x1

    invoke-static {v1, v2, p1}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3976
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method sendGattServiceUpdateIntent()V
    .locals 3

    .prologue
    .line 1877
    const-string v1, "BluetoothService"

    const-string/jumbo v2, "sendGattServiceUpdateIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.GATT_SERVICE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1879
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1880
    return-void
.end method

.method sendPrimaryUuidIntent(Ljava/lang/String;[Landroid/os/ParcelUuid;)V
    .locals 3
    .parameter "address"
    .parameter "uuid"

    .prologue
    .line 1869
    const-string v1, "BluetoothService"

    const-string/jumbo v2, "sendPrimaryUuidIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.GATT_PRIMARY_UUID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1871
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1872
    const-string v1, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1873
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1874
    return-void
.end method

.method public sendProfileStateMessage(II)V
    .locals 2
    .parameter "profile"
    .parameter "cmd"

    .prologue
    .line 3872
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3873
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 3874
    if-nez p1, :cond_1

    .line 3875
    iget-object v1, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3879
    :cond_0
    :goto_0
    return-void

    .line 3876
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3877
    iget-object v1, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method declared-synchronized sendUuidIntent(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 2952
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 2953
    .local v1, uuid:[Landroid/os/ParcelUuid;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2954
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2955
    const-string v2, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2956
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2957
    iget-object v2, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2958
    monitor-exit p0

    return-void

    .line 2952
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uuid:[Landroid/os/ParcelUuid;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method setA2dpService(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter "a2dpService"

    .prologue
    .line 3863
    iput-object p1, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    .line 3864
    return-void
.end method

.method native setAuthorizationNative(Ljava/lang/String;ZI)Z
.end method

.method public setBluetoothTethering(Z)V
    .locals 7
    .parameter "value"

    .prologue
    .line 3330
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3331
    iget-object v3, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v3

    .line 3332
    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 3333
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3334
    .local v0, allowInternetSharing:Z
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 3335
    iget-object v2, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3341
    :cond_0
    :goto_0
    monitor-exit v3

    .line 3342
    return-void

    .line 3337
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothPanProfileHandler;->setBluetoothTethering(Z)V

    .line 3338
    if-nez v0, :cond_0

    .line 3339
    iget-object v2, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3341
    .end local v0           #allowInternetSharing:Z
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method native setBluetoothTetheringNative(ZLjava/lang/String;Ljava/lang/String;)Z
.end method

.method declared-synchronized setBondState(Ljava/lang/String;I)Z
    .locals 1
    .parameter "address"
    .parameter "state"

    .prologue
    .line 1759
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setBondState(Ljava/lang/String;II)Z
    .locals 2
    .parameter "address"
    .parameter "state"
    .parameter "reason"

    .prologue
    .line 1763
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1764
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1763
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setContentProtection(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 1145
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothService"

    const-string/jumbo v1, "setContentProtectionfalse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z
    .locals 4
    .parameter "address"
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    .line 1658
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1670
    :goto_0
    monitor-exit p0

    return v1

    .line 1662
    :cond_0
    :try_start_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1664
    .local v0, value:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    sget-boolean v1, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v1, :cond_1

    .line 1665
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting out of band data for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1670
    const/4 v1, 0x1

    goto :goto_0

    .line 1658
    .end local v0           #value:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDiscoverableTimeout(I)Z
    .locals 4
    .parameter "timeout"

    .prologue
    .line 1163
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v0

    .line 1168
    .local v0, bp:Landroid/sec/enterprise/BluetoothPolicy;
    invoke-virtual {v0}, Landroid/sec/enterprise/BluetoothPolicy;->isLimitedDiscoverableEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1169
    const-string v1, "BluetoothService"

    const-string v2, "Time Out MDM: Limited Discoverable is Disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const/4 p1, 0x0

    .line 1174
    :cond_0
    const-string v1, "DiscoverableTimeout"

    invoke-direct {p0, v1, p1}, Landroid/server/BluetoothService;->setPropertyInteger(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 1163
    .end local v0           #bp:Landroid/sec/enterprise/BluetoothPolicy;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 3486
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3488
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 3489
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothInputProfileHandler;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3490
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setLinkTimeout(Ljava/lang/String;I)V
    .locals 5
    .parameter "address"
    .parameter "num_slots"

    .prologue
    .line 3302
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3303
    .local v0, path:Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Landroid/server/BluetoothService;->setLinkTimeoutNative(Ljava/lang/String;I)Z

    move-result v1

    .line 3305
    .local v1, result:Z
    if-nez v1, :cond_0

    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Link Timeout to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slots failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    :cond_0
    return-void
.end method

.method public declared-synchronized setMapTrust(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "address"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 2229
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2230
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2237
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 2235
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2237
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MapTrusted"

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {p0, v1, v2, v0}, Landroid/server/BluetoothService;->setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setName(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 1113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    if-nez p1, :cond_0

    .line 1116
    const/4 v0, 0x0

    .line 1118
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "Name"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNbParameters()Z
    .locals 1

    .prologue
    .line 4186
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/server/BluetoothService;->setNbParametersNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native setNbParametersNative()Z
.end method

.method declared-synchronized setPairable()V
    .locals 3

    .prologue
    .line 1277
    monitor-enter p0

    :try_start_0
    const-string v1, "Pairable"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1278
    .local v0, pairableString:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1279
    const-string v1, "BluetoothService"

    const-string/jumbo v2, "null pairableString"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1282
    :cond_1
    :try_start_1
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    const-string v1, "Pairable"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1277
    .end local v0           #pairableString:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPairingConfirmation(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "address"
    .parameter "confirm"

    .prologue
    const/4 v1, 0x0

    .line 2500
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 2512
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 2504
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2505
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2506
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 2507
    sget-boolean v2, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPasskey("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called but no native data available, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or by bluez.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2500
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2512
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPairingConfirmationNative(Ljava/lang/String;ZI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized setPasskey(Ljava/lang/String;I)Z
    .locals 5
    .parameter "address"
    .parameter "passkey"

    .prologue
    const/4 v1, 0x0

    .line 2481
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 2496
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 2485
    :cond_1
    if-ltz p2, :cond_0

    const v2, 0xf423f

    if-gt p2, v2, :cond_0

    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2488
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2489
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2490
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 2491
    sget-boolean v2, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPasskey("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called but no native data available, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or by bluez.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2481
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2496
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPasskeyNative(Ljava/lang/String;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized setPin(Ljava/lang/String;[B)Z
    .locals 7
    .parameter "address"
    .parameter "pin"

    .prologue
    const/4 v3, 0x0

    .line 2453
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 2477
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 2457
    :cond_1
    if-eqz p2, :cond_0

    :try_start_1
    array-length v4, p2

    if-lez v4, :cond_0

    array-length v4, p2

    const/16 v5, 0x10

    if-gt v4, v5, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2461
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2462
    iget-object v4, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v4}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2463
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 2464
    sget-boolean v4, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPin("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") called but no native data available, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or by bluez.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2453
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2472
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF8"

    invoke-direct {v1, p2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2477
    .local v1, pinString:Ljava/lang/String;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v1, v3}, Landroid/server/BluetoothService;->setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_0

    .line 2473
    .end local v1           #pinString:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2474
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    const-string v4, "BluetoothService"

    const-string v5, "UTF8 not supported?!?"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setRemoteAlias(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "address"
    .parameter "alias"

    .prologue
    .line 1465
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1467
    const/4 v0, 0x0

    .line 1470
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alias"

    invoke-direct {p0, v0, v1, p2}, Landroid/server/BluetoothService;->setDevicePropertyStringNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "address"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1312
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothDeviceProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    return-void
.end method

.method public declared-synchronized setRemoteOutOfBandData(Ljava/lang/String;)Z
    .locals 8
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 2516
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    const-string v7, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 2538
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 2519
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2520
    iget-object v5, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v5}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2521
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 2522
    sget-boolean v5, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "BluetoothService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setRemoteOobData("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") called but no native data available, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " or by bluez.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2516
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2528
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_2
    :try_start_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2530
    .local v3, val:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    if-nez v3, :cond_3

    .line 2532
    const/16 v4, 0x10

    new-array v1, v4, [B

    .line 2533
    .local v1, hash:[B
    const/16 v4, 0x10

    new-array v2, v4, [B

    .line 2538
    .local v2, randomizer:[B
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p1, v1, v2, v4}, Landroid/server/BluetoothService;->setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z

    move-result v4

    goto :goto_0

    .line 2535
    .end local v1           #hash:[B
    .end local v2           #randomizer:[B
    :cond_3
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [B

    .line 2536
    .restart local v1       #hash:[B
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v2       #randomizer:[B
    goto :goto_1
.end method

.method public declared-synchronized setSapTrust(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "address"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 2247
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2248
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2255
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 2253
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2255
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SapTrusted"

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {p0, v1, v2, v0}, Landroid/server/BluetoothService;->setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanLE(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 2185
    monitor-enter p0

    :try_start_0
    const-string v1, "ScanLe"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanMode(II)Z
    .locals 11
    .parameter "mode"
    .parameter "duration"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1194
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v8, "Need WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const-string v6, "BluetoothService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MDM: setScanMode called mode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v0

    .line 1201
    .local v0, bp:Landroid/sec/enterprise/BluetoothPolicy;
    const/16 v6, 0x17

    if-ne p1, v6, :cond_0

    invoke-virtual {v0}, Landroid/sec/enterprise/BluetoothPolicy;->isDiscoverableEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1203
    const-string v5, "BluetoothService"

    const-string v6, "MDM: Discoverable mode is Disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const-string v5, "Discoverable"

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    :goto_0
    monitor-exit p0

    return v4

    .line 1206
    :cond_0
    const/16 v6, 0x15

    if-ne p1, v6, :cond_1

    .line 1207
    :try_start_1
    invoke-virtual {v0}, Landroid/sec/enterprise/BluetoothPolicy;->isDiscoverableEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/sec/enterprise/BluetoothPolicy;->isLimitedDiscoverableEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1209
    const-string v4, "BluetoothService"

    const-string/jumbo v6, "setScanMode: Always Discoverable is enabled, can\'t set to connectable mode."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const-string v4, "Pairable"

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 1211
    const-string v4, "Discoverable"

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    move v4, v5

    .line 1212
    goto :goto_0

    .line 1221
    :cond_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->setAlarmService()V

    .line 1224
    packed-switch p1, :pswitch_data_0

    .line 1256
    :pswitch_0
    const-string v5, "BluetoothService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested invalid scan mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1194
    .end local v0           #bp:Landroid/sec/enterprise/BluetoothPolicy;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1228
    .restart local v0       #bp:Landroid/sec/enterprise/BluetoothPolicy;
    :pswitch_1
    :try_start_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v6, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1230
    const/4 v3, 0x0

    .line 1231
    .local v3, pairable:Z
    const/4 v1, 0x0

    .line 1260
    .local v1, discoverable:Z
    :cond_2
    :goto_1
    const-string v4, "Discoverable"

    invoke-direct {p0, v4, v1}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 1261
    const-string v4, "Pairable"

    invoke-direct {p0, v4, v3}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    move v4, v5

    .line 1262
    goto :goto_0

    .line 1236
    .end local v1           #discoverable:Z
    .end local v3           #pairable:Z
    :pswitch_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v6, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1238
    const/4 v3, 0x1

    .line 1239
    .restart local v3       #pairable:Z
    const/4 v1, 0x0

    .line 1240
    .restart local v1       #discoverable:Z
    goto :goto_1

    .line 1244
    .end local v1           #discoverable:Z
    .end local v3           #pairable:Z
    :pswitch_3
    iget-object v4, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v6, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1245
    if-lez p2, :cond_3

    .line 1246
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED_CUSTOM"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1247
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x1000

    invoke-static {v4, v6, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    .line 1248
    iget-object v4, p0, Landroid/server/BluetoothService;->mAlarmService:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    mul-int/lit16 v9, p2, 0x3e8

    int-to-long v9, v9

    add-long/2addr v7, v9

    iget-object v9, p0, Landroid/server/BluetoothService;->mDiscoveryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1251
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x1

    .line 1252
    .restart local v3       #pairable:Z
    const/4 v1, 0x1

    .line 1253
    .restart local v1       #discoverable:Z
    sget-boolean v4, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "BluetoothService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BT Discoverable for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1224
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized setScoPathChange(I)V
    .locals 1
    .parameter "scopath"

    .prologue
    .line 1179
    monitor-enter p0

    :try_start_0
    const-string v0, "ScoPathChange"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyInteger(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    monitor-exit p0

    return-void

    .line 1179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTrust(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "address"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 2211
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2212
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2219
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 2217
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2219
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trusted"

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {p0, v1, v2, v0}, Landroid/server/BluetoothService;->setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWbsParameters()Z
    .locals 1

    .prologue
    .line 4182
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/server/BluetoothService;->setWbsParametersNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native setWbsParametersNative()Z
.end method

.method declared-synchronized shutoffBluetooth()V
    .locals 3

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeReservedServiceRecordsNative([I)Z

    .line 646
    :cond_0
    iget-boolean v0, p0, Landroid/server/BluetoothService;->btPANEnable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string/jumbo v1, "nap"

    const-string/jumbo v2, "pan1"

    invoke-virtual {p0, v0, v1, v2}, Landroid/server/BluetoothService;->setBluetoothTetheringNative(ZLjava/lang/String;Ljava/lang/String;)Z

    .line 649
    :cond_1
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mMapAvailable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/server/BluetoothService;->mMapRecordHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 650
    iget v0, p0, Landroid/server/BluetoothService;->mMapRecordHandle:I

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeServiceRecordNative(I)Z

    .line 652
    :cond_2
    invoke-direct {p0}, Landroid/server/BluetoothService;->tearDownNativeDataNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    monitor-exit p0

    return-void

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDiscovery()Z
    .locals 3

    .prologue
    .line 1522
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1526
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->startDiscoveryNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startdisable(Z)Z
    .locals 5
    .parameter "saveSetting"

    .prologue
    const/4 v1, 0x1

    .line 541
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 545
    .local v0, adapterState:I
    packed-switch v0, :pswitch_data_0

    .line 551
    :pswitch_0
    const/4 v1, 0x0

    .line 566
    :goto_0
    :pswitch_1
    monitor-exit p0

    return v1

    .line 564
    :pswitch_2
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 541
    .end local v0           #adapterState:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method declared-synchronized switchConnectable(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 1273
    monitor-enter p0

    :try_start_0
    const-string v1, "Powered"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    monitor-exit p0

    return-void

    .line 1273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 3
    .parameter "config"

    .prologue
    .line 3545
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3547
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3548
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothHealthProfileHandler;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3549
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterGattCallback(Landroid/bluetooth/IBluetoothLEGattCallback;)V
    .locals 2
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2104
    const-string v0, "BluetoothService"

    const-string/jumbo v1, "unregisterGattCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    if-eqz p1, :cond_0

    .line 2106
    iget-object v1, p0, Landroid/server/BluetoothService;->mLELockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 2107
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mGattCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2108
    monitor-exit v1

    .line 2110
    :cond_0
    return-void

    .line 2108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native unregisterHealthApplicationNative(Ljava/lang/String;)Z
.end method

.method declared-synchronized updateBluetoothState(Ljava/lang/String;)V
    .locals 3
    .parameter "uuids"

    .prologue
    .line 922
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 924
    .local v0, adapterUuids:[Landroid/os/ParcelUuid;
    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    :cond_0
    monitor-exit p0

    return-void

    .line 922
    .end local v0           #adapterUuids:[Landroid/os/ParcelUuid;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method updateDeviceServiceChannelCache(Ljava/lang/String;)V
    .locals 17
    .parameter "address"

    .prologue
    .line 2563
    sget-boolean v14, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v14, :cond_0

    const-string v14, "BluetoothService"

    const-string/jumbo v15, "updateDeviceServiceChannelCache(address)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 2569
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v6

    .line 2571
    .local v6, deviceUuids:[Landroid/os/ParcelUuid;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2573
    .local v2, applicationUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    monitor-enter p0

    .line 2574
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/server/BluetoothService$RemoteService;

    .line 2575
    .local v11, service:Landroid/server/BluetoothService$RemoteService;
    iget-object v14, v11, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2576
    iget-object v14, v11, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2579
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2581
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 2584
    .local v13, uuidToChannelMap:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    sget-object v3, Landroid/server/BluetoothService;->RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

    .local v3, arr$:[Landroid/os/ParcelUuid;
    array-length v10, v3

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v10, :cond_5

    aget-object v12, v3, v8

    .line 2585
    .local v12, uuid:Landroid/os/ParcelUuid;
    invoke-static {v6, v12}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2586
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Landroid/server/BluetoothService;->getDeviceServiceChannelForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v5

    .line 2587
    .local v5, channel:I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_3

    .line 2588
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2589
    :cond_3
    sget-boolean v14, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v14, :cond_4

    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\tuuid(system): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    .end local v5           #channel:I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2593
    .end local v12           #uuid:Landroid/os/ParcelUuid;
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    .line 2594
    .restart local v12       #uuid:Landroid/os/ParcelUuid;
    invoke-static {v6, v12}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2595
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Landroid/server/BluetoothService;->getDeviceServiceChannelForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v5

    .line 2596
    .restart local v5       #channel:I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_7

    .line 2597
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2598
    :cond_7
    sget-boolean v14, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v14, :cond_6

    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\tuuid(application): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2603
    .end local v5           #channel:I
    .end local v12           #uuid:Landroid/os/ParcelUuid;
    :cond_8
    monitor-enter p0

    .line 2605
    :try_start_2
    sget-object v12, Landroid/bluetooth/BluetoothUuid;->HDP_SRC:Landroid/os/ParcelUuid;

    .line 2606
    .restart local v12       #uuid:Landroid/os/ParcelUuid;
    invoke-static {v6, v12}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 2607
    sget-boolean v14, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v14, :cond_9

    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Inside tuuid(HDP_SRC): ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Landroid/server/BluetoothService;->getDeviceServiceHdpDataTypeForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)[I

    move-result-object v15

    iput-object v15, v14, Landroid/server/BluetoothHealthProfileHandler;->HealthSdpDataTypes:[I

    .line 2610
    :cond_a
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2612
    monitor-enter p0

    .line 2614
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2615
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_b
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 2616
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/server/BluetoothService$RemoteService;

    .line 2617
    .restart local v11       #service:Landroid/server/BluetoothService$RemoteService;
    iget-object v14, v11, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 2618
    iget-object v14, v11, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 2619
    iget-object v14, v11, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2621
    .restart local v5       #channel:I
    sget-boolean v14, Landroid/server/BluetoothService;->DBG:Z

    if-eqz v14, :cond_c

    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Making callback for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " with result "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/IBluetoothCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2624
    .local v4, callback:Landroid/bluetooth/IBluetoothCallback;
    if-eqz v4, :cond_d

    .line 2626
    :try_start_4
    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2630
    :cond_d
    :goto_4
    :try_start_5
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 2637
    .end local v4           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v5           #channel:I
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v11           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_1
    move-exception v14

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v14

    .line 2610
    .end local v12           #uuid:Landroid/os/ParcelUuid;
    :catchall_2
    move-exception v14

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v14

    .line 2627
    .restart local v4       #callback:Landroid/bluetooth/IBluetoothCallback;
    .restart local v5       #channel:I
    .restart local v9       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v11       #service:Landroid/server/BluetoothService$RemoteService;
    .restart local v12       #uuid:Landroid/os/ParcelUuid;
    :catch_0
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    :try_start_7
    const-string v14, "BluetoothService"

    const-string v15, ""

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2636
    .end local v4           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v5           #channel:I
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v11           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2637
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2638
    return-void
.end method

.method updateRemoteDevicePropertiesCache(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 1316
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceProperties;->updateCache(Ljava/lang/String;)Ljava/util/Map;

    .line 1317
    return-void
.end method

.method updateRemoteServicePropertiesCache(Ljava/lang/String;)V
    .locals 1
    .parameter "objPath"

    .prologue
    .line 2189
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceProperties;->updateServiceCache(Ljava/lang/String;)Ljava/util/Map;

    .line 2190
    return-void
.end method

.method public writeIncomingConnectionState(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 11
    .parameter "address"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4146
    .local p2, data:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    monitor-enter v8

    .line 4147
    :try_start_0
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4149
    invoke-direct {p0}, Landroid/server/BluetoothService;->truncateIncomingConnectionFile()V

    .line 4150
    const/4 v3, 0x0

    .line 4151
    .local v3, out:Ljava/io/BufferedWriter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4153
    .local v6, value:Ljava/lang/StringBuilder;
    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const-string v9, "/data/misc/bluetooth/incoming_connection.conf"

    const/4 v10, 0x1

    invoke-direct {v7, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4154
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_2
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4155
    .local v0, devAddress:Ljava/lang/String;
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 4156
    .local v5, val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4157
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4158
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4159
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4160
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4161
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 4164
    .end local v0           #devAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 4165
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_1
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: writeIncomingConnectionState"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4169
    if-eqz v3, :cond_0

    .line 4171
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 4177
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4178
    return-void

    .line 4163
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_1
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 4169
    if-eqz v4, :cond_2

    .line 4171
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2
    :goto_3
    move-object v3, v4

    .line 4176
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 4166
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v1

    .line 4167
    .local v1, e:Ljava/io/IOException;
    :goto_4
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: writeIncomingConnectionState"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4169
    if-eqz v3, :cond_0

    .line 4171
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 4172
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_2

    .line 4169
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_3

    .line 4171
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 4169
    :cond_3
    :goto_6
    :try_start_b
    throw v7

    .line 4177
    .end local v3           #out:Ljava/io/BufferedWriter;
    .end local v6           #value:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v7

    .line 4172
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v6       #value:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v9

    goto :goto_6

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v7

    goto :goto_3

    .line 4169
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 4166
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 4164
    :catch_6
    move-exception v1

    goto :goto_1
.end method

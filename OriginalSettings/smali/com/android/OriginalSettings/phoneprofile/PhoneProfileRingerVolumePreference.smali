.class public Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "PhoneProfileRingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I

.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mCurrentMode:I

.field private mHandler:Landroid/os/Handler;

.field private mOriginalMusicVol:I

.field private mOriginalNotiVol:I

.field private mOriginalRingVol:I

.field private mOriginalSysVol:I

.field private mProfileMode:I

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    .line 75
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    .line 83
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    .line 91
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    .line 99
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 67
    nop

    :array_0
    .array-data 0x4
        0xe7t 0x1t 0xbt 0x7ft
        0xebt 0x1t 0xbt 0x7ft
        0xeft 0x1t 0xbt 0x7ft
        0xf1t 0x1t 0xbt 0x7ft
    .end array-data

    .line 75
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 83
    :array_2
    .array-data 0x4
        0xe6t 0x1t 0xbt 0x7ft
        0xeat 0x1t 0xbt 0x7ft
        0xeet 0x1t 0xbt 0x7ft
        0xf0t 0x1t 0xbt 0x7ft
    .end array-data

    .line 91
    :array_3
    .array-data 0x4
        0xdft 0x2t 0x8t 0x1t
        0xd8t 0x2t 0x8t 0x1t
        0xd4t 0x2t 0x8t 0x1t
        0xdbt 0x2t 0x8t 0x1t
    .end array-data

    .line 99
    :array_4
    .array-data 0x4
        0xddt 0x2t 0x8t 0x1t
        0xd7t 0x2t 0x8t 0x1t
        0xd3t 0x2t 0x8t 0x1t
        0xdat 0x2t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 108
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    .line 110
    new-instance v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$1;-><init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mHandler:Landroid/os/Handler;

    .line 418
    new-instance v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$3;-><init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->setStreamType(I)V

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->setDisplayType(I)V

    .line 158
    const v0, 0x7f0400a3

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->setDialogLayoutResource(I)V

    .line 160
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 162
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/VolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 164
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_profile_edit_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mProfileMode:I

    .line 166
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_profile_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mCurrentMode:I

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;)[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 360
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 367
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 368
    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aput-object v4, v2, v1

    .line 360
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 373
    iput-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 375
    :cond_2
    return-void
.end method

.method private getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 248
    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private updateSlidersAndMutedStates()V
    .locals 6

    .prologue
    .line 123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 124
    sget-object v4, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v2, v4, v0

    .line 125
    .local v2, streamType:I
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 127
    .local v1, muted:Z
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 128
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x10802d9

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 138
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    .line 140
    .local v3, volume:I
    :goto_2
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 123
    .end local v3           #volume:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-eqz v1, :cond_3

    sget-object v4, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v4, v4, v0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v0

    goto :goto_3

    .line 138
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    goto :goto_2

    .line 143
    .end local v1           #muted:Z
    .end local v2           #streamType:I
    :cond_5
    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 118
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->setPositiveButtonText(I)V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public onActivityStop()V
    .locals 4

    .prologue
    .line 331
    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    .line 333
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 334
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 333
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 14
    .parameter "view"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalRingVol:I

    .line 180
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 182
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v11, intentFilterVolume:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v0, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalSysVol:I

    .line 189
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalNotiVol:I

    .line 193
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalMusicVol:I

    .line 195
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 196
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 197
    .local v3, seekBar:Landroid/widget/SeekBar;
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v3, v0, v9

    .line 198
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v0, v0, v9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v13, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v0, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v1, v9

    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v13, v9

    .line 195
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v4, v9

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v1, v0, v9

    goto :goto_1

    .line 207
    .end local v3           #seekBar:Landroid/widget/SeekBar;
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_streams_affected"

    const/16 v2, 0x24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 211
    .local v12, silentableStreams:I
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge v9, v0, :cond_2

    .line 212
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 213
    .local v6, checkbox:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v6, v0, v9

    .line 211
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 217
    .end local v6           #checkbox:Landroid/widget/ImageView;
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->updateSlidersAndMutedStates()V

    .line 220
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 221
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    new-instance v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$2;-><init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 232
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    .end local v7           #filter:Landroid/content/IntentFilter;
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 238
    const v10, 0x7f0b01e8

    .line 242
    .local v10, id:I
    :goto_3
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 243
    .local v8, hideSection:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 244
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :cond_4
    return-void

    .line 240
    .end local v8           #hideSection:Landroid/view/View;
    .end local v10           #id:I
    :cond_5
    const v10, 0x7f0b01ec

    .restart local v10       #id:I
    goto :goto_3
.end method

.method protected onDialogClosed(Z)V
    .locals 13
    .parameter "positiveResult"

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 260
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    .line 262
    const-string v4, "PhoneProfileVolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " onDialogClosed() positiveResult: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    if-nez p1, :cond_1

    .line 276
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalRingVol:I

    invoke-virtual {v4, v10, v5, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 277
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalSysVol:I

    invoke-virtual {v4, v9, v5, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 278
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalNotiVol:I

    invoke-virtual {v4, v12, v5, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 279
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const-string v5, "audioParam;curDevice"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, isMusicHPH:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalMusicVol:I

    invoke-virtual {v4, v11, v5, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 326
    .end local v2           #isMusicHPH:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->cleanup()V

    .line 327
    return-void

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "PhoneProfileVolumePreference"

    const-string v5, "onDialogClosed : mVolumeChangeReceiver is not registered."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    const-string v4, "PhoneProfileVolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "volume:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v7, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " 1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v7, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v7, v7, v9

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " 2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v7, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "profile_music_volume"

    iget-object v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v6, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v4, "profile_ring_volume"

    iget-object v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v6, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v4, "profile_notification_volume"

    iget-object v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v6, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v6, v6, v10

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string v4, "profile_system_volume"

    iget-object v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    sget-object v6, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v6, v6, v11

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    sget-object v4, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mProfileMode:I

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 307
    .local v0, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 309
    iget v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mProfileMode:I

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mCurrentMode:I

    if-eq v4, v5, :cond_0

    .line 310
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalRingVol:I

    invoke-virtual {v4, v10, v5, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 311
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalSysVol:I

    invoke-virtual {v4, v9, v5, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 312
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalNotiVol:I

    invoke-virtual {v4, v12, v5, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 313
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const-string v5, "audioParam;curDevice"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .restart local v2       #isMusicHPH:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mOriginalMusicVol:I

    invoke-virtual {v4, v11, v5, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 340
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 341
    .local v0, isdown:Z
    :goto_0
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 347
    :sswitch_0
    return v1

    .end local v0           #isdown:Z
    :cond_0
    move v0, v2

    .line 340
    goto :goto_0

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 173
    const/high16 v0, 0x104

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 175
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    .line 398
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 400
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 413
    :cond_1
    return-void

    .line 404
    :cond_2
    check-cast p1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;

    .line 405
    invoke-virtual {p1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 406
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v1

    .line 407
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 408
    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v0

    .line 409
    if-eqz v2, :cond_3

    .line 410
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 407
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 353
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 354
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 355
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 354
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 379
    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 380
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 393
    .end local v2           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 385
    .restart local v2       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 386
    .local v1, myState:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;
    sget-object v5, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    .line 387
    .local v4, volumeStore:[Landroid/preference/VolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 388
    iget-object v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 389
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 390
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 387
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_2
    move-object v2, v1

    .line 393
    goto :goto_0
.end method

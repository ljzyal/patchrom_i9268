.class Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$2;
.super Landroid/content/BroadcastReceiver;
.source "PhoneProfileRingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$2;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 225
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$2;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;

    #getter for: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->access$100(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference$2;->this$0:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;

    #getter for: Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;->access$100(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileRingerVolumePreference;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x65

    const-string v4, "android.media.EXTRA_RINGER_MODE"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    :cond_0
    return-void
.end method

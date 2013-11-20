.class public Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;
.super Landroid/app/Activity;
.source "WifiOffloadDialog.java"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field public mLaunchFromSetup:Z

.field public mNextForwardIntentWIfi_In_SetupWizard:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private orientation:I

.field private packageName:Ljava/lang/String;

.field public searching_progress:Landroid/widget/ProgressBar;

.field public searching_text:Landroid/widget/TextView;

.field private setupWizardstepIndicator:Ljava/lang/String;

.field taskID:I

.field private userPress:I

.field wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    .line 33
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    .line 34
    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->taskID:I

    .line 35
    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->userPress:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    .line 43
    const-string v0, "com.samsung.vmmhux.ACTION_VMMHUX_SETUPWIZARD"

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mNextForwardIntentWIfi_In_SetupWizard:Ljava/lang/String;

    .line 45
    const-string v0, "1/7"

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->setupWizardstepIndicator:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->disableHomePopup()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->userPress:I

    return p1
.end method

.method private disableHomePopup()V
    .locals 5

    .prologue
    .line 256
    const-string v3, "WifiOffloadDialog"

    const-string v4, "Disabling Home Popup"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 258
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.setupwizard"

    const-string v4, "com.sec.android.app.setupwizard.PopupActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .local v0, name:Landroid/content/ComponentName;
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 264
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v2, startMain:Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->startActivity(Landroid/content/Intent;)V

    .line 268
    const-string v3, "WifiOffloadDialog"

    const-string v4, "Killing Setup Wizard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method private getTopActivityFromStack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    .line 89
    iget-boolean v9, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v9, :cond_1

    .line 91
    const-string v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 92
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 93
    const-string v9, "WifiOffloadDialog"

    const-string v10, "Requesting for WIFI from Setupwizard"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f04003c

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 96
    .local v8, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 97
    .local v0, ab:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    .line 98
    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 99
    const/16 v3, 0x15

    .line 100
    .local v3, flags:I
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 101
    const v9, 0x7f0b00a0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 102
    .local v7, stepIndicator:Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 103
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->setupWizardstepIndicator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .end local v3           #flags:I
    .end local v7           #stepIndicator:Landroid/widget/TextView;
    :cond_0
    const v9, 0x7f0b03a3

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 107
    .local v2, exitSetup:Landroid/widget/Button;
    new-instance v9, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog$1;

    invoke-direct {v9, p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .end local v0           #ab:Landroid/app/ActionBar;
    .end local v2           #exitSetup:Landroid/widget/Button;
    .end local v8           #v:Landroid/view/View;
    :goto_0
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 141
    .local v4, frame:Landroid/widget/FrameLayout;
    const v9, 0x7f0b039d

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setId(I)V

    .line 142
    new-instance v6, Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-direct {v6}, Lcom/android/OriginalSettings/wifi/WifiSettings;-><init>()V

    .line 143
    .local v6, newFrag:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 144
    .local v5, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getId()I

    move-result v9

    invoke-virtual {v5, v9, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 145
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 147
    const v9, 0x7f0b03a0

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->searching_text:Landroid/widget/TextView;

    .line 148
    const v9, 0x7f0b039f

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    iput-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->searching_progress:Landroid/widget/ProgressBar;

    .line 149
    return-void

    .line 117
    .end local v4           #frame:Landroid/widget/FrameLayout;
    .end local v5           #ft:Landroid/app/FragmentTransaction;
    .end local v6           #newFrag:Landroid/app/Fragment;
    :cond_1
    const v9, 0x7f0b03a1

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 118
    .local v1, dontDisturb:Landroid/widget/Button;
    new-instance v9, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog$2;

    invoke-direct {v9, p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog$2;-><init>(Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const-string v9, "wifioffload"

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiOffloadManager;

    iput-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    .line 131
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    iput-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    .line 132
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v9, :cond_2

    .line 133
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    .line 134
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTaskId()I

    move-result v9

    iput v9, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->taskID:I

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 189
    iput v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->userPress:I

    .line 190
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v2, :cond_0

    .line 191
    const-string v2, "WifiOffloadDialog"

    const-string v3, "Offload onBackKeyPressed()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiOffloadManager;->startDontUseWiFiPressedTimer()V

    .line 193
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiOffloadManager;->setDontuseWifiPressed(Z)V

    .line 195
    :cond_0
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v2, :cond_2

    .line 197
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.setupwizard.DATA_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v1, paygDataSetupIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 200
    .local v0, intentExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    const-string v2, "setup_wizard_bundle"

    const-string v3, "setup_wizard_bundle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 206
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->finish()V

    .line 211
    .end local v0           #intentExtras:Landroid/os/Bundle;
    .end local v1           #paygDataSetupIntent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 204
    .restart local v0       #intentExtras:Landroid/os/Bundle;
    .restart local v1       #paygDataSetupIntent:Landroid/content/Intent;
    :cond_1
    const-string v2, "WifiOffloadDialog"

    const-string v3, "Bundle is Empty in Wifi Offload Screen"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    .end local v0           #intentExtras:Landroid/os/Bundle;
    .end local v1           #paygDataSetupIntent:Landroid/content/Intent;
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 238
    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() ===>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 240
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v0, :cond_1

    .line 241
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 242
    const v0, 0x7f040123

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->setContentView(I)V

    .line 243
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->initialize()V

    .line 251
    :cond_0
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->orientation:I

    .line 252
    return-void

    .line 246
    :cond_1
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 247
    const v0, 0x7f040124

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->setContentView(I)V

    .line 248
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->initialize()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 49
    iput-object p0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 51
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "WIFI_OFFLOAD_DO_NOT_DISTURB"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 52
    .local v3, status:I
    const-string v4, "LAUNCH_SETUPWIZARD"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    .line 53
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v4, :cond_0

    .line 54
    const-string v4, "WifiOffloadDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " %%%%%%%%%%%%%%%%%%%%%%%%%%    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    if-ne v3, v8, :cond_1

    .line 56
    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->requestWindowFeature(I)Z

    .line 57
    :cond_1
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v4, :cond_2

    .line 58
    const v4, 0x7f100001

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->setTheme(I)V

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x100

    invoke-virtual {v4, v5, v7}, Landroid/view/Window;->setFlags(II)V

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string v4, "WifiOffloadDialog"

    const-string v5, "Offload, Dialog comes....!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v4, :cond_4

    .line 64
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 65
    .local v2, intentExtras:Landroid/os/Bundle;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 66
    const-string v4, "setup_wizard_bundle"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, bundlelVal:Landroid/os/Bundle;
    const-string v4, "com.sec.android.app.setupwizard_wifi_offload"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->setupWizardstepIndicator:Ljava/lang/String;

    .line 70
    const-string v4, "com.sec.android.app.setupwizard_wifi_forward_intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mNextForwardIntentWIfi_In_SetupWizard:Ljava/lang/String;

    .line 73
    const-string v4, "WifiOffloadDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SetupWizard Step Indicator....!!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->setupWizardstepIndicator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v0           #bundlelVal:Landroid/os/Bundle;
    :goto_0
    const v4, 0x7f040124

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->setContentView(I)V

    .line 80
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->initialize()V

    .line 85
    .end local v2           #intentExtras:Landroid/os/Bundle;
    :goto_1
    return-void

    .line 76
    .restart local v2       #intentExtras:Landroid/os/Bundle;
    :cond_3
    const-string v4, "WifiOffloadDialog"

    const-string v5, " Bundle is Empty in Wifi Offload Dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local v2           #intentExtras:Landroid/os/Bundle;
    :cond_4
    const v4, 0x7f040123

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->setContentView(I)V

    .line 83
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->initialize()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 217
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 155
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->taskID:I

    .line 157
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->userPress:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 158
    const-string v0, "WifiOffloadDialog"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog TaskID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->taskID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    iget v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->taskID:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiOffloadManager;->checkAppNeedsMoveToFront(I)V

    .line 166
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 172
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v1, :cond_0

    .line 173
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    .line 175
    const-string v1, "WifiOffloadDialog"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    .line 182
    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 183
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 185
    :cond_1
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 229
    const-string v0, "WifiOffloadDialog"

    const-string v1, "onUserLeaveHint()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->finish()V

    .line 234
    :cond_0
    return-void
.end method

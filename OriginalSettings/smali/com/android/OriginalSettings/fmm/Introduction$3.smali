.class Lcom/android/OriginalSettings/fmm/Introduction$3;
.super Ljava/lang/Object;
.source "Introduction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/fmm/Introduction;->warnExchangeBrowserApn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/fmm/Introduction;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/fmm/Introduction;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/OriginalSettings/fmm/Introduction$3;->this$0:Lcom/android/OriginalSettings/fmm/Introduction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "mDialog"
    .parameter "which"

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v0, apnIntent:Landroid/content/Intent;
    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserPreferencesPage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v1, ":android:show_fragment"

    const-string v2, "com.android.browser.preferences.AdvancedPreferencesFragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/Introduction$3;->this$0:Lcom/android/OriginalSettings/fmm/Introduction;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/fmm/Introduction;->startActivity(Landroid/content/Intent;)V

    .line 151
    return-void
.end method

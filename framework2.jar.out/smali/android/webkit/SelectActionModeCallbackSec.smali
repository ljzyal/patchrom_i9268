.class public Landroid/webkit/SelectActionModeCallbackSec;
.super Ljava/lang/Object;
.source "SelectActionModeCallbackSec.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SelectActionModeCallbackSec"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field public mIsEditable:Z

.field private mRecreate:Z

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;ZI)V
    .locals 1
    .parameter "menu"
    .parameter "visible"
    .parameter "resourceId"

    .prologue
    .line 238
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 239
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 67
    :cond_0
    return-void
.end method

.method finish(Z)V
    .locals 0
    .parameter "recreate"

    .prologue
    .line 71
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    .line 72
    invoke-virtual {p0}, Landroid/webkit/SelectActionModeCallbackSec;->finish()V

    .line 73
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "mode"
    .parameter "item"

    .prologue
    const/16 v7, 0x7530

    const/16 v6, 0x7d0

    const/4 v4, 0x0

    .line 148
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 226
    :goto_0
    return v4

    .line 150
    :sswitch_0
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->cutSelectionSec()V

    .line 151
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 226
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 157
    :sswitch_1
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->copySelectionSec()Z

    .line 159
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 160
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 164
    :sswitch_2
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 165
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 173
    :sswitch_3
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 174
    const-string v4, "SelectActionModeCallbackSec"

    const-string v5, "mWebView.getSelectionSec() is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 177
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, selection:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 179
    const-string v4, "SelectActionModeCallbackSec"

    const-string v5, "onActionItemClicked: selected string is too long. Cut it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 183
    :cond_1
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 185
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 189
    .end local v2           #selection:Ljava/lang/StringBuffer;
    :sswitch_4
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->selectAllSec()Z

    goto :goto_1

    .line 193
    :sswitch_5
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, sel:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 195
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 196
    iget-object v5, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5, v1, v4}, Landroid/webkit/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 201
    .end local v1           #sel:Ljava/lang/String;
    :sswitch_6
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 202
    const-string v4, "SelectActionModeCallbackSec"

    const-string v5, "mWebView.getSelectionSec() is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 206
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 207
    .local v3, stringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 208
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 211
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, i:Landroid/content/Intent;
    const-string v4, "query"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 214
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 215
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 219
    .end local v0           #i:Landroid/content/Intent;
    .end local v3           #stringBuffer:Ljava/lang/StringBuffer;
    :sswitch_7
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->pasteFromClipboardEx()V

    .line 220
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 148
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020020 -> :sswitch_0
        0x1020021 -> :sswitch_1
        0x1020022 -> :sswitch_2
        0x102025d -> :sswitch_7
        0x102047a -> :sswitch_4
        0x102047b -> :sswitch_3
        0x102047c -> :sswitch_5
        0x102047d -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 10
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v8

    const v9, 0x1140007

    invoke-virtual {v8, v9, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 82
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 85
    .local v5, context:Landroid/content/Context;
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getFindOptionEnabled()Z

    move-result v6

    .line 94
    .local v6, isFindEnabled:Z
    const-string v8, "clipboard"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ClipboardManager;

    move-object v3, v8

    check-cast v3, Landroid/content/ClipboardManager;

    .line 96
    .local v3, cm:Landroid/content/ClipboardManager;
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v7

    .line 101
    .local v7, isFocusable:Z
    iget-boolean v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v8, :cond_0

    .line 102
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v8

    iput-boolean v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    .line 104
    :cond_0
    iget-boolean v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    .line 105
    .local v2, canPaste:Z
    :goto_0
    iget-boolean v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-nez v8, :cond_3

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    .line 106
    .local v1, canFind:Z
    :goto_1
    iget-boolean v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    const/4 v0, 0x1

    .line 107
    .local v0, canCut:Z
    :goto_2
    const v8, 0x102047c

    invoke-direct {p0, p2, v1, v8}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 108
    const v8, 0x1020022

    invoke-direct {p0, p2, v2, v8}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 109
    const v8, 0x1020020

    invoke-direct {p0, p2, v0, v8}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 110
    iget-boolean v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    const v9, 0x102025d

    invoke-direct {p0, p2, v8, v9}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 111
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 118
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 119
    .local v4, config:Landroid/content/res/Configuration;
    iget v8, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0x4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    .line 120
    iget v8, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 121
    const/4 v8, 0x0

    invoke-interface {p2, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 122
    const/4 v8, 0x1

    invoke-interface {p2, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 123
    const/4 v8, 0x2

    invoke-interface {p2, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 124
    const/4 v8, 0x3

    invoke-interface {p2, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 125
    const/4 v8, 0x4

    invoke-interface {p2, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 126
    const/4 v8, 0x5

    invoke-interface {p2, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 136
    :cond_1
    :goto_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    .line 137
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 138
    const/4 v8, 0x1

    return v8

    .line 104
    .end local v0           #canCut:Z
    .end local v1           #canFind:Z
    .end local v2           #canPaste:Z
    .end local v4           #config:Landroid/content/res/Configuration;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 105
    .restart local v2       #canPaste:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 106
    .restart local v1       #canFind:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 128
    .restart local v0       #canCut:Z
    .restart local v4       #config:Landroid/content/res/Configuration;
    :cond_5
    const/4 v8, 0x0

    invoke-interface {p2, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 129
    const/4 v8, 0x1

    invoke-interface {p2, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 130
    const/4 v8, 0x2

    invoke-interface {p2, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 131
    const/4 v8, 0x3

    invoke-interface {p2, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 132
    const/4 v8, 0x4

    invoke-interface {p2, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 133
    const/4 v8, 0x5

    invoke-interface {p2, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 233
    iget-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 235
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method protected onSetWebView()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method setWebViewClassic(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "webViewClassic"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    .line 46
    invoke-virtual {p0}, Landroid/webkit/SelectActionModeCallbackSec;->onSetWebView()V

    .line 47
    return-void
.end method

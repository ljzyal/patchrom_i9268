.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mPushOrigAddr:Ljava/lang/String;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 70
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 140
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 141
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 142
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->bindWapPushManager()V

    .line 144
    return-void
.end method

.method private dispatchWapPdu_CON013([BIILjava/lang/String;IIZ)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "isVaildHeader"

    .prologue
    const/4 v5, 0x0

    .line 635
    add-int v1, p5, p6

    .line 636
    .local v1, dataIndex:I
    array-length v3, p1

    sub-int/2addr v3, v1

    new-array v0, v3, [B

    .line 637
    .local v0, data:[B
    array-length v3, v0

    invoke-static {p1, v1, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string/jumbo v3, "transactionId"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    const-string/jumbo v3, "pduType"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 646
    if-nez p7, :cond_0

    .line 647
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 650
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dispatchWapPdu_DMNoti([BI)V
    .locals 3
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 706
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 708
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 709
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    const-string v1, "WAP PUSH"

    const-string v2, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method private dispatchWapPdu_DSNoti([BI)V
    .locals 3
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 745
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    .line 746
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED_MYPHONEBOOK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 748
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ds_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 750
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 751
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 776
    :goto_0
    return-void

    .line 766
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "application/vnd.syncml.ds.notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 771
    const-string v1, "ds_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 772
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 773
    const-string v1, "WAP PUSH"

    const-string v2, "ds noti intent is sent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dispatchWapPdu_EMN([BIIIILjava/lang/String;IJ)I
    .locals 10
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "mimeType"
    .parameter "binaryContentType"
    .parameter "applicationId"

    .prologue
    .line 783
    const/4 v6, 0x1

    .line 785
    .local v6, ret:I
    new-array v4, p5, [B

    .line 786
    .local v4, header:[B
    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {p1, p4, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    add-int v3, p4, p5

    .line 788
    .local v3, dataIndex:I
    array-length v7, p1

    sub-int/2addr v7, v3

    new-array v2, v7, [B

    .line 789
    .local v2, data:[B
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {p1, v3, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 791
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 792
    .local v5, intent:Landroid/content/Intent;
    const-string/jumbo v7, "transactionId"

    invoke-virtual {v5, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 793
    const-string/jumbo v7, "pduType"

    invoke-virtual {v5, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 794
    const-string v7, "header"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 795
    const-string v7, "data"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 796
    const-string v7, "applicationId"

    move-wide/from16 v0, p8

    invoke-virtual {v5, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 799
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive EMN : mimeType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " binaryContentType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " applicationId= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    sparse-switch p7, :sswitch_data_0

    .line 858
    :goto_0
    return v6

    .line 803
    :sswitch_0
    const-string v7, "application/vnd.docomo.pf"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    const-wide/32 v7, 0x9056

    cmp-long v7, p8, v7

    if-nez v7, :cond_1

    .line 806
    const-string v7, "com.nttdocomo.email.service"

    const-string v8, "com.nttdocomo.email.service.ImodeMailService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    .line 808
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 809
    const/4 v6, -0x1

    .line 811
    :cond_0
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : i-mode.net"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 814
    :cond_1
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    :sswitch_1
    const-string v7, "application/vnd.syncml.notification"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    const-wide/16 v7, 0x7

    cmp-long v7, p8, v7

    if-nez v7, :cond_3

    .line 822
    const-string v7, "jp.co.nttdocomo.fota"

    const-string v8, "jp.co.nttdocomo.fota.SMSService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_2

    .line 824
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 825
    const/4 v6, -0x1

    .line 827
    :cond_2
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : fota"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 830
    :cond_3
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 835
    :sswitch_2
    const-string v7, "application/vnd.wap.emn+wbxml"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    const-wide/32 v7, 0x905c

    cmp-long v7, p8, v7

    if-nez v7, :cond_5

    .line 838
    const-string v7, "jp.co.nttdocomo.carriermail"

    const-string v8, "jp.co.nttdocomo.carriermail.SMSService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_4

    .line 840
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 841
    const/4 v6, -0x1

    .line 843
    :cond_4
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : Carrier Mail"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 845
    :cond_5
    const-wide/16 v7, 0x9

    cmp-long v7, p8, v7

    if-nez v7, :cond_7

    .line 847
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    if-eqz v7, :cond_6

    .line 848
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v8, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v7, v5, v8}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 849
    const/4 v6, -0x1

    .line 851
    :cond_6
    const-string v7, "WAP PUSH"

    const-string v8, "Receive EMN : mopera U"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 854
    :cond_7
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 801
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x30a -> :sswitch_2
        0x310 -> :sswitch_0
    .end sparse-switch
.end method

.method private dispatchWapPdu_MMS([BIIII)V
    .locals 7
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v6, 0x0

    .line 677
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    .line 678
    .local v2, edm:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-eqz v2, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingMmsAllowed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    new-array v3, p5, [B

    .line 685
    .local v3, header:[B
    array-length v5, v3

    invoke-static {p1, p4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 686
    add-int v1, p4, p5

    .line 687
    .local v1, dataIndex:I
    array-length v5, p1

    sub-int/2addr v5, v1

    new-array v0, v5, [B

    .line 688
    .local v0, data:[B
    array-length v5, v0

    invoke-static {p1, v1, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 690
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "application/vnd.wap.mms-message"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    const-string/jumbo v5, "transactionId"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 693
    const-string/jumbo v5, "pduType"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 694
    const-string v5, "header"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 695
    const-string v5, "data"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 698
    iget-object v5, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v6, "android.permission.RECEIVE_MMS"

    invoke-virtual {v5, v4, v6}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dispatchWapPdu_PushCO([BIIII)V
    .locals 4
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    .line 656
    new-array v0, p5, [B

    .line 657
    .local v0, header:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, p4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 660
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    const-string/jumbo v2, "transactionId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 662
    const-string/jumbo v2, "pduType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 664
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 666
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 667
    const-string/jumbo v2, "origaddr"

    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method private dispatchWapPdu_PushMsg([BI)V
    .locals 4
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 721
    const-string v1, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWapPdu_PushMsg : binaryContentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 725
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 727
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 729
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 730
    const-string/jumbo v1, "origaddr"

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method private dispatchWapPdu_SLC([BIIIILjava/lang/String;IJ)I
    .locals 10
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "mimeType"
    .parameter "binaryContentType"
    .parameter "applicationId"

    .prologue
    .line 874
    const/4 v6, 0x1

    .line 876
    .local v6, ret:I
    new-array v4, p5, [B

    .line 877
    .local v4, header:[B
    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {p1, p4, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    add-int v3, p4, p5

    .line 879
    .local v3, dataIndex:I
    array-length v7, p1

    sub-int/2addr v7, v3

    new-array v2, v7, [B

    .line 880
    .local v2, data:[B
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {p1, v3, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.nttdocomo.android.syncmlapp.SP_SYNCML_PUSH"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    .local v5, intent:Landroid/content/Intent;
    const-string/jumbo v7, "transactionId"

    invoke-virtual {v5, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 884
    const-string/jumbo v7, "pduType"

    invoke-virtual {v5, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 885
    const-string v7, "header"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 886
    const-string v7, "data"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 887
    const-string v7, "applicationId"

    move-wide/from16 v0, p8

    invoke-virtual {v5, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 890
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive SLC : mimeType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " binaryContentType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " applicationId= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const-string v7, "application/vnd.syncml+wbxml"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    const-wide/32 v7, 0x905f

    cmp-long v7, p8, v7

    if-nez v7, :cond_1

    .line 895
    const-string v7, "com.nttdocomo.android.syncmlapp"

    const-string v8, "com.nttdocomo.android.syncmlapp.SyncML_SMSService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 896
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    .line 897
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 898
    const/4 v6, -0x1

    .line 905
    :cond_0
    :goto_0
    return v6

    .line 902
    :cond_1
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application id is unknown:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 46
    .parameter "pdu"

    .prologue
    .line 165
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Rx: "

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/16 v29, 0x0

    .line 168
    .local v29, index:I
    add-int/lit8 v30, v29, 0x1

    .end local v29           #index:I
    .local v30, index:I
    aget-byte v4, p1, v29

    and-int/lit16 v6, v4, 0xff

    .line 169
    .local v6, transactionId:I
    add-int/lit8 v29, v30, 0x1

    .end local v30           #index:I
    .restart local v29       #index:I
    aget-byte v4, p1, v30

    and-int/lit16 v7, v4, 0xff

    .line 170
    .local v7, pduType:I
    const/4 v9, 0x0

    .line 172
    .local v9, headerLength:I
    const/4 v4, 0x6

    if-eq v7, v4, :cond_0

    const/4 v4, 0x7

    if-eq v7, v4, :cond_0

    .line 174
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Received non-PUSH WAP PDU. Type = "

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v4, 0x1

    .line 628
    :goto_0
    return v4

    .line 178
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Length error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v4, 0x2

    goto :goto_0

    .line 190
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v9, v4

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int/lit8 v29, v4, 0x2

    .line 193
    move/from16 v8, v29

    .line 207
    .local v8, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 208
    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Content-Type error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v4, 0x2

    goto :goto_0

    .line 212
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v10

    .line 213
    .local v10, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v19

    .line 214
    .local v19, binaryContentType:J
    move/from16 v31, v29

    .line 216
    .local v31, index_con013:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v11, v4

    .line 217
    .local v11, iBinaryContentType:I
    if-nez v10, :cond_5

    .line 219
    sparse-switch v11, :sswitch_data_0

    .line 290
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Received PDU. Unsupported Content-Type = "

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 221
    :sswitch_0
    const-string v10, "application/vnd.oma.drm.rights+xml"

    .line 354
    :goto_1
    const/16 v36, 0x0

    .line 355
    .local v36, isValidContentType:Z
    const/16 v35, 0x0

    .line 356
    .local v35, isValidApplicationID:Z
    const/16 v34, 0x0

    .line 358
    .local v34, isSULPINITMessage:Z
    const/4 v15, 0x0

    .line 361
    .local v15, Delta_Index:I
    const-string v4, "application/vnd.omaloc-supl-init"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 362
    const/16 v34, 0x1

    .line 364
    aget-byte v4, p1, v31

    const/16 v5, 0x61

    if-ge v4, v5, :cond_15

    .line 365
    aget-byte v4, p1, v31

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v31, 0x1

    aget-byte v4, p1, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v31, 0x2

    aget-byte v4, p1, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v31, 0x3

    aget-byte v4, p1, v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_3

    .line 367
    const/16 v36, 0x1

    .line 368
    const/4 v15, 0x4

    .line 386
    :cond_3
    :goto_2
    if-eqz v36, :cond_4

    add-int v4, v31, v15

    aget-byte v4, p1, v4

    const/16 v5, -0x51

    if-ne v4, v5, :cond_4

    .line 387
    add-int/lit8 v4, v31, -0x1

    aget-byte v4, p1, v4

    sub-int v22, v4, v15

    .line 388
    .local v22, d_Length:I
    add-int/lit8 v4, v31, -0x1

    aget-byte v26, p1, v4

    .line 389
    .local v26, h_Length:I
    const/16 v16, 0x19

    .line 391
    .local v16, Delta_index2:I
    const/4 v4, 0x3

    move/from16 v0, v22

    if-le v0, v4, :cond_16

    .line 392
    add-int v4, v31, v15

    add-int/lit8 v42, v4, 0x1

    .line 393
    .local v42, startIndex:I
    new-instance v17, Ljava/lang/String;

    const-string/jumbo v4, "x-oma-application:ulp.ua"

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 394
    .local v17, appID:Ljava/lang/String;
    new-instance v38, Ljava/lang/String;

    const/16 v4, 0x18

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    move/from16 v2, v42

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 396
    .local v38, pdu_app:Ljava/lang/String;
    if-eqz v38, :cond_4

    .line 399
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 400
    const/16 v35, 0x1

    .line 415
    .end local v16           #Delta_index2:I
    .end local v17           #appID:Ljava/lang/String;
    .end local v22           #d_Length:I
    .end local v26           #h_Length:I
    .end local v38           #pdu_app:Ljava/lang/String;
    .end local v42           #startIndex:I
    :cond_4
    :goto_3
    const/16 v24, 0x0

    .line 416
    .local v24, dispatchedByApplication:Z
    sparse-switch v11, :sswitch_data_1

    .line 506
    :goto_4
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_19

    .line 507
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 224
    .end local v15           #Delta_Index:I
    .end local v24           #dispatchedByApplication:Z
    .end local v34           #isSULPINITMessage:Z
    .end local v35           #isValidApplicationID:Z
    .end local v36           #isValidContentType:Z
    :sswitch_1
    const-string v10, "application/vnd.oma.drm.rights+wbxml"

    .line 225
    goto/16 :goto_1

    .line 227
    :sswitch_2
    const-string v10, "application/vnd.wap.sic"

    .line 228
    goto/16 :goto_1

    .line 230
    :sswitch_3
    const-string v10, "application/vnd.wap.slc"

    .line 231
    goto/16 :goto_1

    .line 233
    :sswitch_4
    const-string v10, "application/vnd.wap.coc"

    .line 234
    goto/16 :goto_1

    .line 236
    :sswitch_5
    const-string v10, "application/vnd.wap.mms-message"

    .line 237
    goto/16 :goto_1

    .line 239
    :sswitch_6
    const-string v10, "application/vnd.omaloc-supl-init"

    .line 240
    goto/16 :goto_1

    .line 242
    :sswitch_7
    const-string v10, "application/vnd.docomo.pf"

    .line 243
    goto/16 :goto_1

    .line 251
    :sswitch_8
    const-string v10, "application/vnd.syncml.notification"

    .line 252
    goto/16 :goto_1

    .line 257
    :sswitch_9
    const-string v10, "application/vnd.syncml.ds.notification"

    .line 258
    goto/16 :goto_1

    .line 261
    :sswitch_a
    const-string v10, "application/vnd.wap.connectivity-wbxml"

    .line 262
    goto/16 :goto_1

    .line 264
    :sswitch_b
    const-string v10, "application/vnd.syncml.dm+wbxml"

    .line 265
    goto/16 :goto_1

    .line 267
    :sswitch_c
    const-string v10, "application/vnd.syncml.dm+xml"

    .line 268
    goto/16 :goto_1

    .line 272
    :sswitch_d
    const-string v10, "application/vnd.wap.emn+wbxml"

    .line 273
    goto/16 :goto_1

    .line 285
    :sswitch_e
    const-string v10, "application/vnd.syncml+wbxml"

    .line 286
    goto/16 :goto_1

    .line 296
    :cond_5
    const-string v4, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 297
    const/16 v11, 0x4a

    goto/16 :goto_1

    .line 298
    :cond_6
    const-string v4, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 299
    const/16 v11, 0x4b

    goto/16 :goto_1

    .line 300
    :cond_7
    const-string v4, "application/vnd.wap.sic"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 301
    const/16 v11, 0x2e

    goto/16 :goto_1

    .line 302
    :cond_8
    const-string v4, "application/vnd.wap.slc"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 303
    const/16 v11, 0x30

    goto/16 :goto_1

    .line 304
    :cond_9
    const-string v4, "application/vnd.wap.coc"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 305
    const/16 v11, 0x32

    goto/16 :goto_1

    .line 306
    :cond_a
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 307
    const/16 v11, 0x3e

    goto/16 :goto_1

    .line 308
    :cond_b
    const-string v4, "application/vnd.omaloc-supl-init"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 309
    const/16 v11, 0x312

    goto/16 :goto_1

    .line 310
    :cond_c
    const-string v4, "application/vnd.docomo.pf"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 311
    const/16 v11, 0x310

    goto/16 :goto_1

    .line 317
    :cond_d
    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 318
    const/16 v11, 0x44

    goto/16 :goto_1

    .line 319
    :cond_e
    const-string v4, "application/vnd.syncml.ds.notification"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 320
    const/16 v11, 0x4e

    goto/16 :goto_1

    .line 323
    :cond_f
    const-string v4, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 324
    const/16 v11, 0x36

    goto/16 :goto_1

    .line 325
    :cond_10
    const-string v4, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 326
    const/16 v11, 0x42

    goto/16 :goto_1

    .line 327
    :cond_11
    const-string v4, "application/vnd.syncml.dm+xml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 328
    const/16 v11, 0x43

    goto/16 :goto_1

    .line 331
    :cond_12
    const-string v4, "application/vnd.wap.emn+wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 332
    const/16 v11, 0x30a

    goto/16 :goto_1

    .line 343
    :cond_13
    const-string v4, "application/vnd.syncml+wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 344
    const/16 v11, 0xb0

    goto/16 :goto_1

    .line 348
    :cond_14
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Received PDU. Unknown Content-Type = "

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 372
    .restart local v15       #Delta_Index:I
    .restart local v34       #isSULPINITMessage:Z
    .restart local v35       #isValidApplicationID:Z
    .restart local v36       #isValidContentType:Z
    :cond_15
    const/16 v15, 0x21

    .line 373
    new-instance v14, Ljava/lang/String;

    const-string v4, "application/vnd.omaloc-supl-init"

    invoke-direct {v14, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 374
    .local v14, CType:Ljava/lang/String;
    new-instance v37, Ljava/lang/String;

    const/16 v4, 0x20

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 375
    .local v37, pdu_CType:Ljava/lang/String;
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Content Type : pdu = "

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v45, p1, v31

    move/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v45, ","

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v45, v31, 0x1

    aget-byte v45, p1, v45

    move/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v45, ","

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v45, v31, 0x2

    aget-byte v45, p1, v45

    move/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-eqz v37, :cond_3

    .line 379
    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 380
    const/16 v36, 0x1

    goto/16 :goto_2

    .line 406
    .end local v14           #CType:Ljava/lang/String;
    .end local v37           #pdu_CType:Ljava/lang/String;
    .restart local v16       #Delta_index2:I
    .restart local v22       #d_Length:I
    .restart local v26       #h_Length:I
    :cond_16
    add-int v4, v31, v15

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    const/16 v5, -0x70

    if-ne v4, v5, :cond_4

    .line 407
    const/16 v35, 0x1

    goto/16 :goto_3

    .end local v16           #Delta_index2:I
    .end local v22           #d_Length:I
    .end local v26           #h_Length:I
    .restart local v24       #dispatchedByApplication:Z
    :sswitch_f
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 418
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIII)V

    .line 419
    const/16 v24, 0x1

    .line 420
    goto/16 :goto_4

    :sswitch_10
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 422
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIII)V

    .line 423
    const/16 v24, 0x1

    .line 424
    goto/16 :goto_4

    .line 430
    :sswitch_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DMNoti([BI)V

    .line 431
    const/16 v24, 0x1

    .line 432
    goto/16 :goto_4

    .line 442
    :sswitch_12
    const/16 v24, 0x0

    .line 443
    goto/16 :goto_4

    .line 448
    :sswitch_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 449
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DSNoti([BI)V

    .line 450
    const/16 v24, 0x1

    goto/16 :goto_4

    .line 452
    :cond_17
    const/16 v24, 0x1

    .line 454
    goto/16 :goto_4

    .line 461
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v29

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaderMapfromSMSPushPDU(III)Ljava/util/HashMap;

    move-result-object v28

    .line 462
    .local v28, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const/16 v4, 0x2f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 464
    .local v18, applicationIdObj:Ljava/lang/Object;
    const-wide/16 v12, 0x0

    .line 465
    .local v12, applicationId:J
    move-object/from16 v0, v18

    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_18

    .line 466
    check-cast v18, Ljava/lang/Long;

    .end local v18           #applicationIdObj:Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :cond_18
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 468
    invoke-direct/range {v4 .. v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_EMN([BIIIILjava/lang/String;IJ)I

    move-result v4

    goto/16 :goto_0

    .line 530
    .end local v12           #applicationId:J
    .end local v28           #headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v29, v29, v4

    .line 532
    new-array v0, v9, [B

    move-object/from16 v27, v0

    .line 533
    .local v27, header:[B
    const/4 v4, 0x0

    move-object/from16 v0, v27

    array-length v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v8, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    if-eqz v10, :cond_1c

    const-string v4, "application/vnd.wap.coc"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 538
    move-object/from16 v33, p1

    .line 551
    .local v33, intentData:[B
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    add-int v5, v29, v9

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v29

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v29, v0

    .line 553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v43

    .line 555
    .local v43, wapAppId:Ljava/lang/String;
    if-nez v43, :cond_1a

    .line 556
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    .line 559
    :cond_1a
    if-nez v10, :cond_1d

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    .line 564
    .local v21, contentType:Ljava/lang/String;
    :goto_6
    const/16 v41, 0x1

    .line 565
    .local v41, processFurther:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v44

    .line 567
    .local v44, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v44, :cond_1e

    .line 585
    :cond_1b
    :goto_7
    if-nez v41, :cond_1f

    .line 586
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 540
    .end local v21           #contentType:Ljava/lang/String;
    .end local v33           #intentData:[B
    .end local v41           #processFurther:Z
    .end local v43           #wapAppId:Ljava/lang/String;
    .end local v44           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_1c
    add-int v23, v8, v9

    .line 541
    .local v23, dataIndex:I
    move-object/from16 v0, p1

    array-length v4, v0

    sub-int v4, v4, v23

    new-array v0, v4, [B

    move-object/from16 v33, v0

    .line 542
    .restart local v33       #intentData:[B
    const/4 v4, 0x0

    move-object/from16 v0, v33

    array-length v5, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .end local v23           #dataIndex:I
    .restart local v43       #wapAppId:Ljava/lang/String;
    :cond_1d
    move-object/from16 v21, v10

    .line 559
    goto :goto_6

    .line 570
    .restart local v21       #contentType:Ljava/lang/String;
    .restart local v41       #processFurther:Z
    .restart local v44       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_1e
    :try_start_1
    new-instance v32, Landroid/content/Intent;

    invoke-direct/range {v32 .. v32}, Landroid/content/Intent;-><init>()V

    .line 571
    .local v32, intent:Landroid/content/Intent;
    const-string/jumbo v4, "transactionId"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    const-string/jumbo v4, "pduType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    const-string v4, "header"

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 574
    const-string v4, "data"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 575
    const-string v4, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 578
    move-object/from16 v0, v44

    move-object/from16 v1, v43

    move-object/from16 v2, v21

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v40

    .line 580
    .local v40, procRet:I
    and-int/lit8 v4, v40, 0x1

    if-lez v4, :cond_1b

    const v4, 0x8000

    and-int v4, v4, v40

    if-nez v4, :cond_1b

    .line 582
    const/16 v41, 0x0

    goto :goto_7

    .line 588
    .end local v32           #intent:Landroid/content/Intent;
    .end local v40           #procRet:I
    .end local v44           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_0
    move-exception v4

    .line 594
    .end local v21           #contentType:Ljava/lang/String;
    .end local v41           #processFurther:Z
    .end local v43           #wapAppId:Ljava/lang/String;
    :cond_1f
    if-nez v10, :cond_20

    .line 596
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 601
    :cond_20
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 603
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v25

    .line 604
    .local v25, edm:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-eqz v25, :cond_22

    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual/range {v25 .. v25}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingMmsAllowed()Z

    move-result v4

    if-nez v4, :cond_22

    .line 606
    :cond_21
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 609
    :cond_22
    const-string v39, "android.permission.RECEIVE_MMS"

    .line 614
    .end local v25           #edm:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .local v39, permission:Ljava/lang/String;
    :goto_8
    new-instance v32, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v32

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    .restart local v32       #intent:Landroid/content/Intent;
    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    const-string/jumbo v4, "transactionId"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    const-string/jumbo v4, "pduType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    const-string v4, "header"

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 619
    const-string v4, "data"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 620
    const-string v4, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 622
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v4, :cond_23

    .line 623
    const-string/jumbo v4, "origaddr"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 628
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 611
    .end local v32           #intent:Landroid/content/Intent;
    .end local v39           #permission:Ljava/lang/String;
    :cond_24
    const-string v39, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v39       #permission:Ljava/lang/String;
    goto :goto_8

    .line 219
    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_2
        0x30 -> :sswitch_3
        0x32 -> :sswitch_4
        0x36 -> :sswitch_a
        0x3e -> :sswitch_5
        0x42 -> :sswitch_b
        0x43 -> :sswitch_c
        0x44 -> :sswitch_8
        0x4a -> :sswitch_0
        0x4b -> :sswitch_1
        0x4e -> :sswitch_9
        0xb0 -> :sswitch_e
        0xce -> :sswitch_9
        0x30a -> :sswitch_d
        0x310 -> :sswitch_7
        0x312 -> :sswitch_6
    .end sparse-switch

    .line 416
    :sswitch_data_1
    .sparse-switch
        0x2e -> :sswitch_12
        0x32 -> :sswitch_f
        0x36 -> :sswitch_12
        0x3e -> :sswitch_10
        0x42 -> :sswitch_12
        0x43 -> :sswitch_12
        0x44 -> :sswitch_11
        0x4e -> :sswitch_13
        0xce -> :sswitch_13
        0x30a -> :sswitch_14
        0x310 -> :sswitch_14
    .end sparse-switch
.end method

.method public dispatchWapPushAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "OrigAddr"

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    goto :goto_0
.end method

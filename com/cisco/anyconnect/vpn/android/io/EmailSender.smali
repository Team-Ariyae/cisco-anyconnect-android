.class public Lcom/cisco/anyconnect/vpn/android/io/EmailSender;
.super Ljava/lang/Object;
.source "EmailSender.java"


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "EmailSender"


# instance fields
.field private final SUBJECT_HEADER:Ljava/lang/String;

.field private mAttachedFile:Ljava/io/File;

.field private mAttachedText:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mOtherInfo:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private final mTo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Secure Client:Feedback:Android:"

    .line 42
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->SUBJECT_HEADER:Ljava/lang/String;

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mSubject:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mTo:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mMessage:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mOtherInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public send()V
    .locals 9

    const-string v0, "EmailSender"

    .line 85
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "plain/text"

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Secure Client:Feedback:Android:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mSubject:Ljava/lang/String;

    const-string v3, "android.intent.extra.SUBJECT"

    .line 89
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mOtherInfo:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mContext:Landroid/content/Context;

    const-string v5, "com.cisco.anyconnect.vpn.android.io.fileprovider"

    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mAttachedFile:Ljava/io/File;

    invoke-static {v2, v5, v6}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 95
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 96
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 97
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 98
    iget-object v8, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v6, v2, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mTo:Ljava/lang/String;

    if-eqz v5, :cond_1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string v5, "android.intent.extra.EMAIL"

    .line 103
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    :cond_1
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mAttachedFile:Ljava/io/File;

    if-eqz v5, :cond_3

    .line 108
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mFileName:Ljava/lang/String;

    .line 111
    :try_start_0
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mAttachedFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "android.intent.extra.STREAM"

    .line 113
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 117
    :cond_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to attach file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v0, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 122
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v6, "failed to attach file"

    invoke-static {v5, v0, v6, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mAttachedText:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mOtherInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mAttachedText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mContext:Landroid/content/Context;

    const v2, 0x7f1102a0

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setFileAttachment(Ljava/io/File;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mAttachedFile:Ljava/io/File;

    return-void
.end method

.method public setTextAttchment(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/io/EmailSender;->mAttachedText:Ljava/lang/String;

    return-void
.end method

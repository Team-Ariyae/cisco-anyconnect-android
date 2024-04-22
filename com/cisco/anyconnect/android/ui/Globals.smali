.class public Lcom/cisco/anyconnect/android/ui/Globals;
.super Ljava/lang/Object;
.source "Globals.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "Globals"

.field public static final LOGGING_KEY_MESSAGE:Ljava/lang/String; = "LoggingKeyMessage"

.field private static final mTerminalErrorDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/android/ui/Globals;->mTerminalErrorDialogs:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OnTerminalError(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 48
    sget v0, Lcom/cisco/anyconnect/android/ui/R$string;->ok:I

    .line 50
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/cisco/anyconnect/android/ui/R$string;->logging_button_text:I

    .line 51
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 48
    invoke-static {p0, p1, v0, v1, v2}, Lcom/cisco/anyconnect/android/ui/Globals;->OnTerminalError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static OnTerminalError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 9

    .line 72
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Terminal error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Globals"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/cisco/anyconnect/android/ui/Globals$1;

    move-object v3, v0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    move-object v7, p2

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/cisco/anyconnect/android/ui/Globals$1;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static PopupError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 37
    sget v0, Lcom/cisco/anyconnect/android/ui/R$string;->app_name:I

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/android/ui/Globals;->PopupInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static PopupInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.ACTION_SHOW_POPUP"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.cisco.anyconnect.vpn.android.POPUP_TEXT_KEY"

    .line 30
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 19
    sget-object v0, Lcom/cisco/anyconnect/android/ui/Globals;->mTerminalErrorDialogs:Ljava/util/HashMap;

    return-object v0
.end method

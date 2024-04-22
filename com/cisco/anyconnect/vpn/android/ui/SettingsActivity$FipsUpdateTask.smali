.class Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;
.super Landroid/os/AsyncTask;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FipsUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;


# direct methods
.method private constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;
    .locals 5

    const-string v0, "SettingsActivity"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "doInBackground()"

    .line 297
    invoke-static {v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    array-length v2, p1

    const/4 v3, 0x1

    if-eq v3, v2, :cond_0

    .line 300
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Invalid number of arguments."

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-direct {p1, v2, v1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;ZZ)V

    return-object p1

    .line 304
    :cond_0
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 306
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->-$$Nest$fgetmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->SetFipsMode(Z)Z

    move-result v2

    .line 307
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-direct {v3, v4, p1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 311
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "SetFipsMode failed"

    invoke-static {v2, v0, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-direct {p1, v0, v1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;ZZ)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 291
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;->doInBackground([Ljava/lang/Boolean;)Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;)V
    .locals 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FipsUpdateResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;->isSuccess:Z

    if-nez v0, :cond_0

    .line 322
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "SettingsActivity"

    const-string v1, "Set FIPS mode failed"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.ACTION_SHOW_POPUP"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 324
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v0, 0x7f11015d

    .line 325
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cisco.anyconnect.vpn.android.POPUP_TEXT_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.POPUP_TEXT_IS_ERROR_KEY"

    const/4 v1, 0x1

    .line 326
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 329
    :cond_0
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;->isEnable:Z

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->-$$Nest$fgetmOriginalFipsMode(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 331
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    iget-boolean p1, p1, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;->isEnable:Z

    if-eqz p1, :cond_1

    const p1, 0x7f110276

    goto :goto_0

    :cond_1
    const p1, 0x7f110275

    :goto_0
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AnyConnect"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 291
    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateTask;->onPostExecute(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;)V

    return-void
.end method

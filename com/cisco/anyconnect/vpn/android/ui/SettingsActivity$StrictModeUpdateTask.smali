.class Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$StrictModeUpdateTask;
.super Landroid/os/AsyncTask;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrictModeUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;


# direct methods
.method private constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$StrictModeUpdateTask;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$StrictModeUpdateTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$StrictModeUpdateTask;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "SettingsActivity"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "doInBackground()"

    .line 371
    invoke-static {v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    array-length v2, p1

    const/4 v3, 0x1

    if-eq v3, v2, :cond_0

    .line 375
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Invalid number of arguments."

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 379
    :cond_0
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 380
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$StrictModeUpdateTask;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->-$$Nest$fgetmVpnService(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetStrictMode(Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 384
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "StrictModeUpdateTask failed"

    invoke-static {v2, v0, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 364
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$StrictModeUpdateTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

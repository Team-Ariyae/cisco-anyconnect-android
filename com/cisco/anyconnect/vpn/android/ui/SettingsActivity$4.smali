.class Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "SettingsActivity"

    const-string v0, "NCHS onServiceConnected"

    .line 186
    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-static {p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->-$$Nest$fputmNCHS(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SettingsActivity"

    const-string v0, "NCHS onServiceDisconnected"

    .line 192
    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->-$$Nest$fputmNCHS(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    return-void
.end method

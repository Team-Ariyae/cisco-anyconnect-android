.class Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;
.super Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Stub;
.source "SettingsActivity.java"


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

    .line 95
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public SettingChangedCB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SettingUserControllableChangedCB(Ljava/lang/String;Z)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

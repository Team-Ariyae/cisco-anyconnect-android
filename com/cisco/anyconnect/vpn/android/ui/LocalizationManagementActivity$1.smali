.class Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1;
.super Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;
.source "LocalizationManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ImportServerL10nDataCB(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1$2;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1;Z)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public RestoreDefaultL10nDataCB(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1;Z)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

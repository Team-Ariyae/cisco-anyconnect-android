.class public abstract Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.super Ljava/lang/Object;
.source "ServiceConnectionCB.java"


# instance fields
.field private mParent:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetmParent(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->mParent:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->mParent:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method GetContext()Landroid/content/Context;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->mParent:Landroid/content/Context;

    return-object v0
.end method

.method public OnBindTimeout()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->mParent:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;->mParent:Landroid/content/Context;

    const v2, 0x7f120131

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Error"

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const-string v1, "Failed to bind to VpnService"

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB$1;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    const v2, 0x104000a

    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public abstract OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
.end method

.method public OnServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public OnServiceWillDisconnect(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ShowConnectingMessage()V
    .locals 0

    return-void
.end method

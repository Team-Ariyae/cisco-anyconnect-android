.class Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$5;
.super Ljava/lang/Object;
.source "LocalizationManagementActivity.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;


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

    .line 410
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILandroid/content/Intent;)Z
    .locals 2

    .line 413
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->ImportServerL10n:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->getRequestId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 415
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->ImportServerL10n:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->-$$Nest$monRequestOperation(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Landroid/content/Intent;)V

    goto :goto_0

    .line 419
    :cond_0
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown request id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalizationManagmentActivity"

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

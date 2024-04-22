.class Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6$1;
.super Ljava/lang/Object;
.source "CredentialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6;->StateCB(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "Cancelling auth due to disconnect received after tunnel group switch"

    .line 803
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$mtryDismissTunnelGroupChangeDialog(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)V

    .line 805
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->finish()V

    return-void
.end method

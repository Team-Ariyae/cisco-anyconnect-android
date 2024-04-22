.class Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$3;
.super Ljava/lang/Object;
.source "CredentialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->CancelUserPromptCB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$3;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$3;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$mtryDismissTunnelGroupChangeDialog(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)V

    .line 193
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$3;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->finish()V

    return-void
.end method

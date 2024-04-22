.class Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4$1;
.super Ljava/lang/Object;
.source "CredentialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$monNewUserPrompt(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Z)V

    return-void
.end method

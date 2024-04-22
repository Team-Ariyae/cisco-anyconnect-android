.class Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$3;
.super Ljava/lang/Object;
.source "CredentialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->savedCredentialsCB(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$3;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$3;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$3;->val$username:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$3;->val$password:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmPromptInfo(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    move-result-object v0

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->getEntry(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$3;->val$username:Ljava/lang/String;

    iput-object v1, v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmPromptInfo(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;->getEntry(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$3;->val$password:Ljava/lang/String;

    iput-object v1, v0, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmCredentialFrag(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmCredentialFrag(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/ui/CredentialPromptFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/ui/CredentialPromptFragment;->dismiss()V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$fgetmPromptInfo(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;)Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->-$$Nest$monUserSubmit(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V

    :cond_1
    return-void
.end method

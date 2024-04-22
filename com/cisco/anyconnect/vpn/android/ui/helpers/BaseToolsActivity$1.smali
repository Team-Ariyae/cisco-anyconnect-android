.class Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$1;
.super Ljava/lang/Object;
.source "BaseToolsActivity.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->getDefaultOnClickHander(Ljava/lang/String;Landroid/os/Bundle;I)Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;

.field final synthetic val$intentAction:Ljava/lang/String;

.field final synthetic val$intentExtras:Landroid/os/Bundle;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$1;->val$intentAction:Ljava/lang/String;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$1;->val$intentExtras:Landroid/os/Bundle;

    iput p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$1;->val$requestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$1;->val$intentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$1;->val$intentExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;

    iget v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$1;->val$requestId:I

    invoke-virtual {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

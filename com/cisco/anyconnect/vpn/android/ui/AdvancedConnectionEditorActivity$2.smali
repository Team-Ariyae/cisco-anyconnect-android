.class Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$2;
.super Ljava/lang/Object;
.source "AdvancedConnectionEditorActivity.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectButtonPreference$IAnyConnectButtonPreferenceCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickButtonPreference(Ljava/lang/String;)V
    .locals 2

    const-string v0, "app_rules"

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;

    const-class v1, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/AppRulesActivity;->VPN_CONNECTION_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->-$$Nest$fgetmConnection(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;->SettingChangedCB(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$1;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$1;->val$value:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->-$$Nest$monSettingChanged(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

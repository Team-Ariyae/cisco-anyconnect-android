.class Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;->SettingUserControllableChangedCB(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;

.field final synthetic val$isUserControllable:Z

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;Ljava/lang/String;Z)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$2;->val$key:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$2;->val$isUserControllable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$2;->val$key:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$2$2;->val$isUserControllable:Z

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;->onSettingControllableChanged(Ljava/lang/String;Z)V

    return-void
.end method

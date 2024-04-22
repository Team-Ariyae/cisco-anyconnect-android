.class Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity$1;
.super Ljava/lang/Object;
.source "DiagnosticsActivity.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnResultCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILandroid/content/Intent;)Z
    .locals 1

    const/16 v0, 0xd07

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "back_to_primary_activity"

    .line 131
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/DiagnosticsActivity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

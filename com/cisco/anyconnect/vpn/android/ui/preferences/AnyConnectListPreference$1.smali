.class Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference$1;
.super Ljava/lang/Object;
.source "AnyConnectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->onPrepareDialogBuilder(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;

    invoke-static {v0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->-$$Nest$fputmClickedDialogEntryIndex(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;I)V

    .line 310
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 312
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

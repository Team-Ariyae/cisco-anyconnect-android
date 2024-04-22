.class Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1$1;
.super Ljava/lang/Object;
.source "CustomizeDebugLogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->finish()V

    return-void
.end method

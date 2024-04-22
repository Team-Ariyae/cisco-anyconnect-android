.class Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$2;
.super Ljava/lang/Object;
.source "CustomizeDebugLogsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->setUpButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CustomizeDebugLogsActivity;->finish()V

    return-void
.end method

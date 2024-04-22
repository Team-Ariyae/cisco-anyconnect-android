.class Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1;
.super Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub;
.source "ConnectionSummaryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public StatsCB(Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1;Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

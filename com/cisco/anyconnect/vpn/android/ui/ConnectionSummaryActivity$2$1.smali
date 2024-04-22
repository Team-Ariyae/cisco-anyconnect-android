.class Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2$1;
.super Ljava/lang/Object;
.source "ConnectionSummaryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2;->StateCB(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2;

.field final synthetic val$stateInfo:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2;Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2$1;->val$stateInfo:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$fgetmListAdapter(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    move-result-object v0

    const v1, 0x7f1102b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2$1;->val$stateInfo:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->putItem(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$fgetmListAdapter(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/VPNStatsAdapter;->notifyDataSetChanged()V

    return-void
.end method

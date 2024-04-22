.class Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$4;
.super Ljava/lang/Object;
.source "ConnectionSummaryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 119
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->finish()V

    return-void
.end method

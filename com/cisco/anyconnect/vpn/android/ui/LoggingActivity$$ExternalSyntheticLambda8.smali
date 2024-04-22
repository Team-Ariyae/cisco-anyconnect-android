.class public final synthetic Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda8;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda8;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda8;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$$ExternalSyntheticLambda8;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->lambda$populateSystemLog$11$com-cisco-anyconnect-vpn-android-ui-LoggingActivity(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

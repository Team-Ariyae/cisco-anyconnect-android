.class Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$5;
.super Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;
.source "LoggingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->populateDebugLog(Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

.field final synthetic val$alldoneSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;[Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1560
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$5;->val$alldoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;-><init>([Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public includeLine(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onComplete()V
    .locals 1

    .line 1579
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$5;->val$alldoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onNewContent(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1564
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1568
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->-$$Nest$fgetmDebugFragment(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->append(Ljava/lang/String;)V

    .line 1569
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$5;->val$alldoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

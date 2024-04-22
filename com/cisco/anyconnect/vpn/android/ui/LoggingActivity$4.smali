.class Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$4;
.super Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;
.source "LoggingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->clearLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;[Ljava/lang/String;I)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    invoke-direct {p0, p2, p3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ProcessOutputParser;-><init>([Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public includeLine(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onNewContent(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$2;
.super Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener$Stub;
.source "LoggingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public AppMessageCB(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->-$$Nest$fgetmViewPager(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;->-$$Nest$fgetmNoticeInfoFragment(Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity;)Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingActivity$LogMessagesFragment;->append(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

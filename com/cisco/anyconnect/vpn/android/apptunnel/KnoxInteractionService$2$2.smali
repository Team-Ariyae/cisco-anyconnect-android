.class Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$2;
.super Ljava/lang/Object;
.source "KnoxInteractionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;->NoticeCB(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;

.field final synthetic val$notice:Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$2;->val$notice:Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$2;->val$notice:Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->getMessageType()Lcom/cisco/anyconnect/vpn/jni/MessageType;

    move-result-object v0

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Error:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    if-ne v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$2;->this$1:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$2;->val$notice:Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->getNotice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$msetLastError(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

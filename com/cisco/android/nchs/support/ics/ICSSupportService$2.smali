.class Lcom/cisco/android/nchs/support/ics/ICSSupportService$2;
.super Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub;
.source "ICSSupportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/ics/ICSSupportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$2;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-direct {p0}, Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public NCHSShutdownCB(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NCHS is shutting down="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ICSSupportService"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$2;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->stopSelf()V

    .line 510
    iget-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$2;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-static {p1}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->-$$Nest$munbindNchs(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)V

    return-void
.end method

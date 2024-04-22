.class Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$8;
.super Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub;
.source "KnoxInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->importConnectionResources(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)V
    .locals 0

    .line 818
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$8;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-direct {p0}, Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public OnImportCompleted(Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 821
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p2

    sget-object p3, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq p2, p3, :cond_0

    .line 823
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Import cert alias failed: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "KnoxInteractionService"

    invoke-static {p2, p3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$8;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$fgetmImportResourceEvent(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;)Lcom/cisco/anyconnect/common/concurrency/ACEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/common/concurrency/ACEvent;->setEvent()V

    return-void
.end method

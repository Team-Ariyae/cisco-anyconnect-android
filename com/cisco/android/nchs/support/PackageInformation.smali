.class public final Lcom/cisco/android/nchs/support/PackageInformation;
.super Ljava/lang/Object;
.source "PackageInformation.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "PackageInformation"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lcom/cisco/android/nchs/support/PackageInformation;->mContext:Landroid/content/Context;

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid null context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public GetAppOwnerUserId(Lcom/cisco/android/nchs/ipc/IPCReturnMessage;Ljava/lang/String;)V
    .locals 3

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/PackageInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 89
    new-instance v0, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v1, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->addArgument(Lcom/cisco/android/nchs/ipc/ArgumentMapping;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void

    :catch_0
    move-exception p2

    .line 93
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception occurred while retrieving package information: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PackageInformation"

    invoke-static {v0, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/ipc/IPCReturnMessage;->setCode(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    return-void
.end method

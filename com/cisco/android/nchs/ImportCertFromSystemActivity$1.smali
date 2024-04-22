.class Lcom/cisco/android/nchs/ImportCertFromSystemActivity$1;
.super Ljava/lang/Object;
.source "ImportCertFromSystemActivity.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/ImportCertFromSystemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/ImportCertFromSystemActivity;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/ImportCertFromSystemActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/cisco/android/nchs/ImportCertFromSystemActivity$1;->this$0:Lcom/cisco/android/nchs/ImportCertFromSystemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "Unexpected args length: "

    const-string v0, "Invalid callback received: "

    .line 49
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alias"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    .line 56
    array-length p2, p3

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 61
    iget-object p1, p0, Lcom/cisco/android/nchs/ImportCertFromSystemActivity$1;->this$0:Lcom/cisco/android/nchs/ImportCertFromSystemActivity;

    const/4 p2, 0x0

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;->-$$Nest$monImportSucceeded(Lcom/cisco/android/nchs/ImportCertFromSystemActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    new-instance p2, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Unexpected null args."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 70
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "ImportCertFromSystemActivity"

    const-string v0, "invoke() failed."

    invoke-static {p2, p3, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    iget-object p1, p0, Lcom/cisco/android/nchs/ImportCertFromSystemActivity$1;->this$0:Lcom/cisco/android/nchs/ImportCertFromSystemActivity;

    invoke-static {p1}, Lcom/cisco/android/nchs/ImportCertFromSystemActivity;->-$$Nest$monImportFailed(Lcom/cisco/android/nchs/ImportCertFromSystemActivity;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

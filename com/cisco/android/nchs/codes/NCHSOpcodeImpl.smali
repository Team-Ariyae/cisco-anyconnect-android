.class public Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;
.super Ljava/lang/Object;
.source "NCHSOpcodeImpl.java"

# interfaces
.implements Lcom/cisco/android/nchs/codes/IOpcode;


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NCHSOpcode"


# instance fields
.field private mCode:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->getOpCodeForCode(I)Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;->mCode:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;->mCode:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->ERROR:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    iput-object v0, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;->mCode:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;->mCode:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->getCode()B

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;->validateCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;->mCode:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldDisconnect()Z
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;->mCode:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "NCHSOpcode"

    const-string v3, "mCode was null, returning false"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 139
    :cond_0
    sget-object v2, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->DISCONNECT:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    invoke-virtual {v0, v2}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public validateArguments(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;)Z"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;->mCode:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    const-string v1, "NCHSOpcode"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 66
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "mCode was null, returning false"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 70
    :cond_0
    sget-object v3, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->ERROR:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    if-ne v0, v3, :cond_1

    .line 72
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Code was set to error, which is invalid"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 76
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;->mCode:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    invoke-virtual {v3}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->getNumArgs()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 78
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not match the expected number of args for: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;->mCode:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " which is: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;->mCode:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->getNumArgs()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;->mCode:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->getArgTypes()[Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-result-object v0

    if-nez v0, :cond_3

    .line 85
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ExpectedType array was null, returning false"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 89
    :cond_3
    array-length v3, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 91
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "ExpectedType array and argument list are of different sizes, returning false"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    const/4 v1, 0x0

    .line 95
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 97
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    invoke-virtual {v3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->getType()Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public validateCode()Z
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;->mCode:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 118
    :cond_0
    sget-object v0, Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;->ERROR:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    iget-object v2, p0, Lcom/cisco/android/nchs/codes/NCHSOpcodeImpl;->mCode:Lcom/cisco/android/nchs/codes/NCHSOpcodeEnum;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

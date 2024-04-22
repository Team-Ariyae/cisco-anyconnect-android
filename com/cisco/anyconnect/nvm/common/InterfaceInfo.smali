.class public Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;
.super Ljava/lang/Object;
.source "InterfaceInfo.java"


# instance fields
.field private mActiveInterface:Z

.field private mIPv4:Ljava/lang/String;

.field private mIPv6List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterfaceInactiveCount:I

.field private mInterfaceIndex:I

.field private mInterfaceInfoUID:I

.field private mInterfaceName:Ljava/lang/String;

.field private mInterfaceType:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;

.field private mVecInterfaceDetailsList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->mIPv6List:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addIpV6Address(Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->mIPv6List:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setActiveInterface(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->mActiveInterface:Z

    return-void
.end method

.method public setInterfaceIndex(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->mInterfaceIndex:I

    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->mInterfaceName:Ljava/lang/String;

    return-void
.end method

.method public setInterfaceType(Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->mInterfaceType:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;

    return-void
.end method

.method public setIpV4Address(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->mIPv4:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->mIPv6List:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ", "

    .line 66
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->mIPv6List:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interface Index : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->mInterfaceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nInterface Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->mInterfaceType:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$INTERFACE_TYPE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nInterface Name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nActive Interface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->mActiveInterface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nInterface IpV4 Address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/common/InterfaceInfo;->mIPv4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nInterface IpV6 Address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

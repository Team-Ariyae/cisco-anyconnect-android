.class Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;
.super Ljava/lang/Object;
.source "NetworkInfoInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchDomains"
.end annotation


# instance fields
.field mIpAddress:Ljava/lang/String;

.field mSearchDomains:Ljava/lang/String;

.field final synthetic this$0:Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;->this$0:Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getIpAddress()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method getSearchDomains()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;->mSearchDomains:Ljava/lang/String;

    return-object v0
.end method

.method setIpAddress(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;->mIpAddress:Ljava/lang/String;

    return-void
.end method

.method setSearchDomains(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;->mSearchDomains:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IPAddress : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SearchDomains : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface$SearchDomains;->mSearchDomains:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

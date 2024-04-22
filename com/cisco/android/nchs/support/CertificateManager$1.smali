.class Lcom/cisco/android/nchs/support/CertificateManager$1;
.super Ljava/lang/Object;
.source "CertificateManager.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/CertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/support/CertificateManager;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/support/CertificateManager;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/cisco/android/nchs/support/CertificateManager$1;->this$0:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAlias(Ljava/lang/String;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager$1;->this$0:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/CertificateManager;->-$$Nest$fgetmKeyChainAliasList(Lcom/cisco/android/nchs/support/CertificateManager;)Lcom/cisco/android/nchs/support/FileCache;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Lcom/cisco/android/nchs/support/FileCache;->add(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getAliases()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cisco/android/nchs/support/CertificateManager$1;->this$0:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-static {v1}, Lcom/cisco/android/nchs/support/CertificateManager;->-$$Nest$fgetmKeyChainAliasList(Lcom/cisco/android/nchs/support/CertificateManager;)Lcom/cisco/android/nchs/support/FileCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/FileCache;->getContainer()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public removeAlias(Ljava/lang/String;)Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/cisco/android/nchs/support/CertificateManager$1;->this$0:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/CertificateManager;->-$$Nest$fgetmKeyChainAliasList(Lcom/cisco/android/nchs/support/CertificateManager;)Lcom/cisco/android/nchs/support/FileCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cisco/android/nchs/support/FileCache;->remove(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

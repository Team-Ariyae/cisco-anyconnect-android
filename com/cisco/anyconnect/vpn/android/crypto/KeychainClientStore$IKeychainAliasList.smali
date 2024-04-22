.class public interface abstract Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore$IKeychainAliasList;
.super Ljava/lang/Object;
.source "KeychainClientStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/crypto/KeychainClientStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IKeychainAliasList"
.end annotation


# virtual methods
.method public abstract addAlias(Ljava/lang/String;)V
.end method

.method public abstract getAliases()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeAlias(Ljava/lang/String;)Z
.end method

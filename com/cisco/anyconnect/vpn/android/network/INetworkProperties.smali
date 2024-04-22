.class public interface abstract Lcom/cisco/anyconnect/vpn/android/network/INetworkProperties;
.super Ljava/lang/Object;
.source "INetworkProperties.java"


# virtual methods
.method public abstract getActiveNetworkInterface()Ljava/lang/String;
.end method

.method public abstract getDnsSearch(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDnsServers(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method

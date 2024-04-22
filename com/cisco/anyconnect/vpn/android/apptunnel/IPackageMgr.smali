.class public interface abstract Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;
.super Ljava/lang/Object;
.source "IPackageMgr.java"


# virtual methods
.method public abstract getAllPackages()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageInfo(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;
.end method

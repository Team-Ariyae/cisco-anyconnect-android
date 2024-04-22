.class public interface abstract Lcom/cisco/anyconnect/vpn/android/work/IRestrictionsCB;
.super Ljava/lang/Object;
.source "IRestrictionsCB.java"


# virtual methods
.method public abstract deleteProfile()V
.end method

.method public abstract deleteWorkCerts()V
.end method

.method public abstract deleteWorkConnection()V
.end method

.method public abstract getWorkConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
.end method

.method public abstract importProfile(Ljava/lang/String;)V
.end method

.method public abstract importWorkCert(Ljava/lang/String;)V
.end method

.method public abstract setCertificateRevocation(Z)V
.end method

.method public abstract setFipsMode(Z)V
.end method

.method public abstract setStrictMode(Z)V
.end method

.method public abstract setWorkConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;Z)V
.end method

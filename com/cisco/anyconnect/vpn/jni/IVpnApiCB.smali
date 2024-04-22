.class public interface abstract Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;
.super Ljava/lang/Object;
.source "IVpnApiCB.java"


# virtual methods
.method public abstract AgentDetachedCB()V
.end method

.method public abstract BannerCB(Ljava/lang/String;)V
.end method

.method public abstract CertBannerCB(Ljava/lang/String;[B[Ljava/lang/String;Z[I)V
.end method

.method public abstract ClientCertificateCB([[B)V
.end method

.method public abstract DeliverWebLaunchHostCB(Ljava/lang/String;)V
.end method

.method public abstract EventAvailable()V
.end method

.method public abstract ExitNoticeCB(Ljava/lang/String;I)V
.end method

.method public abstract ImportPKCS12ResultCB([BLjava/lang/String;)V
.end method

.method public abstract NoticeCB(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;)V
.end method

.method public abstract NoticeCB(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;Z)V
.end method

.method public abstract SCEPEnrollExitCB()V
.end method

.method public abstract SCEPEnrollStartCB()V
.end method

.method public abstract ServiceReadyCB()V
.end method

.method public abstract StateCB(Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V
.end method

.method public abstract StatsCB(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
.end method

.method public abstract UserPromptCB(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
.end method

.method public abstract WMHintCB(Lcom/cisco/anyconnect/vpn/jni/WMHint;Lcom/cisco/anyconnect/vpn/jni/WMHintReason;)V
.end method

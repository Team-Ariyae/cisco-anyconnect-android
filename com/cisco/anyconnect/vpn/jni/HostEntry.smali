.class public Lcom/cisco/anyconnect/vpn/jni/HostEntry;
.super Ljava/lang/Object;
.source "HostEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public IPsecureAuthMode:Lcom/cisco/anyconnect/vpn/jni/IPsecAuthMode;

.field public activateOnImport:Z

.field public certCommonName:Ljava/lang/String;

.field public certHash:Ljava/lang/String;

.field public certificateAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

.field public host:Ljava/lang/String;

.field public ikeIdentity:Ljava/lang/String;

.field public isProfileImported:Z

.field public name:Ljava/lang/String;

.field public profileName:Ljava/lang/String;

.field public protocol:Lcom/cisco/anyconnect/vpn/jni/ConnectProtocolType;

.field public userGroup:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

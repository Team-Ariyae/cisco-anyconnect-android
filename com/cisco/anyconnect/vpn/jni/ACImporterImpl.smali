.class public Lcom/cisco/anyconnect/vpn/jni/ACImporterImpl;
.super Ljava/lang/Object;
.source "ACImporterImpl.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/jni/IACImporter;


# instance fields
.field private mHandle:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/cisco/anyconnect/vpn/jni/ACImporterImpl;->mHandle:J

    return-void
.end method


# virtual methods
.method public CanImport()Z
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/ACImporterImpl;->mHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/ACImporterImpl;->nativeCanImport(J)Z

    move-result v0

    return v0
.end method

.method public Invalidate()V
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/ACImporterImpl;->mHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/ACImporterImpl;->nativeInvalidate(J)V

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/ACImporterImpl;->mHandle:J

    return-void
.end method

.method public RequestImportL10nArchive(Ljava/lang/String;)Z
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/ACImporterImpl;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/jni/ACImporterImpl;->nativeRequestImportL10nArchive(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public RequestImportSGL10nData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/cisco/anyconnect/vpn/jni/ACImporterImpl;->mHandle:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/cisco/anyconnect/vpn/jni/ACImporterImpl;->nativeRequestImportSGL10nData(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method native nativeCanImport(J)Z
.end method

.method native nativeInvalidate(J)V
.end method

.method native nativeRequestImportL10nArchive(JLjava/lang/String;)Z
.end method

.method native nativeRequestImportSGL10nData(JLjava/lang/String;Ljava/lang/String;)Z
.end method

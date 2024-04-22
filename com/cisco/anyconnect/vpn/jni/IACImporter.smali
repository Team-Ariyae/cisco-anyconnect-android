.class public interface abstract Lcom/cisco/anyconnect/vpn/jni/IACImporter;
.super Ljava/lang/Object;
.source "IACImporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;
    }
.end annotation


# virtual methods
.method public abstract CanImport()Z
.end method

.method public abstract Invalidate()V
.end method

.method public abstract RequestImportL10nArchive(Ljava/lang/String;)Z
.end method

.method public abstract RequestImportSGL10nData(Ljava/lang/String;Ljava/lang/String;)Z
.end method

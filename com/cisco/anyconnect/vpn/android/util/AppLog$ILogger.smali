.class public interface abstract Lcom/cisco/anyconnect/vpn/android/util/AppLog$ILogger;
.super Ljava/lang/Object;
.source "AppLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/util/AppLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILogger"
.end annotation


# virtual methods
.method public abstract log(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract nativeLog(Lcom/cisco/anyconnect/android/util/ACLogEntry;)V
.end method

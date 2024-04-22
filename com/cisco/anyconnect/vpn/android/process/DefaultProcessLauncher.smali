.class public Lcom/cisco/anyconnect/vpn/android/process/DefaultProcessLauncher;
.super Ljava/lang/Object;
.source "DefaultProcessLauncher.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/process/ProcessLauncher;


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "DefaultProcessLauncher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/cisco/android/nchs/exception/NCHSDisconnectCommandReceivedException;
.super Ljava/lang/Exception;
.source "NCHSDisconnectCommandReceivedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCode:Lcom/cisco/android/nchs/codes/IOpcode;


# direct methods
.method public constructor <init>(Lcom/cisco/android/nchs/codes/IOpcode;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/cisco/android/nchs/exception/NCHSDisconnectCommandReceivedException;->mCode:Lcom/cisco/android/nchs/codes/IOpcode;

    return-void
.end method

.method public constructor <init>(Lcom/cisco/android/nchs/codes/IOpcode;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/cisco/android/nchs/exception/NCHSDisconnectCommandReceivedException;->mCode:Lcom/cisco/android/nchs/codes/IOpcode;

    return-void
.end method

.method public constructor <init>(Lcom/cisco/android/nchs/codes/IOpcode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 43
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iput-object p1, p0, Lcom/cisco/android/nchs/exception/NCHSDisconnectCommandReceivedException;->mCode:Lcom/cisco/android/nchs/codes/IOpcode;

    return-void
.end method

.method public constructor <init>(Lcom/cisco/android/nchs/codes/IOpcode;Ljava/lang/Throwable;)V
    .locals 0

    .line 37
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 38
    iput-object p1, p0, Lcom/cisco/android/nchs/exception/NCHSDisconnectCommandReceivedException;->mCode:Lcom/cisco/android/nchs/codes/IOpcode;

    return-void
.end method


# virtual methods
.method public getCode()Lcom/cisco/android/nchs/codes/IOpcode;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/cisco/android/nchs/exception/NCHSDisconnectCommandReceivedException;->mCode:Lcom/cisco/android/nchs/codes/IOpcode;

    return-object v0
.end method

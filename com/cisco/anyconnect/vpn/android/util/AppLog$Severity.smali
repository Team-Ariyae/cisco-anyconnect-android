.class public final enum Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;
.super Ljava/lang/Enum;
.source "AppLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/util/AppLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Severity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

.field public static final enum DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

.field public static final enum DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

.field public static final enum DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

.field public static final enum DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 34
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Error"

    const-string v2, "DBG_ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    .line 35
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Warning"

    const-string v4, "DBG_WARN"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    .line 36
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Info"

    const-string v6, "DBG_INFO"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    .line 37
    new-instance v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v6, "Trace"

    const-string v8, "DBG_TRACE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    .line 32
    sput-object v6, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;
    .locals 1

    .line 32
    const-class v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;
    .locals 1

    .line 32
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->mValue:Ljava/lang/String;

    return-object v0
.end method

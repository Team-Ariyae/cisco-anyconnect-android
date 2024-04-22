.class public Lcom/cisco/umbrella/registration/RandomIntervalBackOff;
.super Ljava/lang/Object;
.source "RandomIntervalBackOff.java"

# interfaces
.implements Lcom/google/api/client/util/BackOff;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;
    }
.end annotation


# static fields
.field private static final BACK_OFF_4_XX_ENDS_ON:Ljava/lang/String; = "backOff4xxEndsOn"

.field private static final INTERVAL_1:J = 0x0L

.field private static final INTERVAL_2:J = 0x5L

.field private static final MAX_INTERVAL:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private backOff4xxEndsOn:Ljava/lang/Long;

.field private builder:Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;

.field private interval1:J

.field private interval2:J

.field private nextBackOffMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->MAX_INTERVAL:J

    const-string v0, "RandomIntervalBackOff"

    .line 19
    sput-object v0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;-><init>(Lcom/cisco/umbrella/util/ISharedPreferencesController;)V

    invoke-direct {p0, v0}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;-><init>(Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;)V

    return-void
.end method

.method protected constructor <init>(Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->backOff4xxEndsOn:Ljava/lang/Long;

    .line 38
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->builder:Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;

    .line 39
    invoke-virtual {p0}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->init()V

    return-void
.end method

.method static synthetic access$400()J
    .locals 2

    .line 12
    sget-wide v0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->MAX_INTERVAL:J

    return-wide v0
.end method


# virtual methods
.method public getBackOffMillis()J
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->backOff4xxEndsOn:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 30
    :cond_0
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->nextBackOffMillis:J

    return-wide v0
.end method

.method public init()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->builder:Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;

    invoke-static {v0}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->access$000(Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->interval1:J

    .line 44
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->builder:Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;

    invoke-static {v0}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->access$100(Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->interval2:J

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->nextBackOffMillis:J

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->backOff4xxEndsOn:Ljava/lang/Long;

    .line 48
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->builder:Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;

    invoke-static {v0}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->access$200(Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;)Lcom/cisco/umbrella/util/ISharedPreferencesController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->builder:Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;

    invoke-static {v0}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->access$200(Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;)Lcom/cisco/umbrella/util/ISharedPreferencesController;

    move-result-object v0

    const-string v1, "backOff4xxEndsOn"

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->fetch(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->backOff4xxEndsOn:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public nextBackOffMillis()J
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->backOff4xxEndsOn:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->builder:Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;

    invoke-static {v2}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->access$300(Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->backOff4xxEndsOn:Ljava/lang/Long;

    .line 63
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->builder:Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;

    invoke-static {v0}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->access$200(Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;)Lcom/cisco/umbrella/util/ISharedPreferencesController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->builder:Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;

    invoke-static {v0}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->access$200(Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;)Lcom/cisco/umbrella/util/ISharedPreferencesController;

    move-result-object v0

    const-string v1, "backOff4xxEndsOn"

    iget-object v2, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->backOff4xxEndsOn:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->backOff4xxEndsOn:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    .line 71
    :cond_1
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->interval1:J

    iget-wide v2, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->interval2:J

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/umbrella/util/Helper;->getRandomNumberBetween(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->nextBackOffMillis:J

    .line 72
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RandomInterval BackOff Time is ::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->nextBackOffMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-wide v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->nextBackOffMillis:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->init()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->backOff4xxEndsOn:Ljava/lang/Long;

    .line 56
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RandomIntervalBackOff;->builder:Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;

    invoke-static {v0}, Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;->access$200(Lcom/cisco/umbrella/registration/RandomIntervalBackOff$Builder;)Lcom/cisco/umbrella/util/ISharedPreferencesController;

    move-result-object v0

    const-string v1, "backOff4xxEndsOn"

    invoke-interface {v0, v1}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->remove(Ljava/lang/String;)V

    return-void
.end method

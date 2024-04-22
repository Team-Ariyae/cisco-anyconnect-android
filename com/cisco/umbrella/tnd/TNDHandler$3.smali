.class Lcom/cisco/umbrella/tnd/TNDHandler$3;
.super Ljava/lang/Object;
.source "TNDHandler.java"

# interfaces
.implements Lcom/cisco/umbrella/restrictions/RestrictionsHandler$IRestrictionsHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/umbrella/tnd/TNDHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/tnd/TNDHandler;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/tnd/TNDHandler;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler$3;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restrictionsChanged(Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;Ljava/lang/String;)V
    .locals 2

    .line 308
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "restrictionsChanged"

    invoke-static {p2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object p2, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->ADDED:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;

    invoke-virtual {p1, p2}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->MODIFIED:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;

    invoke-virtual {p1, p2}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    sget-object p2, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->REMOVED:Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;

    invoke-virtual {p1, p2}, Lcom/cisco/umbrella/restrictions/RestrictionsHandler$RestrictionsDataState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 314
    iget-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler$3;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$502(Lcom/cisco/umbrella/tnd/TNDHandler;[Ljava/lang/String;)[Ljava/lang/String;

    .line 315
    iget-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler$3;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    invoke-static {p1}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$900(Lcom/cisco/umbrella/tnd/TNDHandler;)V

    goto :goto_1

    .line 311
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler$3;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    invoke-static {p1}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$1000(Lcom/cisco/umbrella/tnd/TNDHandler;)V

    .line 312
    iget-object p1, p0, Lcom/cisco/umbrella/tnd/TNDHandler$3;->this$0:Lcom/cisco/umbrella/tnd/TNDHandler;

    invoke-static {p1}, Lcom/cisco/umbrella/tnd/TNDHandler;->access$100(Lcom/cisco/umbrella/tnd/TNDHandler;)V

    :cond_2
    :goto_1
    return-void
.end method

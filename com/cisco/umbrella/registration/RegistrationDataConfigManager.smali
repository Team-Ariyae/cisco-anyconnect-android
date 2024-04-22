.class public Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;
.super Ljava/lang/Object;
.source "RegistrationDataConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RegistrationDataConfigManager"


# instance fields
.field private key:Ljava/lang/String;

.field private sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/cisco/umbrella/util/ISharedPreferencesController;Ljava/lang/String;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->TAG:Ljava/lang/String;

    const-string v2, "RegistrationDataConfigManager invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/cisco/umbrella/util/ISharedPreferencesController;

    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    .line 20
    iput-object p2, p0, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public load(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->TAG:Ljava/lang/String;

    const-string v2, "load invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->fetch(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->value:Ljava/lang/Object;

    return-void
.end method

.method public remove()V
    .locals 3

    .line 35
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->TAG:Ljava/lang/String;

    const-string v2, "remove invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->value:Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public save(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->TAG:Ljava/lang/String;

    const-string v2, "save invoked"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->value:Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->sharedPreferencesController:Lcom/cisco/umbrella/util/ISharedPreferencesController;

    iget-object v1, p0, Lcom/cisco/umbrella/registration/RegistrationDataConfigManager;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/cisco/umbrella/util/ISharedPreferencesController;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.class Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;
.super Ljava/lang/Object;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FipsUpdateResult"
.end annotation


# instance fields
.field public isEnable:Z

.field public isSuccess:Z

.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;ZZ)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;->isEnable:Z

    .line 282
    iput-boolean p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;->isSuccess:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isEnable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;->isEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/SettingsActivity$FipsUpdateResult;->isSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/cisco/anyconnect/vpn/android/process/ACAndroidEnv;
.super Ljava/lang/Object;
.source "ACAndroidEnv.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetSNAKEnv(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetSNAKDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ANYCONNECT_INSTALL_DIR"

    invoke-static {v2, v0, v1}, Lcom/cisco/anyconnect/vpn/jni/ACEnv;->SetEnv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ANDROID_PARENT_APP_DATA_DIR"

    invoke-static {v0, p0}, Lcom/cisco/anyconnect/vpn/jni/ACEnv;->SetEnv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static SetVpnApiEnv(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "NATIVE_COMPONENT_DATA_DIR"

    .line 41
    invoke-static {v0, p0}, Lcom/cisco/anyconnect/vpn/jni/ACEnv;->SetEnv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

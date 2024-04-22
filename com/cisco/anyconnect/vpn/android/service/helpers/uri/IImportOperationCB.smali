.class public interface abstract Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/IImportOperationCB;
.super Ljava/lang/Object;
.source "IImportOperationCB.java"


# virtual methods
.method public abstract ImportAlertCB(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ImportStartCB(Ljava/lang/String;)V
.end method

.method public abstract LaunchActivityOrService(Landroid/content/Intent;Z)V
.end method

.method public abstract RegisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z
.end method

.method public abstract RegisterPromptHandler(Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;)Z
.end method

.method public abstract UnregisterCertificateListener(Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;)Z
.end method

.method public abstract UnregisterPromptHandler()Z
.end method

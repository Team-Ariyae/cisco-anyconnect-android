.class Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$NfcListener;
.super Ljava/lang/Object;
.source "YubikeyActivity.java"

# interfaces
.implements Lcom/yubico/yubikit/transport/nfc/NfcSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;


# direct methods
.method private constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$NfcListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$NfcListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$NfcListener;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V

    return-void
.end method


# virtual methods
.method public onSessionReceived(Lcom/yubico/yubikit/transport/nfc/NfcSession;)V
    .locals 2

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$NfcListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    new-instance v1, Lcom/yubico/yubikit/piv/PivApplication;

    invoke-direct {v1, p1}, Lcom/yubico/yubikit/piv/PivApplication;-><init>(Lcom/yubico/yubikit/transport/YubiKeySession;)V

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->-$$Nest$fputmPivApplication(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;Lcom/yubico/yubikit/piv/PivApplication;)V

    .line 92
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$NfcListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->-$$Nest$fputmIsNfcSession(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;Z)V

    .line 93
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$NfcListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->-$$Nest$mperformCertOperations(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Exception creating Yubikey PIV application"

    .line 101
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$NfcListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->-$$Nest$fputmPivApplication(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;Lcom/yubico/yubikit/piv/PivApplication;)V

    goto :goto_0

    .line 97
    :catch_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$NfcListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->-$$Nest$mhandleTagLost(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V

    :goto_0
    return-void
.end method

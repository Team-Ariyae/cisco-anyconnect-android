.class Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$UsbListener;
.super Ljava/lang/Object;
.source "YubikeyActivity.java"

# interfaces
.implements Lcom/yubico/yubikit/transport/usb/UsbSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;


# direct methods
.method private constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$UsbListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$UsbListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$UsbListener;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(Lcom/yubico/yubikit/transport/usb/UsbSession;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 139
    :try_start_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$UsbListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    new-instance v0, Lcom/yubico/yubikit/piv/PivApplication;

    invoke-direct {v0, p1}, Lcom/yubico/yubikit/piv/PivApplication;-><init>(Lcom/yubico/yubikit/transport/YubiKeySession;)V

    invoke-static {p2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->-$$Nest$fputmPivApplication(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;Lcom/yubico/yubikit/piv/PivApplication;)V

    .line 140
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$UsbListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->-$$Nest$mperformCertOperations(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Exception creating Yubikey PIV application"

    .line 144
    invoke-static {p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$UsbListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->-$$Nest$fputmPivApplication(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;Lcom/yubico/yubikit/piv/PivApplication;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSessionReceived(Lcom/yubico/yubikit/transport/usb/UsbSession;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 115
    :try_start_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$UsbListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    new-instance v0, Lcom/yubico/yubikit/piv/PivApplication;

    invoke-direct {v0, p1}, Lcom/yubico/yubikit/piv/PivApplication;-><init>(Lcom/yubico/yubikit/transport/YubiKeySession;)V

    invoke-static {p2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->-$$Nest$fputmPivApplication(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;Lcom/yubico/yubikit/piv/PivApplication;)V

    .line 116
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$UsbListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->-$$Nest$mperformCertOperations(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Exception creating Yubikey PIV application"

    .line 120
    invoke-static {p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$UsbListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->-$$Nest$fputmPivApplication(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;Lcom/yubico/yubikit/piv/PivApplication;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSessionRemoved(Lcom/yubico/yubikit/transport/usb/UsbSession;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$UsbListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->-$$Nest$fputmPivApplication(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;Lcom/yubico/yubikit/piv/PivApplication;)V

    return-void
.end method

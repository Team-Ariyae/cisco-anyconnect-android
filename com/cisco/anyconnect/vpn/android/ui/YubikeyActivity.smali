.class public Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "YubikeyActivity.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$YubikeyPINCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$UsbListener;,
        Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$NfcListener;
    }
.end annotation


# static fields
.field private static final INS_AUTHENTICATE:B = -0x79t

.field private static final PIN_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "yubikey_pin_dialog"

.field private static final TAG_AUTH_CHALLENGE:I = 0x81

.field private static final TAG_AUTH_RESPONSE:I = 0x82

.field private static final TAG_DYN_AUTH:I = 0x7c


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mHash:[B

.field private mIsNfcSession:Z

.field private mPIN:Ljava/lang/String;

.field private mPivApplication:Lcom/yubico/yubikit/piv/PivApplication;

.field private mReceiver:Landroid/os/ResultReceiver;

.field private mSlot:Lcom/yubico/yubikit/piv/Slot;

.field private mYubiKitManager:Lcom/yubico/yubikit/YubiKitManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPivApplication(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)Lcom/yubico/yubikit/piv/PivApplication;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mPivApplication:Lcom/yubico/yubikit/piv/PivApplication;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsNfcSession(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mIsNfcSession:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPivApplication(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;Lcom/yubico/yubikit/piv/PivApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mPivApplication:Lcom/yubico/yubikit/piv/PivApplication;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTagLost(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->handleTagLost()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformCertOperations(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->performCertOperations()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowTapDialog(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->showTapDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mIsNfcSession:Z

    .line 151
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getAlgorithm(Ljava/security/PublicKey;)Lcom/yubico/yubikit/piv/Algorithm;
    .locals 3

    .line 579
    instance-of v0, p1, Ljava/security/interfaces/RSAKey;

    if-eqz v0, :cond_1

    .line 581
    check-cast p1, Ljava/security/interfaces/RSAKey;

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 v0, 0x800

    if-ne p1, v0, :cond_0

    .line 584
    sget-object p1, Lcom/yubico/yubikit/piv/Algorithm;->RSA2048:Lcom/yubico/yubikit/piv/Algorithm;

    return-object p1

    :cond_0
    const/16 v0, 0x400

    if-ne p1, v0, :cond_3

    .line 588
    sget-object p1, Lcom/yubico/yubikit/piv/Algorithm;->RSA1024:Lcom/yubico/yubikit/piv/Algorithm;

    return-object p1

    .line 591
    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_3

    .line 592
    check-cast p1, Ljava/security/interfaces/ECKey;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p1

    .line 593
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    .line 594
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "115792089210356248762697446949407573530086143415290314195533631308867097853948"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "41058363725152142129326129780047268409114441015993725554835256314039467401291"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    sget-object p1, Lcom/yubico/yubikit/piv/Algorithm;->ECCP256:Lcom/yubico/yubikit/piv/Algorithm;

    return-object p1

    .line 599
    :cond_2
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    const/16 v1, 0x180

    if-ne v0, v1, :cond_3

    .line 600
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112316"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 601
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "27580193559959705877849011840389048093056905856361568521428707301988689241309860865136260764883745107765439761230575"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 603
    sget-object p1, Lcom/yubico/yubikit/piv/Algorithm;->ECCP384:Lcom/yubico/yubikit/piv/Algorithm;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleTagLost()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const v1, 0x7f110347

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mPivApplication:Lcom/yubico/yubikit/piv/PivApplication;

    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mIsNfcSession:Z

    return-void
.end method

.method private performCertOperations()V
    .locals 10

    .line 351
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mHash:[B

    const/4 v1, -0x1

    const v2, 0x7f110221

    const v3, 0x7f11003c

    const v4, 0x7f110346

    const v5, 0x7f120131

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v0, :cond_3

    .line 357
    :try_start_0
    sget-object v0, Lcom/yubico/yubikit/piv/Slot;->CARD_AUTH:Lcom/yubico/yubikit/piv/Slot;

    iget-object v8, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mSlot:Lcom/yubico/yubikit/piv/Slot;

    if-eq v0, v8, :cond_1

    .line 359
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mPivApplication:Lcom/yubico/yubikit/piv/PivApplication;

    invoke-virtual {v0, v6}, Lcom/yubico/yubikit/piv/PivApplication;->verify(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/yubico/yubikit/piv/InvalidPinException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Exception getting remaining PIN attempts on Yubikey "

    .line 399
    invoke-static {p0, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 370
    invoke-virtual {v0}, Lcom/yubico/yubikit/piv/InvalidPinException;->getRetryCounter()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Yubikey is locked"

    .line 372
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 380
    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 381
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 382
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 383
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$4;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 391
    invoke-virtual {v0, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 405
    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 406
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mPivApplication:Lcom/yubico/yubikit/piv/PivApplication;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mSlot:Lcom/yubico/yubikit/piv/Slot;

    invoke-virtual {v2, v3}, Lcom/yubico/yubikit/piv/PivApplication;->getCertificate(Lcom/yubico/yubikit/piv/Slot;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "yubikey_cert"

    .line 409
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 411
    :cond_2
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 412
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->finish()V
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v1, "Exception getting certificate from Yubikey "

    .line 420
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 421
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->onCancel()V

    goto/16 :goto_1

    .line 416
    :catch_3
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->handleTagLost()V

    goto/16 :goto_1

    .line 364
    :catch_4
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->handleTagLost()V

    return-void

    .line 429
    :cond_3
    :try_start_2
    sget-object v0, Lcom/yubico/yubikit/piv/Slot;->CARD_AUTH:Lcom/yubico/yubikit/piv/Slot;

    iget-object v8, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mSlot:Lcom/yubico/yubikit/piv/Slot;

    if-eq v0, v8, :cond_5

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mPIN:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 432
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mIsNfcSession:Z

    if-eqz v0, :cond_4

    .line 434
    iput-object v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mPivApplication:Lcom/yubico/yubikit/piv/PivApplication;

    .line 435
    iput-boolean v7, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mIsNfcSession:Z

    :cond_4
    return-void

    .line 439
    :cond_5
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mHash:[B

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->sign([B)[B

    move-result-object v0

    if-eqz v0, :cond_6

    .line 442
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v9, "yubikey_signature"

    .line 443
    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 444
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 445
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->finish()V

    goto/16 :goto_1

    :cond_6
    const-string v0, "Null signature returned from Yubikey"

    .line 449
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->onCancel()V
    :try_end_2
    .catch Landroid/nfc/TagLostException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/yubico/yubikit/piv/InvalidPinException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v0

    const-string v1, "Exception signing with Yubikey"

    .line 498
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 499
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->onCancel()V

    goto/16 :goto_1

    :catch_6
    move-exception v0

    .line 459
    invoke-virtual {v0}, Lcom/yubico/yubikit/piv/InvalidPinException;->getRetryCounter()I

    move-result v1

    if-lez v1, :cond_7

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect PIN entered. Remaining attempts: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yubico/yubikit/piv/InvalidPinException;->getRetryCounter()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f110345

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yubico/yubikit/piv/InvalidPinException;->getRetryCounter()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$YubikeyPINCallback;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "yubikey_pin_dialog"

    invoke-virtual {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 464
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mIsNfcSession:Z

    if-eqz v0, :cond_9

    .line 467
    iput-object v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mPivApplication:Lcom/yubico/yubikit/piv/PivApplication;

    .line 468
    iput-boolean v7, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mIsNfcSession:Z

    goto :goto_1

    :cond_7
    const-string v0, "Incorrect PIN entered. Yubikey locked."

    .line 473
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 477
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 481
    :cond_8
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 482
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 483
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 484
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$5;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 492
    invoke-virtual {v0, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 455
    :catch_7
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->handleTagLost()V

    :cond_9
    :goto_1
    return-void
.end method

.method private showDelayedTapDialog()V
    .locals 4

    .line 322
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 323
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$3;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V

    const-wide/16 v2, 0x1f4

    .line 332
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showTapDialog()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const v1, 0x7f110348

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 303
    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f120131

    invoke-direct {v0, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 304
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f11003c

    .line 305
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f110050

    .line 306
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$2;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 314
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method private sign([B)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/TagLostException;,
            Lcom/yubico/yubikit/piv/InvalidPinException;
        }
    .end annotation

    const-string v0, "Yubikey signing message input has invalid length "

    const-string v1, "Not supported algorithm "

    const-string v2, "Unknown key algorithm from Yubikey slot "

    const-string v3, "Certificate in slot "

    const/4 v4, 0x0

    .line 508
    :try_start_0
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mPivApplication:Lcom/yubico/yubikit/piv/PivApplication;

    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mSlot:Lcom/yubico/yubikit/piv/Slot;

    invoke-virtual {v5, v6}, Lcom/yubico/yubikit/piv/PivApplication;->getCertificate(Lcom/yubico/yubikit/piv/Slot;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-nez v5, :cond_0

    .line 511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mSlot:Lcom/yubico/yubikit/piv/Slot;

    invoke-virtual {v0}, Lcom/yubico/yubikit/piv/Slot;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    .line 515
    :cond_0
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->getAlgorithm(Ljava/security/PublicKey;)Lcom/yubico/yubikit/piv/Algorithm;

    move-result-object v3

    if-nez v3, :cond_1

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mSlot:Lcom/yubico/yubikit/piv/Slot;

    invoke-virtual {v0}, Lcom/yubico/yubikit/piv/Slot;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    .line 524
    :cond_1
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$6;->$SwitchMap$com$yubico$yubikit$piv$Algorithm:[I

    invoke-virtual {v3}, Lcom/yubico/yubikit/piv/Algorithm;->ordinal()I

    move-result v5

    aget v2, v2, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v5, :cond_6

    const/4 v7, 0x2

    if-eq v2, v7, :cond_5

    const/4 v7, 0x3

    if-eq v2, v7, :cond_4

    const/4 v7, 0x4

    if-eq v2, v7, :cond_2

    .line 538
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yubico/yubikit/piv/Algorithm;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    .line 535
    :cond_2
    array-length v1, p1

    const/16 v2, 0x30

    if-gt v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 532
    :cond_4
    array-length v1, p1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_3

    goto :goto_0

    .line 529
    :cond_5
    array-length v1, p1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 526
    :cond_6
    array-length v1, p1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_3

    :goto_0
    if-nez v5, :cond_7

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for algorithm "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/yubico/yubikit/piv/Algorithm;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    .line 546
    :cond_7
    sget-object v0, Lcom/yubico/yubikit/piv/Slot;->CARD_AUTH:Lcom/yubico/yubikit/piv/Slot;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mSlot:Lcom/yubico/yubikit/piv/Slot;

    if-eq v0, v1, :cond_9

    .line 548
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mPIN:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string p1, "Yubikey PIN is null"

    .line 550
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    .line 553
    :cond_8
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mPivApplication:Lcom/yubico/yubikit/piv/PivApplication;

    invoke-virtual {v1, v0}, Lcom/yubico/yubikit/piv/PivApplication;->verify(Ljava/lang/String;)V

    .line 557
    :cond_9
    array-length v0, p1

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    new-instance v1, Lcom/yubico/yubikit/apdu/Tlv;

    const/16 v2, 0x82

    invoke-direct {v1, v2, v4}, Lcom/yubico/yubikit/apdu/Tlv;-><init>(I[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v1, Lcom/yubico/yubikit/apdu/Tlv;

    const/16 v2, 0x81

    invoke-direct {v1, v2, p1}, Lcom/yubico/yubikit/apdu/Tlv;-><init>(I[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    new-instance p1, Lcom/yubico/yubikit/apdu/Tlv;

    invoke-static {v0}, Lcom/yubico/yubikit/apdu/TlvUtils;->packTlvList(Ljava/util/List;)[B

    move-result-object v0

    const/16 v1, 0x7c

    invoke-direct {p1, v1, v0}, Lcom/yubico/yubikit/apdu/Tlv;-><init>(I[B)V

    invoke-virtual {p1}, Lcom/yubico/yubikit/apdu/Tlv;->getBytes()[B

    move-result-object v12

    .line 562
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mPivApplication:Lcom/yubico/yubikit/piv/PivApplication;

    new-instance v0, Lcom/yubico/yubikit/apdu/Apdu;

    const/4 v8, 0x0

    const/16 v9, -0x79

    iget v10, v3, Lcom/yubico/yubikit/piv/Algorithm;->value:I

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mSlot:Lcom/yubico/yubikit/piv/Slot;

    iget v11, v1, Lcom/yubico/yubikit/piv/Slot;->value:I

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/yubico/yubikit/apdu/Apdu;-><init>(IIII[B)V

    invoke-virtual {p1, v0}, Lcom/yubico/yubikit/piv/PivApplication;->sendAndReceive(Lcom/yubico/yubikit/apdu/Apdu;)[B

    move-result-object p1

    .line 563
    new-instance v0, Lcom/yubico/yubikit/apdu/Tlv;

    new-instance v1, Lcom/yubico/yubikit/apdu/Tlv;

    invoke-direct {v1, p1, v6}, Lcom/yubico/yubikit/apdu/Tlv;-><init>([BI)V

    invoke-virtual {v1}, Lcom/yubico/yubikit/apdu/Tlv;->getValue()[B

    move-result-object p1

    invoke-direct {v0, p1, v6}, Lcom/yubico/yubikit/apdu/Tlv;-><init>([BI)V

    invoke-virtual {v0}, Lcom/yubico/yubikit/apdu/Tlv;->getValue()[B

    move-result-object p1
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/yubico/yubikit/piv/InvalidPinException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Exception signing from Yubikey"

    .line 571
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 567
    :goto_1
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 233
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->onCancel()V

    return-void
.end method

.method public onCancel()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 275
    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string v0, "Unexpected null result receiver"

    .line 279
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    :goto_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "Unknown slot: "

    .line 166
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.cisco.anyconnect.vpn.android.YUIBKEY_ACTIVITY_CLOSE_INTENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v1, "yubikey_sign_hash"

    .line 170
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mHash:[B

    .line 171
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "yubikey_result_receiver"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mReceiver:Landroid/os/ResultReceiver;

    .line 173
    new-instance v1, Lcom/yubico/yubikit/YubiKitManager;

    invoke-direct {v1, p0}, Lcom/yubico/yubikit/YubiKitManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mYubiKitManager:Lcom/yubico/yubikit/YubiKitManager;

    .line 174
    new-instance v2, Lcom/yubico/yubikit/transport/usb/UsbConfiguration;

    invoke-direct {v2}, Lcom/yubico/yubikit/transport/usb/UsbConfiguration;-><init>()V

    new-instance v3, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$UsbListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$UsbListener;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$UsbListener-IA;)V

    invoke-virtual {v1, v2, v3}, Lcom/yubico/yubikit/YubiKitManager;->startUsbDiscovery(Lcom/yubico/yubikit/transport/usb/UsbConfiguration;Lcom/yubico/yubikit/transport/usb/UsbSessionListener;)V

    .line 178
    :try_start_0
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->supportsYubikey()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "yubikey_slot"

    .line 185
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 188
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->getEnum(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->getSdkEnum()Lcom/yubico/yubikit/piv/Slot;

    move-result-object v2

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mSlot:Lcom/yubico/yubikit/piv/Slot;

    if-eqz v2, :cond_3

    .line 199
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cisco.anyconnect.vpn.android.YUBIKEY_ENUMERATE_SHOW_INTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->showDelayedTapDialog()V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.cisco.anyconnect.vpn.android.YUBIKEY_SIGN_SHOW_INTENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 205
    sget-object p1, Lcom/yubico/yubikit/piv/Slot;->CARD_AUTH:Lcom/yubico/yubikit/piv/Slot;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mSlot:Lcom/yubico/yubikit/piv/Slot;

    if-ne p1, v0, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->showDelayedTapDialog()V

    goto :goto_0

    .line 213
    :cond_1
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;

    const v0, 0x7f110344

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment$YubikeyPINCallback;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "yubikey_pin_dialog"

    invoke-virtual {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyPINFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unknown start action"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 191
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Missing slot in start intent"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Device does not support Yubikey"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "Exception during OnCreate()"

    .line 225
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->onCancel()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mYubiKitManager:Lcom/yubico/yubikit/YubiKitManager;

    invoke-virtual {v0}, Lcom/yubico/yubikit/YubiKitManager;->stopUsbDiscovery()V

    .line 262
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mYubiKitManager:Lcom/yubico/yubikit/YubiKitManager;

    invoke-virtual {v0, p0}, Lcom/yubico/yubikit/YubiKitManager;->stopNfcDiscovery(Landroid/app/Activity;)V

    .line 254
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mYubiKitManager:Lcom/yubico/yubikit/YubiKitManager;

    new-instance v1, Lcom/yubico/yubikit/transport/nfc/NfcConfiguration;

    invoke-direct {v1}, Lcom/yubico/yubikit/transport/nfc/NfcConfiguration;-><init>()V

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$NfcListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$NfcListener;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$NfcListener-IA;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/yubico/yubikit/YubiKitManager;->startNfcDiscovery(Lcom/yubico/yubikit/transport/nfc/NfcConfiguration;Landroid/app/Activity;Lcom/yubico/yubikit/transport/nfc/NfcSessionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception starting yubikey NFC listener"

    .line 245
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    :goto_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public setPIN(Ljava/lang/String;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mPIN:Ljava/lang/String;

    .line 338
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->mPivApplication:Lcom/yubico/yubikit/piv/PivApplication;

    if-nez p1, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->showTapDialog()V

    goto :goto_0

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;->performCertOperations()V

    :goto_0
    return-void
.end method

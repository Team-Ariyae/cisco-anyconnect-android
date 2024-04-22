.class synthetic Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;
.super Ljava/lang/Object;
.source "URIHandlerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$uri$ImportTypes:[I

.field static final synthetic $SwitchMap$com$cisco$anyconnect$vpn$android$ui$URIHandlerActivity$Actions:[I

.field static final synthetic $SwitchMap$com$cisco$anyconnect$vpn$android$ui$helpers$RemoteControlMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 895
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->values()[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$uri$ImportTypes:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->pkcs12:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$uri$ImportTypes:[I

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->profile:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$uri$ImportTypes:[I

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->localization:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 658
    :catch_2
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->values()[Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$URIHandlerActivity$Actions:[I

    :try_start_3
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->EXTERNALSSO:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$URIHandlerActivity$Actions:[I

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->CONNECT:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$URIHandlerActivity$Actions:[I

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->DISCONNECT:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$URIHandlerActivity$Actions:[I

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->CREATE:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$URIHandlerActivity$Actions:[I

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->IMPORT:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$URIHandlerActivity$Actions:[I

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->CLOSE:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$URIHandlerActivity$Actions:[I

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->UMBRELLA:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 316
    :catch_9
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->values()[Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$helpers$RemoteControlMode:[I

    :try_start_a
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->Prompt:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$ui$helpers$RemoteControlMode:[I

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->Enabled:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method

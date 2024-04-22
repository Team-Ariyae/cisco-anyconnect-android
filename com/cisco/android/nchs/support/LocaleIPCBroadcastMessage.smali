.class public Lcom/cisco/android/nchs/support/LocaleIPCBroadcastMessage;
.super Ljava/lang/Object;
.source "LocaleIPCBroadcastMessage.java"

# interfaces
.implements Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageBytes()[B
    .locals 4

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v1, Lcom/cisco/android/nchs/ipc/ArgumentMapping;

    sget-object v2, Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;->STRING:Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;

    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->GetFormattedLocale()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;-><init>(Lcom/cisco/android/nchs/codes/NCHSArgumentTypeCode;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static {v0}, Lcom/cisco/android/nchs/ipc/ArgumentMapping;->convertArgumentMappingListToByteArray(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public getOpCode()Lcom/cisco/android/nchs/codes/BroadcastOpcode;
    .locals 1

    .line 37
    sget-object v0, Lcom/cisco/android/nchs/codes/BroadcastOpcode;->LOCALE_CHANGE_EVENT:Lcom/cisco/android/nchs/codes/BroadcastOpcode;

    return-object v0
.end method

.class public Lcom/cisco/anyconnect/vpn/android/service/connections/migrations/Android7EnumMigration;
.super Ljava/lang/Object;
.source "Android7EnumMigration.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/connections/migrations/IMigration;


# static fields
.field private static final CONNECTION_TYPE_PREFIX_HEX:Ljava/lang/String; = "7E720037 636F6D2E 63697363 6F2E616E 79636F6E 6E656374 2E76706E 2E616E64 726F6964 2E736572 76696365 2E436F6E 6E656374 696F6E54 79706500 00000000 00000012 00007871 007E0010"

.field private static final ENTITY_NAME:Ljava/lang/String; = "Android7EnumMigration"

.field private static final NULL_BYTE_HEX:Ljava/lang/String; = "70"

.field private static final STRICT_CERT_TRUST_PREFIX_HEX:Ljava/lang/String; = "7E72004D 636F6D2E 63697363 6F2E616E 79636F6E 6E656374 2E76706E 2E616E64 726F6964 2E736572 76696365 2E56706E 436F6E6E 65637469 6F6E2453 74726963 74436572 74696669 63617465 54727573 74000000 00000000 00120000 7871007E 001071"

.field private static final TYPE_REFERENCE:B = 0x71t

.field private static final TYPE_STRING:B = 0x74t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply([B)[B
    .locals 7

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 46
    :cond_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;

    invoke-direct {v0, p1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;-><init>([B)V

    .line 49
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;

    const-string v1, "7E72004D 636F6D2E 63697363 6F2E616E 79636F6E 6E656374 2E76706E 2E616E64 726F6964 2E736572 76696365 2E56706E 436F6E6E 65637469 6F6E2453 74726963 74436572 74696669 63617465 54727573 74000000 00000000 00120000 7871007E 001071"

    invoke-direct {p1, v1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->getBytes()[B

    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->indexOf([B)I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_1

    .line 53
    array-length p1, p1

    add-int/lit8 p1, p1, 0x4

    new-instance v4, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;

    const-string v5, "70"

    invoke-direct {v4, v5}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v1, p1, v4}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->replace(II[B)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 59
    :goto_0
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;

    const-string v4, "7E720037 636F6D2E 63697363 6F2E616E 79636F6E 6E656374 2E76706E 2E616E64 726F6964 2E736572 76696365 2E436F6E 6E656374 696F6E54 79706500 00000000 00000012 00007871 007E0010"

    invoke-direct {v1, v4}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->getBytes()[B

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->indexOf([B)I

    move-result v4

    if-lez v4, :cond_4

    .line 62
    array-length v1, v1

    add-int/2addr v1, v4

    .line 64
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->getByte(I)B

    move-result v5

    const/16 v6, 0x74

    if-ne v5, v6, :cond_2

    add-int/2addr v1, v3

    .line 66
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->getShort(I)S

    move-result p1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    .line 70
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;

    const-string v4, "707070"

    invoke-direct {p1, v4}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->getBytes()[B

    move-result-object p1

    .line 71
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v1, v4, p1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->replace(II[B)Z

    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->getByte(I)B

    move-result v5

    const/16 v6, 0x71

    if-ne v5, v6, :cond_3

    .line 76
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    sub-int/2addr p1, v4

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;

    const-string v5, "70707070"

    invoke-direct {v1, v5}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v4, p1, v1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->replace(II[B)Z

    goto :goto_1

    .line 79
    :cond_3
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected field type for ConnectionType: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->getByte(I)B

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Android7EnumMigration"

    invoke-static {v3, v4, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v3, p1

    :goto_1
    if-nez v3, :cond_5

    return-object v2

    .line 87
    :cond_5
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/io/ByteArrayManip;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

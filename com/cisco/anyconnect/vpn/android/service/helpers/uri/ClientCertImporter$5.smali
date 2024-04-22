.class synthetic Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$5;
.super Ljava/lang/Object;
.source "ClientCertImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$uri$ImportTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 182
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->values()[Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ClientCertImporter$5;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$uri$ImportTypes:[I

    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->pkcs12:Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/uri/ImportTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.class Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser$1;
.super Ljava/util/HashMap;
.source "NVMProfileParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "http://xml.org/sax/features/external-general-entities"

    invoke-virtual {p0, v1, v0}, Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    .line 40
    invoke-virtual {p0, v1, v0}, Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    .line 41
    invoke-virtual {p0, v1, v0}, Lcom/cisco/anyconnect/nvm/profilemanager/parser/NVMProfileParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

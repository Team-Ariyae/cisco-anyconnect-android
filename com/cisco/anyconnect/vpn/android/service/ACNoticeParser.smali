.class public Lcom/cisco/anyconnect/vpn/android/service/ACNoticeParser;
.super Ljava/lang/Object;
.source "ACNoticeParser.java"


# static fields
.field private static final NOTICE_KEY:Ljava/lang/String; = "notice"

.field private static final URL_KEY:Ljava/lang/String; = "url"


# instance fields
.field private mMsgType:Lcom/cisco/anyconnect/vpn/jni/MessageType;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/MessageType;Ljava/lang/String;Z)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ACNoticeParser;->mMsgType:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    .line 19
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ACNoticeParser;->mValue:Ljava/lang/String;

    if-eqz p3, :cond_0

    const-string p1, "****"

    .line 22
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ACNoticeParser;->mValue:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method parse()Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ACNoticeParser;->mMsgType:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_UrlError:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    if-ne v0, v1, :cond_0

    .line 29
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ACNoticeParser;->mValue:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "notice"

    .line 30
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "url"

    .line 31
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/ACNoticeParser;->mMsgType:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    invoke-direct {v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;-><init>(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;)V

    .line 33
    invoke-virtual {v2, v0}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;->setUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string v1, "Failed to parse notice"

    .line 36
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ACNoticeParser;->mValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ACNoticeParser;->mMsgType:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;-><init>(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;)V

    return-object v0
.end method

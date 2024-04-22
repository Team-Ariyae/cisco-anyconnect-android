.class public Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants;
.super Ljava/lang/Object;
.source "ACRuntimeConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETENV_STATE;,
        Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_INTERFACE_STATE;,
        Lcom/cisco/anyconnect/acruntime/utils/ACRuntimeConstants$NETWORK_EVENT_TYPE;
    }
.end annotation


# static fields
.field public static final CERTIFICATE_EXPIRED:I = 0x8

.field public static final CERTIFICATE_EXPLICITLY_UNTRUSTED:I = 0x2

.field public static final CERTIFICATE_INCORRECT_KEY_USAGE:I = 0x20

.field public static final CERTIFICATE_INVALID:I = 0x4

.field public static final CERTIFICATE_NAME_MISMATCH:I = 0x10

.field public static final CERTIFICATE_REVOCATION_UNKNOWN:I = 0x80

.field public static final CERTIFICATE_REVOKED:I = 0x40

.field public static final CERTIFICATE_UNTRUSTED:I = 0x1

.field public static final CERTIFICATE_VALID:I = 0x0

.field public static final CERTIFICATE_VERIFICATION_FAILED:I = -0x1

.field public static final JNI_ERR:I = -0x1

.field public static final JNI_OK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public interface abstract Lcom/cisco/umbrella/registration/IRegistrationHandler;
.super Ljava/lang/Object;
.source "IRegistrationHandler.java"


# virtual methods
.method public abstract register(Lcom/cisco/umbrella/registration/RegistrationConfig;)Lcom/cisco/umbrella/registration/RegistrationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)V
.end method

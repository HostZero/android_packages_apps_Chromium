.class Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "CookieStore_Internal.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# instance fields
.field private final mCallback:Lorg/chromium/mojom/mojo/CookieStore$GetResponse;


# direct methods
.method constructor <init>(Lorg/chromium/mojom/mojo/CookieStore$GetResponse;)V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    .line 463
    iput-object p1, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/CookieStore$GetResponse;

    .line 464
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 469
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v1

    .line 471
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 472
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 482
    :goto_0
    return v0

    .line 477
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParams;

    move-result-object v1

    .line 479
    iget-object v2, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/CookieStore$GetResponse;

    iget-object v1, v1, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParams;->cookies:Ljava/lang/String;

    invoke-interface {v2, v1}, Lorg/chromium/mojom/mojo/CookieStore$GetResponse;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    const/4 v0, 0x1

    goto :goto_0

    .line 482
    :catch_0
    move-exception v1

    goto :goto_0
.end method

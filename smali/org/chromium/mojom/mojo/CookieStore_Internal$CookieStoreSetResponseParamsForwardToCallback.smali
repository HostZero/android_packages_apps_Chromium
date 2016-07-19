.class Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "CookieStore_Internal.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# instance fields
.field private final mCallback:Lorg/chromium/mojom/mojo/CookieStore$SetResponse;


# direct methods
.method constructor <init>(Lorg/chromium/mojom/mojo/CookieStore$SetResponse;)V
    .locals 0

    .prologue
    .line 838
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    .line 839
    iput-object p1, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/CookieStore$SetResponse;

    .line 840
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 845
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    .line 847
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v3

    .line 848
    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 858
    :goto_0
    return v0

    .line 853
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;

    move-result-object v2

    .line 855
    iget-object v3, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/CookieStore$SetResponse;

    iget-boolean v2, v2, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->success:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/chromium/mojom/mojo/CookieStore$SetResponse;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 856
    goto :goto_0

    .line 858
    :catch_0
    move-exception v1

    goto :goto_0
.end method
